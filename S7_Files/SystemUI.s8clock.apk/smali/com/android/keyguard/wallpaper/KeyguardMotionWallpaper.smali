.class public Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;
.super Lcom/android/keyguard/wallpaper/SystemUIWallpaper;
.source "KeyguardMotionWallpaper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$1;,
        Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$2;,
        Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;,
        Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionCallback;
    }
.end annotation


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mAngularSum:F

.field private mAnimatedAngularSum:F

.field private mAsyncTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/AsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmapListInitFinished:Z

.field private mBlendingPaint:Landroid/graphics/Paint;

.field private mCallback:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionCallback;

.field private mContext:Landroid/content/Context;

.field private mCroppedScale:F

.field private mDeltaOfAngularSum:F

.field private final mHandler:Landroid/os/Handler;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mInterruptedGyro:Landroid/hardware/Sensor;

.field private mIsSensorRegistered:Z

.field private mLastBottom:I

.field private mLastParsedXml:I

.field private mLastRight:I

.field private mMotionBitmapList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mPkgContext:Landroid/content/Context;

.field private mPkgName:Ljava/lang/String;

.field private mPrevAngularSum:F

.field private mPrevAnimatedAngularSum:F

.field private mPrevStartAngularSum:F

.field private mRangeOfRotation:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTimestamp:F

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mViewHeight:I

.field private mViewWidth:I

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private mXmlName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)F
    .locals 1

    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mAnimatedAngularSum:F

    return v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mAsyncTaskList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)F
    .locals 1

    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mPrevAnimatedAngularSum:F

    return v0
.end method

.method static synthetic -get11(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)F
    .locals 1

    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mPrevStartAngularSum:F

    return v0
.end method

.method static synthetic -get12(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mRangeOfRotation:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)Landroid/app/WallpaperManager;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mXmlName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mBitmapListInitFinished:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mCallback:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionCallback;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mLastParsedXml:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mPkgContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;F)F
    .locals 0

    iput p1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mAnimatedAngularSum:F

    return p1
.end method

.method static synthetic -set2(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mBitmapListInitFinished:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mLastParsedXml:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mPkgContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mPkgName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;F)F
    .locals 0

    iput p1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mPrevAnimatedAngularSum:F

    return p1
.end method

.method static synthetic -set8(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mXmlName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->cropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->parseXML(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;[F)V
    .locals 0
    .param p1, "angularSums"    # [F

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->handleInvalidate([F)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->init()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->setPreloadWallpaper()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->unregisterSensor()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IWallpaperManager;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/IWallpaperManager;

    .prologue
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    .line 111
    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;-><init>(Landroid/content/Context;Landroid/app/IWallpaperManager;Ljava/lang/String;Ljava/lang/String;Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionCallback;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IWallpaperManager;Ljava/lang/String;Ljava/lang/String;Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionCallback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/IWallpaperManager;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "xmlName"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionCallback;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;-><init>(Landroid/content/Context;Landroid/app/IWallpaperManager;)V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mAsyncTaskList:Ljava/util/ArrayList;

    .line 102
    iput-boolean v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    .line 103
    iput-boolean v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mBitmapListInitFinished:Z

    .line 151
    iput v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mLastParsedXml:I

    .line 716
    new-instance v0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$1;-><init>(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 726
    new-instance v0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$2;-><init>(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mHandler:Landroid/os/Handler;

    .line 809
    iput v1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mPrevAngularSum:F

    .line 810
    iput v1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mAngularSum:F

    .line 811
    iput v1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mDeltaOfAngularSum:F

    .line 118
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mContext:Landroid/content/Context;

    .line 119
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wallpaper"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 120
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 121
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1002b

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mInterruptedGyro:Landroid/hardware/Sensor;

    .line 122
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 123
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 126
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    .line 127
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 128
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 129
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 131
    iput-object p3, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mPkgName:Ljava/lang/String;

    .line 132
    iput-object p4, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mXmlName:Ljava/lang/String;

    .line 133
    iput-object p5, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mCallback:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionCallback;

    .line 135
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->updateWallpaper()V

    .line 115
    return-void
.end method

.method private cropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 466
    const-string/jumbo v9, "KeyguardMotionWallpaper"

    const-string/jumbo v10, "cropBitmap"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 468
    :cond_0
    const/4 v9, 0x0

    return-object v9

    .line 471
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 472
    .local v8, "widthOrigin":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 475
    .local v3, "heightOrigin":I
    const/4 v5, 0x0

    .local v5, "startX":F
    const/4 v6, 0x0

    .local v6, "startY":F
    div-int/lit8 v9, v8, 0x2

    int-to-float v0, v9

    .local v0, "centerX":F
    div-int/lit8 v9, v3, 0x2

    int-to-float v1, v9

    .line 476
    .local v1, "centerY":F
    const/4 v7, 0x0

    .local v7, "width":F
    const/4 v2, 0x0

    .line 479
    .local v2, "height":F
    iget v9, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMetricsHeight:I

    mul-int/2addr v9, v8

    iget v10, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMetricsWidth:I

    mul-int/2addr v10, v3

    if-le v9, v10, :cond_4

    .line 480
    iget v9, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMetricsHeight:I

    int-to-float v9, v9

    int-to-float v10, v3

    div-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float v4, v9, v10

    .line 484
    .local v4, "scale":F
    :goto_0
    iput v4, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mCroppedScale:F

    .line 487
    iget v9, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMetricsWidth:I

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    div-float v7, v9, v4

    .line 488
    iget v9, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMetricsHeight:I

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    div-float v2, v9, v4

    .line 490
    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v7, v9

    sub-float v5, v0, v9

    .line 491
    const/4 v9, 0x0

    cmpg-float v9, v5, v9

    if-gez v9, :cond_2

    .line 492
    const/4 v5, 0x0

    .line 493
    :cond_2
    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v2, v9

    sub-float v6, v1, v9

    .line 494
    const/4 v9, 0x0

    cmpg-float v9, v6, v9

    if-gez v9, :cond_3

    .line 495
    const/4 v6, 0x0

    .line 510
    :cond_3
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v9

    if-nez v9, :cond_5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v9

    if-nez v9, :cond_5

    .line 511
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v9

    if-ne v8, v9, :cond_5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v9

    if-ne v3, v9, :cond_5

    .line 512
    const-string/jumbo v9, "KeyguardMotionWallpaper"

    const-string/jumbo v10, "It doesn\'t need to crop bitmap"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/4 v9, 0x0

    return-object v9

    .line 482
    .end local v4    # "scale":F
    :cond_4
    iget v9, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMetricsWidth:I

    int-to-float v9, v9

    int-to-float v10, v8

    div-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float v4, v9, v10

    .restart local v4    # "scale":F
    goto :goto_0

    .line 514
    :cond_5
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v9

    const/4 v10, 0x1

    if-lt v9, v10, :cond_6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_7

    .line 515
    :cond_6
    const-string/jumbo v9, "KeyguardMotionWallpaper"

    const-string/jumbo v10, "Math.round(width) < 1 || Math.round(height) < 1 || mMetricsWidth < 1 || mMetricsHeight < 1"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const/4 v9, 0x0

    return-object v9

    .line 514
    :cond_7
    iget v9, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMetricsWidth:I

    const/4 v10, 0x1

    if-lt v9, v10, :cond_6

    iget v9, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMetricsHeight:I

    const/4 v10, 0x1

    if-lt v9, v10, :cond_6

    .line 517
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v9, v10

    if-gt v9, v8, :cond_8

    .line 518
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v9, v10

    if-le v9, v3, :cond_9

    .line 519
    :cond_8
    const-string/jumbo v9, "KeyguardMotionWallpaper"

    const-string/jumbo v10, "Calculated crop size error"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const/4 v9, 0x0

    return-object v9

    .line 522
    :cond_9
    const-string/jumbo v9, "KeyguardMotionWallpaper"

    const-string/jumbo v10, "Cropping..."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 524
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 523
    invoke-static {p1, v9, v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v9

    return-object v9
.end method

.method private handleInvalidate([F)V
    .locals 5
    .param p1, "angularSums"    # [F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 738
    aget v1, p1, v3

    .line 739
    .local v1, "prevAngularSum":F
    aget v0, p1, v4

    .line 740
    .local v0, "curAngularSum":F
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1

    .line 741
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 742
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->end()V

    .line 743
    invoke-direct {p0, v1, v0, v4}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->startAlphaAnimator(FFZ)V

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 746
    :cond_1
    invoke-direct {p0, v1, v0, v3}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->startAlphaAnimator(FFZ)V

    goto :goto_0
.end method

.method private init()V
    .locals 13

    .prologue
    .line 529
    const-string/jumbo v10, "KeyguardMotionWallpaper"

    const-string/jumbo v11, "init()"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v10, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_1

    .line 531
    :cond_0
    const-string/jumbo v10, "KeyguardMotionWallpaper"

    const-string/jumbo v11, "mMotionBitmapList == null || mMotionBitmapList.size() == 0"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    return-void

    .line 534
    :cond_1
    iget-object v10, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 535
    .local v9, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v9, :cond_3

    .line 536
    iget-object v10, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v10}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getBitmapLoaded()Z

    move-result v10

    if-nez v10, :cond_2

    .line 537
    const-string/jumbo v10, "KeyguardMotionWallpaper"

    const-string/jumbo v11, "bitmapLoaded == false"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    return-void

    .line 535
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 543
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->getHeight()I

    move-result v10

    iget v11, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mStatusBarHeight:I

    if-ne v10, v11, :cond_4

    .line 544
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mLastRight:I

    .line 545
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mLastBottom:I

    .line 546
    return-void

    .line 549
    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->getWidth()I

    move-result v10

    iget v11, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mPaddingLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mPaddingRight:I

    sub-int/2addr v10, v11

    iput v10, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mViewWidth:I

    .line 550
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->getHeight()I

    move-result v10

    iget v11, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mPaddingTop:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mPaddingBottom:I

    sub-int/2addr v10, v11

    iput v10, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mViewHeight:I

    .line 551
    iget v10, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mViewWidth:I

    if-eqz v10, :cond_5

    iget v10, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mViewHeight:I

    if-nez v10, :cond_6

    .line 552
    :cond_5
    const-string/jumbo v10, "KeyguardMotionWallpaper"

    const-string/jumbo v11, "mViewWidth == 0 || mViewHeight == 0"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    return-void

    .line 556
    :cond_6
    iget-object v10, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    mul-int/lit8 v10, v10, 0x1e

    iput v10, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mRangeOfRotation:I

    .line 557
    const-string/jumbo v10, "KeyguardMotionWallpaper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mRangeOfRotation = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mRangeOfRotation:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mPrevAngularSum:F

    .line 561
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mAngularSum:F

    .line 562
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mDeltaOfAngularSum:F

    .line 563
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mTimestamp:F

    .line 565
    const/4 v4, 0x0

    :goto_1
    iget-object v10, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_8

    .line 566
    iget-object v10, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v10}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getImage()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 567
    .local v1, "bitmapWidth":I
    iget-object v10, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v10}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getImage()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 569
    .local v0, "bitmapHeight":I
    const/4 v2, 0x0

    .local v2, "dx":F
    const/4 v3, 0x0

    .line 571
    .local v3, "dy":F
    iget v10, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mViewHeight:I

    mul-int/2addr v10, v1

    iget v11, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mViewWidth:I

    mul-int/2addr v11, v0

    if-le v10, v11, :cond_7

    .line 572
    iget v10, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mViewHeight:I

    int-to-float v10, v10

    int-to-float v11, v0

    div-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float v8, v10, v11

    .line 576
    .local v8, "scale":F
    :goto_2
    iget v10, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mViewWidth:I

    int-to-float v10, v10

    int-to-float v11, v1

    mul-float/2addr v11, v8

    sub-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float v2, v10, v11

    .line 577
    iget v10, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mViewHeight:I

    int-to-float v10, v10

    int-to-float v11, v0

    mul-float/2addr v11, v8

    sub-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float v3, v10, v11

    .line 579
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 580
    .local v5, "originDx":I
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 581
    .local v6, "originDy":I
    move v7, v8

    .line 583
    .local v7, "originScale":F
    iget-object v10, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v10}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    invoke-virtual {v10, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 584
    iget-object v10, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v10}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    int-to-float v11, v5

    int-to-float v12, v6

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 585
    iget-object v10, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v10}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->init()V

    .line 565
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 574
    .end local v5    # "originDx":I
    .end local v6    # "originDy":I
    .end local v7    # "originScale":F
    .end local v8    # "scale":F
    :cond_7
    iget v10, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mViewWidth:I

    int-to-float v10, v10

    int-to-float v11, v1

    div-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float v8, v10, v11

    .restart local v8    # "scale":F
    goto :goto_2

    .line 587
    .end local v0    # "bitmapHeight":I
    .end local v1    # "bitmapWidth":I
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v8    # "scale":F
    :cond_8
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->invalidate()V

    .line 528
    return-void
.end method

.method private parseXML(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 398
    const/4 v2, 0x0

    .line 399
    .local v2, "layers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 400
    .local v1, "eventType":I
    const/4 v0, 0x0

    .line 402
    .end local v2    # "layers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;>;"
    :goto_0
    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    .line 403
    const/4 v3, 0x0

    .line 404
    .local v3, "name":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 427
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 406
    .restart local v3    # "name":Ljava/lang/String;
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 407
    .local v3, "name":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 408
    .local v2, "layers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;>;"
    goto :goto_1

    .line 410
    .end local v2    # "layers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;>;"
    .local v3, "name":Ljava/lang/String;
    :pswitch_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 411
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v4, "layer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 412
    new-instance v0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-direct {v0, p0}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;-><init>(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)V

    .local v0, "currentLayer":Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;
    goto :goto_1

    .line 413
    .end local v0    # "currentLayer":Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;
    :cond_1
    if-eqz v0, :cond_0

    .line 414
    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 415
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setType(I)V

    goto :goto_1

    .line 416
    :cond_2
    const-string/jumbo v4, "id_path_color"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 417
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setPath(Ljava/lang/String;)V

    goto :goto_1

    .line 422
    .local v3, "name":Ljava/lang/String;
    :pswitch_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 423
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string/jumbo v4, "layer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 429
    .end local v3    # "name":Ljava/lang/String;
    :cond_3
    return-object v2

    .line 404
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private registerSensor()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 705
    const-string/jumbo v0, "KeyguardMotionWallpaper"

    const-string/jumbo v1, "registerSensor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mInterruptedGyro:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 707
    iput-boolean v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    .line 704
    return-void
.end method

.method private setPreloadWallpaper()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 455
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper;->isWhiteKeyguardStatusBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/SettingsHelper;->setWhiteKeyguardStatusBar(I)V

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/SettingsHelper;->setWhiteKeyguardWallpaper(I)V

    .line 454
    :cond_1
    return-void
.end method

.method private startAlphaAnimator(FFZ)V
    .locals 4
    .param p1, "prevAngularSum"    # F
    .param p2, "curAngularSum"    # F
    .param p3, "isAnimatorRunning"    # Z

    .prologue
    .line 758
    const-string/jumbo v1, "KeyguardMotionWallpaper"

    const-string/jumbo v2, "mAlphaAnimator starts"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    if-eqz p3, :cond_0

    .line 764
    iget v1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mPrevAnimatedAngularSum:F

    iput v1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mAnimatedAngularSum:F

    .line 765
    iget v1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mPrevAnimatedAngularSum:F

    iput v1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mPrevStartAngularSum:F

    .line 771
    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 772
    iget v1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mPrevAnimatedAngularSum:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 773
    .local v0, "duration":I
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 776
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$4;

    invoke-direct {v2, p0, p2}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$4;-><init>(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 800
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$5;

    invoke-direct {v2, p0}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$5;-><init>(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 806
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 757
    return-void

    .line 767
    .end local v0    # "duration":I
    :cond_0
    iput p1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mAnimatedAngularSum:F

    .line 768
    iput p1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mPrevStartAngularSum:F

    goto :goto_0

    .line 771
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private unregisterSensor()V
    .locals 2

    .prologue
    .line 711
    const-string/jumbo v0, "KeyguardMotionWallpaper"

    const-string/jumbo v1, "unregisterSensor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 713
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    .line 710
    return-void
.end method

.method private updateWallpaper()V
    .locals 3

    .prologue
    .line 155
    new-instance v0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$3;-><init>(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)V

    .line 393
    .local v0, "wallpaperTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/util/ArrayList<Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;>;>;"
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mAsyncTaskList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 153
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 5

    .prologue
    .line 660
    const-string/jumbo v2, "KeyguardMotionWallpaper"

    const-string/jumbo v3, "cleanUp"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    const/4 v1, 0x0

    .line 662
    .local v1, "size":I
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mAsyncTaskList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 663
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mAsyncTaskList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 664
    const-string/jumbo v2, "KeyguardMotionWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mAsyncTaskList size ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 666
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mAsyncTaskList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/AsyncTask;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 665
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 668
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mAsyncTaskList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 670
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->recycleBitmap()V

    .line 659
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 874
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 881
    invoke-super {p0}, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->onDetachedFromWindow()V

    .line 882
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 880
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 592
    const-string/jumbo v3, "KeyguardMotionWallpaper"

    const-string/jumbo v4, "onDraw()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 594
    :cond_0
    const-string/jumbo v3, "KeyguardMotionWallpaper"

    const-string/jumbo v4, "mBitmapImageList == null || mBitmapImageList.size() == 0"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    return-void

    .line 597
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 598
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 599
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v3}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getBitmapLoaded()Z

    move-result v3

    if-nez v3, :cond_2

    .line 600
    const-string/jumbo v3, "KeyguardMotionWallpaper"

    const-string/jumbo v4, "bitmapLoaded == false"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    return-void

    .line 598
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 606
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 607
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 608
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v3}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->isBackground()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 609
    iget-object v4, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v3}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getAlpha()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 610
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v3}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getImage()Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v3}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 611
    iget-object v5, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    .line 610
    invoke-virtual {p1, v4, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 607
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 618
    :cond_5
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 619
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v3}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getAlpha()I

    move-result v0

    .line 620
    .local v0, "alpha":I
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v3}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->isBackground()Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz v0, :cond_6

    .line 621
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 622
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v3}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getImage()Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v3}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 623
    iget-object v5, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    .line 622
    invoke-virtual {p1, v4, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 618
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 629
    .end local v0    # "alpha":I
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 591
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 140
    invoke-super/range {p0 .. p5}, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->onLayout(ZIIII)V

    .line 142
    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mStatusBarHeight:I

    if-eq v0, p5, :cond_1

    .line 143
    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mLastRight:I

    if-ne v0, p4, :cond_0

    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mLastBottom:I

    if-eq v0, p5, :cond_1

    .line 144
    :cond_0
    const-string/jumbo v0, "KeyguardMotionWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLayout called init() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->init()V

    .line 146
    iput p4, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mLastRight:I

    .line 147
    iput p5, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mLastBottom:I

    .line 139
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 697
    invoke-super {p0}, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->onPause()V

    .line 698
    const-string/jumbo v0, "KeyguardMotionWallpaper"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    if-eqz v0, :cond_0

    .line 700
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->unregisterSensor()V

    .line 696
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 686
    invoke-super {p0}, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->onResume()V

    .line 687
    const-string/jumbo v0, "KeyguardMotionWallpaper"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    if-nez v0, :cond_0

    .line 690
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->registerSensor()V

    .line 692
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->init()V

    .line 685
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 816
    iget-object v6, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 814
    :goto_0
    return-void

    .line 818
    :pswitch_0
    iget v6, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mTimestamp:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_5

    .line 819
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v6, v9

    .line 820
    .local v1, "axisX":F
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v6, v8

    .line 821
    .local v2, "axisY":F
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v6, v10

    .line 830
    .local v3, "axisZ":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 831
    :cond_0
    const-string/jumbo v6, "KeyguardMotionWallpaper"

    const-string/jumbo v7, "axisY is not biggest, stop animation"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    return-void

    .line 835
    :cond_1
    iget v6, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mAngularSum:F

    iput v6, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mPrevAngularSum:F

    .line 836
    iget v6, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mAngularSum:F

    add-float/2addr v6, v2

    iput v6, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mAngularSum:F

    .line 837
    iget v6, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mAngularSum:F

    iget v7, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mPrevAngularSum:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iput v6, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mDeltaOfAngularSum:F

    .line 839
    new-array v0, v10, [F

    .line 840
    iget v6, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mPrevAngularSum:F

    aput v6, v0, v9

    iget v6, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mAngularSum:F

    aput v6, v0, v8

    .line 843
    .local v0, "angularSums":[F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_5

    .line 844
    iget-object v6, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    .line 845
    .local v5, "motionBitmap":Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;
    invoke-virtual {v5}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getAlpha()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setPrevAlpha(I)V

    .line 846
    iget v6, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mPrevAngularSum:F

    iget v7, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mAngularSum:F

    invoke-virtual {v5, v6, v7}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setAlpha(FF)V

    .line 848
    invoke-virtual {v5}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getPrevAlpha()I

    move-result v6

    invoke-virtual {v5}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getAlpha()I

    move-result v7

    if-eq v6, v7, :cond_2

    .line 849
    iget v6, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mDeltaOfAngularSum:F

    const/high16 v7, 0x40400000    # 3.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    .line 851
    iget-object v6, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v6, :cond_3

    .line 852
    iget-object v6, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 853
    const-string/jumbo v6, "KeyguardMotionWallpaper"

    const-string/jumbo v7, "mAlphaAnimator isRunning"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iget-object v6, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 843
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 857
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->invalidate()V

    goto :goto_2

    .line 860
    :cond_4
    iget-object v6, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 866
    .end local v0    # "angularSums":[F
    .end local v1    # "axisX":F
    .end local v2    # "axisY":F
    .end local v3    # "axisZ":F
    .end local v4    # "i":I
    .end local v5    # "motionBitmap":Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;
    :cond_5
    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v6, v6

    iput v6, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mTimestamp:F

    goto/16 :goto_0

    .line 816
    nop

    :pswitch_data_0
    .packed-switch 0x1002b
        :pswitch_0
    .end packed-switch
.end method

.method public onUnlock()V
    .locals 2

    .prologue
    .line 640
    invoke-super {p0}, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->onUnlock()V

    .line 641
    const-string/jumbo v0, "KeyguardMotionWallpaper"

    const-string/jumbo v1, "onUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mResumed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    if-eqz v0, :cond_0

    .line 643
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->unregisterSensor()V

    .line 639
    :cond_0
    return-void
.end method

.method public recycleBitmap()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 674
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 675
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 676
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setBitmapLoaded(Z)V

    .line 677
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v1}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->recycle()V

    .line 675
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 679
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 680
    iput-boolean v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mBitmapListInitFinished:Z

    .line 673
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 649
    invoke-super {p0}, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->reset()V

    .line 650
    const-string/jumbo v0, "KeyguardMotionWallpaper"

    const-string/jumbo v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mResumed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    if-eqz v0, :cond_1

    .line 655
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->init()V

    .line 648
    return-void

    .line 653
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->registerSensor()V

    goto :goto_0
.end method

.method public update()V
    .locals 2

    .prologue
    .line 634
    const-string/jumbo v0, "KeyguardMotionWallpaper"

    const-string/jumbo v1, "update()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->updateWallpaper()V

    .line 633
    return-void
.end method
