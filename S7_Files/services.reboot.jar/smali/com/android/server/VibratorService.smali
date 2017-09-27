.class public Lcom/android/server/VibratorService;
.super Landroid/os/IVibratorService$Stub;
.source "VibratorService.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VibratorService$1;,
        Lcom/android/server/VibratorService$2;,
        Lcom/android/server/VibratorService$SecSettingsObserver;,
        Lcom/android/server/VibratorService$SettingsObserver;,
        Lcom/android/server/VibratorService$VibrateThread;,
        Lcom/android/server/VibratorService$Vibration;,
        Lcom/android/server/VibratorService$VibrationInfo;
    }
.end annotation


# static fields
.field private static final synthetic -android-os-Vibrator$SemMagnitudeTypesSwitchesValues:[I = null

.field private static final DEBUG:Z = false

.field private static final HAPTIC_ENGINE_DATA_UNIT_SIZE:I = 0x3

.field private static HAS_DUAL_MOTORS:I = 0x0

.field private static LEVEL_TO_FORCE_MAGNITUDE:[I = null

.field private static LEVEL_TO_MAGNITUDE:[I = null

.field private static LEVEL_TO_TOUCH_MAGNITUDE:[I = null

.field private static final MONTH_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final SAFE_DEBUG:Z

.field private static final SET_FREQUNCY_PARAM_PATH:Ljava/lang/String; = "/dev/block/param"

.field private static final SYSTEM_UI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "VibratorService"

.field private static final TYPE_MAGNITUDE_FEEDBACK:I = 0x0

.field private static final TYPE_MAGNITUDE_FORCE:I = 0x3

.field private static final TYPE_MAGNITUDE_NOTIFICATION:I = 0x2

.field private static final TYPE_MAGNITUDE_RECVCALL:I = 0x1

.field private static USE_SET_MAX_MAGNITUE:Z = false

.field private static final VIB_DEBUG:Z = true

.field private static mIsEnableIntensity:Z

.field private static mIsHapticSupported:Z

.field private static final mTypeURIs:[Ljava/lang/String;

.field private static mVibePatternHash:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private final mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

.field private mCallMagnitude:I

.field private mCallMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

.field private mCheckExecutable:I

.field private mCheckExecutablePkg:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurVibUid:I

.field private mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

.field private mDefaultMagnitude:I

.field private mForceMagnitude:I

.field private mForceMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

.field private final mH:Landroid/os/Handler;

.field private mHMTMount:Z

.field private mHMTMountCount:I

.field private mHasVibrator:Z

.field private mIm:Landroid/hardware/input/InputManager;

.field private mInputDeviceListenerRegistered:Z

.field private final mInputDeviceVibrators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Vibrator;",
            ">;"
        }
    .end annotation
.end field

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsFrequencySupported:Z

.field private mIsHapticEngineSupported:Z

.field private mLastEndWakeLock:Ljava/lang/String;

.field private mLastStartWakeLock:Ljava/lang/String;

.field private mLowPowerMode:Z

.field private mMaxMagnitudeValue:I

.field private mMinMagnitudeValue:I

.field private mMotorType:I

.field private mNotiMagnitude:I

.field private mNotiMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mPreviousNoTouchVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/VibratorService$VibrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/VibratorService$VibrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousVibrationsLimit:I

.field private mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

.field private mTempMagnitude:I

.field private mTempToken:Landroid/os/IBinder;

.field volatile mThread:Lcom/android/server/VibratorService$VibrateThread;

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private mTouchMagnitude:I

.field private mTouchMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

.field private final mVibeConstantsPatternA:Ljava/lang/String;

.field private final mVibeConstantsPatternB:Ljava/lang/String;

.field private final mVibeConstantsPatternC:Ljava/lang/String;

.field private final mVibeConstantsPatternD:Ljava/lang/String;

.field private final mVibeConstantsPatternE:Ljava/lang/String;

.field private final mVibeConstantsPatternF:Ljava/lang/String;

.field private final mVibeConstantsPatternG:Ljava/lang/String;

.field private final mVibeConstantsPatternH:Ljava/lang/String;

.field private final mVibeConstantsPatternI:Ljava/lang/String;

.field private final mVibeConstantsPatternJ:Ljava/lang/String;

.field private final mVibeConstantsPatternK:Ljava/lang/String;

.field private final mVibeConstantsPatternL:Ljava/lang/String;

.field private final mVibeConstantsPatternM:Ljava/lang/String;

.field private final mVibeConstantsPatternN:Ljava/lang/String;

.field private final mVibeConstantsPatternO:Ljava/lang/String;

.field private final mVibeConstantsPatternP:Ljava/lang/String;

.field private final mVibeConstantsPatternQ:Ljava/lang/String;

.field private mVibeEngineA:[I

.field private mVibeEngineB:[I

.field private mVibeEngineC:[I

.field private mVibeEngineD:[I

.field private mVibeEngineE:[I

.field private mVibeEngineF:[I

.field private mVibeEngineG:[I

.field private mVibeEngineH:[I

.field private mVibeEngineI:[I

.field private mVibeEngineJ:[I

.field private mVibeEngineK:[I

.field private mVibeEngineL:[I

.field private mVibeEngineM:[I

.field private mVibeEngineN:[I

.field private mVibeEngineO:[I

.field private mVibeEngineP:[I

.field private mVibeEngineQ:[I

.field private mVibeFrequencyAlert:I

.field private mVibeFrequencyF0:I

.field private mVibeFrequencyHigh:I

.field private mVibeFrequencyLow:I

.field private mVibeFrequencyMid:I

.field private mVibePatternA:[J

.field private mVibePatternB:[J

.field private mVibePatternC:[J

.field private mVibePatternD:[J

.field private mVibePatternE:[J

.field private mVibePatternF:[J

.field private mVibePatternG:[J

.field private mVibePatternH:[J

.field private mVibePatternI:[J

.field private mVibePatternJ:[J

.field private mVibePatternK:[J

.field private mVibePatternL:[J

.field private mVibePatternM:[J

.field private mVibePatternMaxLength:I

.field private mVibePatternN:[J

.field private mVibePatternO:[J

.field private mVibePatternP:[J

.field private mVibePatternQ:[J

.field private mVibrateInputDevicesSetting:Z

.field private final mVibrationRunnable:Ljava/lang/Runnable;

.field private final mVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/VibratorService$Vibration;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0()[I
    .locals 1

    sget-object v0, Lcom/android/server/VibratorService;->LEVEL_TO_FORCE_MAGNITUDE:[I

    return-object v0
.end method

.method static synthetic -get1()[I
    .locals 1

    sget-object v0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/VibratorService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method static synthetic -get12()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/VibratorService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/VibratorService;->mVibeFrequencyAlert:I

    return v0
.end method

.method static synthetic -get14(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get2()[I
    .locals 1

    sget-object v0, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    return-object v0
.end method

.method static synthetic -get3()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    return v0
.end method

.method static synthetic -get4()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/VibratorService;->USE_SET_MAX_MAGNITUE:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/VibratorService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    return v0
.end method

.method static synthetic -get8()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/VibratorService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    return v0
.end method

.method private static synthetic -getandroid-os-Vibrator$SemMagnitudeTypesSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/VibratorService;->-android-os-Vibrator$SemMagnitudeTypesSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/VibratorService;->-android-os-Vibrator$SemMagnitudeTypesSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Vibrator$SemMagnitudeTypes;->values()[Landroid/os/Vibrator$SemMagnitudeTypes;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_CALL:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v1}, Landroid/os/Vibrator$SemMagnitudeTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_EXTRA:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v1}, Landroid/os/Vibrator$SemMagnitudeTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_FORCE:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v1}, Landroid/os/Vibrator$SemMagnitudeTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_MAX:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v1}, Landroid/os/Vibrator$SemMagnitudeTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_MIN:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v1}, Landroid/os/Vibrator$SemMagnitudeTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_NOTIFICATION:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v1}, Landroid/os/Vibrator$SemMagnitudeTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v1}, Landroid/os/Vibrator$SemMagnitudeTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lcom/android/server/VibratorService;->-android-os-Vibrator$SemMagnitudeTypesSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/server/VibratorService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/VibratorService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/VibratorService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/VibratorService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/VibratorService;->mHMTMount:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/VibratorService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/VibratorService;->mLastEndWakeLock:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/server/VibratorService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/VibratorService;->mLastStartWakeLock:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/server/VibratorService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/VibratorService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/VibratorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/VibratorService;JII[IIII)V
    .locals 1
    .param p1, "millis"    # J
    .param p3, "uid"    # I
    .param p4, "usageHint"    # I
    .param p5, "data"    # [I
    .param p6, "magnitude"    # I
    .param p7, "type"    # I
    .param p8, "repeat"    # I

    .prologue
    invoke-direct/range {p0 .. p8}, Lcom/android/server/VibratorService;->doVibratorOn(JII[IIII)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/VibratorService;JIIII)V
    .locals 1
    .param p1, "millis"    # J
    .param p3, "uid"    # I
    .param p4, "usageHint"    # I
    .param p5, "magnitude"    # I
    .param p6, "frequency"    # I

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/VibratorService;->doVibratorOn(JIIII)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/VibratorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V
    .locals 0
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/VibratorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 99
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    .line 106
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 107
    const-string/jumbo v1, "VIB_FEEDBACK_MAGNITUDE"

    aput-object v1, v0, v3

    .line 108
    const-string/jumbo v1, "VIB_RECVCALL_MAGNITUDE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 109
    const-string/jumbo v1, "SEM_VIBRATION_NOTIFICATION_INTENSITY"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 110
    const-string/jumbo v1, "SEM_VIBRATION_FORCE_TOUCH_INTENSITY"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 106
    sput-object v0, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    .line 115
    sput v3, Lcom/android/server/VibratorService;->HAS_DUAL_MOTORS:I

    .line 116
    sput-boolean v3, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    .line 117
    sput-boolean v3, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    .line 118
    const-string/jumbo v0, "Max"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Framework_ConfigVibService"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/VibratorService;->USE_SET_MAX_MAGNITUE:Z

    .line 155
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/server/VibratorService;->mVibePatternHash:Ljava/util/Hashtable;

    .line 192
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/VibratorService;->MONTH_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    .line 91
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v13, -0x2

    const/4 v12, 0x2

    const/16 v8, 0x270f

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 463
    invoke-direct {p0}, Landroid/os/IVibratorService$Stub;-><init>()V

    .line 119
    iput-boolean v10, p0, Lcom/android/server/VibratorService;->mHasVibrator:Z

    .line 156
    const-string/jumbo v7, "A"

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternA:Ljava/lang/String;

    .line 157
    const-string/jumbo v7, "B"

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternB:Ljava/lang/String;

    .line 158
    const-string/jumbo v7, "C"

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternC:Ljava/lang/String;

    .line 159
    const-string/jumbo v7, "D"

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternD:Ljava/lang/String;

    .line 160
    const-string/jumbo v7, "E"

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternE:Ljava/lang/String;

    .line 161
    const-string/jumbo v7, "F"

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternF:Ljava/lang/String;

    .line 162
    const-string/jumbo v7, "G"

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternG:Ljava/lang/String;

    .line 163
    const-string/jumbo v7, "H"

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternH:Ljava/lang/String;

    .line 164
    const-string/jumbo v7, "I"

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternI:Ljava/lang/String;

    .line 165
    const-string/jumbo v7, "J"

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternJ:Ljava/lang/String;

    .line 166
    const-string/jumbo v7, "K"

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternK:Ljava/lang/String;

    .line 167
    const-string/jumbo v7, "L"

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternL:Ljava/lang/String;

    .line 168
    const-string/jumbo v7, "M"

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternM:Ljava/lang/String;

    .line 169
    const-string/jumbo v7, "N"

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternN:Ljava/lang/String;

    .line 170
    const-string/jumbo v7, "O"

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternO:Ljava/lang/String;

    .line 171
    const-string/jumbo v7, "P"

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternP:Ljava/lang/String;

    .line 172
    const-string/jumbo v7, "Q"

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeConstantsPatternQ:Ljava/lang/String;

    .line 174
    iput v10, p0, Lcom/android/server/VibratorService;->mVibeFrequencyAlert:I

    .line 175
    iput v11, p0, Lcom/android/server/VibratorService;->mVibeFrequencyLow:I

    .line 176
    iput v12, p0, Lcom/android/server/VibratorService;->mVibeFrequencyMid:I

    .line 177
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/server/VibratorService;->mVibeFrequencyHigh:I

    .line 178
    const/4 v7, 0x4

    iput v7, p0, Lcom/android/server/VibratorService;->mVibeFrequencyF0:I

    .line 179
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/server/VibratorService;->mVibePatternMaxLength:I

    .line 181
    iput v8, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    .line 182
    iput v8, p0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    .line 183
    iput v8, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    .line 184
    iput v8, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    .line 185
    iput v8, p0, Lcom/android/server/VibratorService;->mMaxMagnitudeValue:I

    .line 186
    iput v8, p0, Lcom/android/server/VibratorService;->mMinMagnitudeValue:I

    .line 187
    iput v8, p0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    .line 188
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/server/VibratorService;->mMotorType:I

    .line 189
    iput-boolean v10, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    .line 190
    iput-boolean v10, p0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    .line 193
    iput v10, p0, Lcom/android/server/VibratorService;->mCheckExecutable:I

    .line 194
    const-string/jumbo v7, ""

    iput-object v7, p0, Lcom/android/server/VibratorService;->mCheckExecutablePkg:Ljava/lang/String;

    .line 202
    iput-boolean v10, p0, Lcom/android/server/VibratorService;->mHMTMount:Z

    .line 203
    iput v10, p0, Lcom/android/server/VibratorService;->mHMTMountCount:I

    .line 214
    new-instance v7, Landroid/os/WorkSource;

    invoke-direct {v7}, Landroid/os/WorkSource;-><init>()V

    iput-object v7, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    .line 215
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iput-object v7, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    .line 228
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    .line 232
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    .line 946
    new-instance v7, Lcom/android/server/VibratorService$1;

    invoke-direct {v7, p0}, Lcom/android/server/VibratorService$1;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    .line 1388
    new-instance v7, Lcom/android/server/VibratorService$2;

    invoke-direct {v7, p0}, Lcom/android/server/VibratorService$2;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v7, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 2163
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    .line 464
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorInit()V

    .line 467
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    .line 469
    iput-object p1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 471
    const-string/jumbo v7, "power"

    .line 470
    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 472
    .local v3, "pm":Landroid/os/PowerManager;
    const-string/jumbo v7, "VibratorService"

    invoke-virtual {v3, v11, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 473
    iget-object v7, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7, v11}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 475
    const-string/jumbo v7, "appops"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 477
    const-string/jumbo v7, "batterystats"

    .line 476
    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    .line 479
    iget-object v7, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 480
    const v8, 0x10e009b

    .line 479
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    .line 482
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    .line 483
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    .line 484
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, p0, Lcom/android/server/VibratorService;->mPreviousNoTouchVibrations:Ljava/util/LinkedList;

    .line 486
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 487
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 493
    iget-object v7, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v7, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 495
    iget-object v7, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 496
    .local v4, "r":Landroid/content/res/Resources;
    const-string/jumbo v7, "A"

    const v8, 0x1070014

    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternA:[J

    .line 497
    const-string/jumbo v7, "B"

    const v8, 0x1070015

    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternB:[J

    .line 498
    const-string/jumbo v7, "C"

    const v8, 0x1070016

    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternC:[J

    .line 499
    const-string/jumbo v7, "D"

    const v8, 0x1070017

    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternD:[J

    .line 500
    const-string/jumbo v7, "E"

    const v8, 0x1070018

    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternE:[J

    .line 501
    const-string/jumbo v7, "F"

    const v8, 0x1070019

    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternF:[J

    .line 502
    const-string/jumbo v7, "G"

    const v8, 0x107001a

    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternG:[J

    .line 503
    const-string/jumbo v7, "H"

    const v8, 0x107001b

    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternH:[J

    .line 504
    const-string/jumbo v7, "I"

    const v8, 0x107001c

    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternI:[J

    .line 505
    const-string/jumbo v7, "J"

    const v8, 0x107001d

    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternJ:[J

    .line 506
    const-string/jumbo v7, "K"

    const v8, 0x107001e

    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternK:[J

    .line 507
    const-string/jumbo v7, "L"

    const v8, 0x107001f

    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternL:[J

    .line 508
    const-string/jumbo v7, "M"

    const v8, 0x1070020

    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternM:[J

    .line 509
    const-string/jumbo v7, "N"

    const v8, 0x1070021

    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternN:[J

    .line 510
    const-string/jumbo v7, "O"

    const v8, 0x1070022

    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternO:[J

    .line 511
    const-string/jumbo v7, "P"

    const v8, 0x1070023

    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternP:[J

    .line 512
    const-string/jumbo v7, "Q"

    const v8, 0x1070024

    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternQ:[J

    .line 513
    const v7, 0x1070014

    invoke-direct {p0, v4, v7}, Lcom/android/server/VibratorService;->initEngineData(Landroid/content/res/Resources;I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeEngineA:[I

    .line 514
    const v7, 0x1070015

    invoke-direct {p0, v4, v7}, Lcom/android/server/VibratorService;->initEngineData(Landroid/content/res/Resources;I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeEngineB:[I

    .line 515
    const v7, 0x1070016

    invoke-direct {p0, v4, v7}, Lcom/android/server/VibratorService;->initEngineData(Landroid/content/res/Resources;I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeEngineC:[I

    .line 516
    const v7, 0x1070017

    invoke-direct {p0, v4, v7}, Lcom/android/server/VibratorService;->initEngineData(Landroid/content/res/Resources;I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeEngineD:[I

    .line 517
    const v7, 0x1070018

    invoke-direct {p0, v4, v7}, Lcom/android/server/VibratorService;->initEngineData(Landroid/content/res/Resources;I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeEngineE:[I

    .line 518
    const v7, 0x1070019

    invoke-direct {p0, v4, v7}, Lcom/android/server/VibratorService;->initEngineData(Landroid/content/res/Resources;I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeEngineF:[I

    .line 519
    const v7, 0x107001a

    invoke-direct {p0, v4, v7}, Lcom/android/server/VibratorService;->initEngineData(Landroid/content/res/Resources;I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeEngineG:[I

    .line 520
    const v7, 0x107001b

    invoke-direct {p0, v4, v7}, Lcom/android/server/VibratorService;->initEngineData(Landroid/content/res/Resources;I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeEngineH:[I

    .line 521
    const v7, 0x107001c

    invoke-direct {p0, v4, v7}, Lcom/android/server/VibratorService;->initEngineData(Landroid/content/res/Resources;I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeEngineI:[I

    .line 522
    const v7, 0x107001d

    invoke-direct {p0, v4, v7}, Lcom/android/server/VibratorService;->initEngineData(Landroid/content/res/Resources;I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeEngineJ:[I

    .line 523
    const v7, 0x107001e

    invoke-direct {p0, v4, v7}, Lcom/android/server/VibratorService;->initEngineData(Landroid/content/res/Resources;I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeEngineK:[I

    .line 524
    const v7, 0x107001f

    invoke-direct {p0, v4, v7}, Lcom/android/server/VibratorService;->initEngineData(Landroid/content/res/Resources;I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeEngineL:[I

    .line 525
    const v7, 0x1070020

    invoke-direct {p0, v4, v7}, Lcom/android/server/VibratorService;->initEngineData(Landroid/content/res/Resources;I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeEngineM:[I

    .line 526
    const v7, 0x1070021

    invoke-direct {p0, v4, v7}, Lcom/android/server/VibratorService;->initEngineData(Landroid/content/res/Resources;I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeEngineN:[I

    .line 527
    const v7, 0x1070022

    invoke-direct {p0, v4, v7}, Lcom/android/server/VibratorService;->initEngineData(Landroid/content/res/Resources;I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeEngineO:[I

    .line 528
    const v7, 0x1070023

    invoke-direct {p0, v4, v7}, Lcom/android/server/VibratorService;->initEngineData(Landroid/content/res/Resources;I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeEngineP:[I

    .line 529
    const v7, 0x1070024

    invoke-direct {p0, v4, v7}, Lcom/android/server/VibratorService;->initEngineData(Landroid/content/res/Resources;I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibeEngineQ:[I

    .line 531
    invoke-static {}, Lcom/android/server/VibratorService;->getVibratorMotorType()I

    move-result v7

    iput v7, p0, Lcom/android/server/VibratorService;->mMotorType:I

    .line 532
    sget-boolean v7, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "VibratorService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mMType : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/VibratorService;->mMotorType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_0
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorFrequencyExist()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    .line 535
    sget-boolean v7, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v7, :cond_1

    const-string/jumbo v7, "VibratorService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "f : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_1
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorEngineExist()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    .line 538
    sget-boolean v7, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v7, :cond_2

    const-string/jumbo v7, "VibratorService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "e : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_2
    iget v7, p0, Lcom/android/server/VibratorService;->mMotorType:I

    packed-switch v7, :pswitch_data_0

    .line 560
    sput-boolean v10, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    .line 561
    sput-boolean v10, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    .line 565
    :goto_0
    sget-boolean v7, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    if-eqz v7, :cond_c

    .line 566
    sget-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    array-length v7, v7

    add-int/lit8 v2, v7, -0x1

    .line 567
    .local v2, "magnitudeMaxLevel":I
    sget-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    array-length v7, v7

    add-int/lit8 v6, v7, -0x1

    .line 568
    .local v6, "touchMagnitudeMaxLevel":I
    if-lt v2, v12, :cond_3

    if-ge v6, v12, :cond_5

    .line 569
    :cond_3
    const-string/jumbo v7, "VibratorService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "magnitudeMaxLevel : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 570
    const-string/jumbo v9, ", touchMagnitudeMaxLevel : "

    .line 569
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    return-void

    .line 543
    .end local v2    # "magnitudeMaxLevel":I
    .end local v6    # "touchMagnitudeMaxLevel":I
    :pswitch_0
    iget-boolean v7, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    if-eqz v7, :cond_4

    .line 544
    iget-object v7, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070027

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    sput-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    .line 545
    iget-object v7, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070028

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    sput-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    .line 550
    :goto_1
    sput-boolean v11, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    .line 551
    sput-boolean v11, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    goto :goto_0

    .line 547
    :cond_4
    iget-object v7, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070025

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    sput-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    .line 548
    iget-object v7, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070026

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    sput-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    goto :goto_1

    .line 554
    :pswitch_1
    iget-object v7, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x107002a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    sput-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    .line 555
    iget-object v7, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x107002a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    sput-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    .line 556
    sput-boolean v11, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    .line 557
    sput-boolean v10, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    goto/16 :goto_0

    .line 573
    .restart local v2    # "magnitudeMaxLevel":I
    .restart local v6    # "touchMagnitudeMaxLevel":I
    :cond_5
    sget-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    aget v7, v7, v6

    iput v7, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    .line 574
    sget-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v7, v7, v2

    iput v7, p0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    .line 575
    sget-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v7, v7, v2

    iput v7, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    .line 576
    sget-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v7, v7, v2

    iput v7, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    .line 577
    sget-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v7, v7, v2

    iput v7, p0, Lcom/android/server/VibratorService;->mMaxMagnitudeValue:I

    .line 578
    sget-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v7, v7, v11

    iput v7, p0, Lcom/android/server/VibratorService;->mMinMagnitudeValue:I

    .line 580
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    .line 581
    new-instance v7, Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-direct {v7, p0, v10}, Lcom/android/server/VibratorService$SecSettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v7, p0, Lcom/android/server/VibratorService;->mTouchMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    .line 582
    new-instance v7, Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-direct {v7, p0, v11}, Lcom/android/server/VibratorService$SecSettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v7, p0, Lcom/android/server/VibratorService;->mCallMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    .line 583
    new-instance v7, Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-direct {v7, p0, v12}, Lcom/android/server/VibratorService$SecSettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v7, p0, Lcom/android/server/VibratorService;->mNotiMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    .line 585
    iget-object v7, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    aget-object v8, v8, v10

    invoke-static {v7, v8, v6, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 586
    .local v1, "magnitudeLevel":I
    if-le v1, v6, :cond_6

    .end local v1    # "magnitudeLevel":I
    :goto_2
    iput v1, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    .line 588
    iget-object v7, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    aget-object v8, v8, v11

    invoke-static {v7, v8, v2, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 589
    .restart local v1    # "magnitudeLevel":I
    if-le v1, v2, :cond_7

    .end local v1    # "magnitudeLevel":I
    :goto_3
    iput v1, p0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    .line 591
    iget-object v7, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    aget-object v8, v8, v12

    invoke-static {v7, v8, v2, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 592
    .restart local v1    # "magnitudeLevel":I
    if-le v1, v2, :cond_8

    move v7, v1

    :goto_4
    iput v7, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    .line 594
    iget-boolean v7, p0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    if-eqz v7, :cond_a

    .line 595
    iget-object v7, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070029

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    sput-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_FORCE_MAGNITUDE:[I

    .line 596
    new-instance v7, Lcom/android/server/VibratorService$SecSettingsObserver;

    const/4 v8, 0x3

    invoke-direct {v7, p0, v8}, Lcom/android/server/VibratorService$SecSettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v7, p0, Lcom/android/server/VibratorService;->mForceMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    .line 597
    sget-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_FORCE_MAGNITUDE:[I

    array-length v7, v7

    add-int/lit8 v5, v7, -0x1

    .line 598
    .local v5, "touchForceMagnitudeMaxLevel":I
    sget-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_FORCE_MAGNITUDE:[I

    aget v7, v7, v5

    iput v7, p0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    .line 599
    if-ge v5, v12, :cond_9

    .line 600
    const-string/jumbo v7, "VibratorService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "touchForceMagnitudeMaxLevel : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    return-void

    .line 586
    .end local v5    # "touchForceMagnitudeMaxLevel":I
    :cond_6
    sget-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    aget v1, v7, v1

    goto :goto_2

    .line 589
    :cond_7
    sget-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v1, v7, v1

    goto :goto_3

    .line 592
    :cond_8
    sget-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v7, v7, v1

    goto :goto_4

    .line 603
    .restart local v5    # "touchForceMagnitudeMaxLevel":I
    :cond_9
    iget-object v7, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    invoke-static {v7, v8, v5, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 604
    if-le v1, v5, :cond_d

    move v7, v1

    :goto_5
    iput v7, p0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    .line 607
    .end local v5    # "touchForceMagnitudeMaxLevel":I
    :cond_a
    sget-boolean v7, Lcom/android/server/VibratorService;->USE_SET_MAX_MAGNITUE:Z

    if-nez v7, :cond_b

    .line 608
    iget v7, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    iput v7, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    .line 611
    :cond_b
    iget v7, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    invoke-direct {p0, v7}, Lcom/android/server/VibratorService;->setIntensity(I)V

    .line 463
    .end local v1    # "magnitudeLevel":I
    .end local v2    # "magnitudeMaxLevel":I
    .end local v6    # "touchMagnitudeMaxLevel":I
    :cond_c
    return-void

    .line 604
    .restart local v1    # "magnitudeLevel":I
    .restart local v2    # "magnitudeMaxLevel":I
    .restart local v5    # "touchForceMagnitudeMaxLevel":I
    .restart local v6    # "touchMagnitudeMaxLevel":I
    :cond_d
    sget-object v7, Lcom/android/server/VibratorService;->LEVEL_TO_FORCE_MAGNITUDE:[I

    aget v7, v7, v1

    goto :goto_5

    .line 541
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    .locals 19
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 898
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    if-le v3, v4, :cond_0

    .line 899
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 901
    :cond_0
    sget-object v3, Lcom/android/server/VibratorService;->MONTH_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    .line 902
    .local v17, "currentDate":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    move-object/from16 v18, v0

    new-instance v3, Lcom/android/server/VibratorService$VibrationInfo;

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get9(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v4

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get8(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v6

    .line 903
    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get6(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get7(Lcom/android/server/VibratorService$Vibration;)I

    move-result v9

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get12(Lcom/android/server/VibratorService$Vibration;)I

    move-result v10

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get11(Lcom/android/server/VibratorService$Vibration;)I

    move-result v11

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v12

    .line 904
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    if-eqz v13, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get2(Lcom/android/server/VibratorService$Vibration;)I

    move-result v13

    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)I

    move-result v14

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get1(Lcom/android/server/VibratorService$Vibration;)[I

    move-result-object v15

    .line 905
    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get13(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get3(Lcom/android/server/VibratorService$Vibration;)I

    move-result v16

    .line 902
    :goto_1
    invoke-direct/range {v3 .. v17}, Lcom/android/server/VibratorService$VibrationInfo;-><init>(JJ[JIIILjava/lang/String;II[IILjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 908
    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Vibrator$SemMagnitudeTypes;->valueOf(Ljava/lang/String;)Landroid/os/Vibrator$SemMagnitudeTypes;

    move-result-object v2

    .line 909
    .local v2, "magType":Landroid/os/Vibrator$SemMagnitudeTypes;
    sget-object v3, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v2, v3}, Landroid/os/Vibrator$SemMagnitudeTypes;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 910
    sget-object v3, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_FORCE:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v2, v3}, Landroid/os/Vibrator$SemMagnitudeTypes;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 897
    :cond_1
    :goto_2
    return-void

    .line 904
    .end local v2    # "magType":Landroid/os/Vibrator$SemMagnitudeTypes;
    :cond_2
    const/4 v13, -0x1

    goto :goto_0

    .line 905
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    move/from16 v16, v0

    goto :goto_1

    .line 911
    .restart local v2    # "magType":Landroid/os/Vibrator$SemMagnitudeTypes;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService;->mPreviousNoTouchVibrations:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    if-le v3, v4, :cond_5

    .line 912
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService;->mPreviousNoTouchVibrations:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 914
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService;->mPreviousNoTouchVibrations:Ljava/util/LinkedList;

    move-object/from16 v18, v0

    new-instance v3, Lcom/android/server/VibratorService$VibrationInfo;

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get9(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v4

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get8(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v6

    .line 915
    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get6(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get7(Lcom/android/server/VibratorService$Vibration;)I

    move-result v9

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get12(Lcom/android/server/VibratorService$Vibration;)I

    move-result v10

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get11(Lcom/android/server/VibratorService$Vibration;)I

    move-result v11

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v12

    .line 916
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    if-eqz v13, :cond_6

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get2(Lcom/android/server/VibratorService$Vibration;)I

    move-result v13

    :goto_3
    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)I

    move-result v14

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get1(Lcom/android/server/VibratorService$Vibration;)[I

    move-result-object v15

    .line 917
    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get13(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->-get3(Lcom/android/server/VibratorService$Vibration;)I

    move-result v16

    .line 914
    :goto_4
    invoke-direct/range {v3 .. v17}, Lcom/android/server/VibratorService$VibrationInfo;-><init>(JJ[JIIILjava/lang/String;II[IILjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_2

    .line 916
    :cond_6
    const/4 v13, -0x1

    goto :goto_3

    .line 917
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    move/from16 v16, v0

    goto :goto_4
.end method

.method private doCancelVibrateLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 958
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    if-eqz v0, :cond_0

    .line 959
    iget-object v1, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    monitor-enter v1

    .line 960
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    .line 961
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$VibrateThread;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 963
    iput-object v3, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 965
    :cond_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorOff()V

    .line 966
    iget-object v0, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 967
    invoke-direct {p0}, Lcom/android/server/VibratorService;->reportFinishVibrationLocked()V

    .line 957
    return-void

    .line 959
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private doVibratorExists()Z
    .locals 1

    .prologue
    .line 1164
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorExists()Z

    move-result v0

    return v0
.end method

.method private doVibratorOff()V
    .locals 6

    .prologue
    .line 1256
    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1260
    :try_start_0
    iget v3, p0, Lcom/android/server/VibratorService;->mCurVibUid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v3, :cond_0

    .line 1262
    :try_start_1
    iget-object v3, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    iget v5, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    invoke-interface {v3, v5}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOff(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1265
    :goto_0
    const/4 v3, -0x1

    :try_start_2
    iput v3, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    .line 1267
    :cond_0
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1268
    .local v2, "vibratorCount":I
    if-eqz v2, :cond_1

    .line 1269
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1270
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    invoke-virtual {v3}, Landroid/os/Vibrator;->cancel()V

    .line 1269
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1273
    .end local v1    # "i":I
    :cond_1
    const-string/jumbo v3, "VibratorService"

    const-string/jumbo v5, "Turning vibrator off"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit v4

    .line 1255
    return-void

    .line 1256
    .end local v2    # "vibratorCount":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1263
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private doVibratorOn(JII)V
    .locals 9
    .param p1, "millis"    # J
    .param p3, "uid"    # I
    .param p4, "usageHint"    # I

    .prologue
    .line 1168
    iget-object v5, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1173
    :try_start_0
    iget-object v4, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4, p3, p1, p2}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOn(IJ)V

    .line 1174
    iput p3, p0, Lcom/android/server/VibratorService;->mCurVibUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1177
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1178
    .local v3, "vibratorCount":I
    if-eqz v3, :cond_0

    .line 1179
    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v4, p4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 1181
    .local v0, "attributes":Landroid/media/AudioAttributes;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 1182
    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    invoke-virtual {v4, p1, p2, v0}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 1181
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1185
    .end local v0    # "attributes":Landroid/media/AudioAttributes;
    .end local v2    # "i":I
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mHMTMount:Z

    if-eqz v4, :cond_2

    .line 1186
    iget v4, p0, Lcom/android/server/VibratorService;->mHMTMountCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/VibratorService;->mHMTMountCount:I

    .line 1187
    const-string/jumbo v4, "VibratorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "vibratorOn() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms, but HMTMount is TRUE."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_2
    monitor-exit v5

    .line 1167
    return-void

    .line 1189
    :cond_2
    :try_start_2
    const-string/jumbo v4, "VibratorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "vibratorOn() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->vibratorOn(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1168
    .end local v3    # "vibratorCount":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1175
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private doVibratorOn(JIIII)V
    .locals 9
    .param p1, "millis"    # J
    .param p3, "uid"    # I
    .param p4, "usageHint"    # I
    .param p5, "magnitude"    # I
    .param p6, "frequency"    # I

    .prologue
    const/4 v4, -0x1

    .line 1198
    iget-object v5, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1203
    :try_start_0
    iget-object v6, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v6, p3, p1, p2}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOn(IJ)V

    .line 1204
    iput p3, p0, Lcom/android/server/VibratorService;->mCurVibUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1207
    :goto_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1208
    .local v3, "vibratorCount":I
    if-eqz v3, :cond_0

    .line 1209
    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v4, p4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 1211
    .local v0, "attributes":Landroid/media/AudioAttributes;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 1212
    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    invoke-virtual {v4, p1, p2, v0}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 1211
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1215
    .end local v0    # "attributes":Landroid/media/AudioAttributes;
    .end local v2    # "i":I
    :cond_0
    iget-boolean v6, p0, Lcom/android/server/VibratorService;->mHMTMount:Z

    if-eqz v6, :cond_3

    .line 1216
    iget v6, p0, Lcom/android/server/VibratorService;->mHMTMountCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/VibratorService;->mHMTMountCount:I

    .line 1217
    const-string/jumbo v6, "VibratorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "vibratorOn() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", magnitude :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", f : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    if-eqz v8, :cond_2

    .end local p6    # "frequency":I
    :goto_2
    invoke-virtual {v7, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ", but HMTMount is TRUE."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_3
    monitor-exit v5

    .line 1197
    return-void

    .restart local p6    # "frequency":I
    :cond_2
    move p6, v4

    .line 1217
    goto :goto_2

    .line 1219
    :cond_3
    :try_start_2
    const-string/jumbo v6, "VibratorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "vibratorOn() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", magnitude :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", f : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    if-eqz v8, :cond_4

    move v4, p6

    :cond_4
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    invoke-direct {p0, p6}, Lcom/android/server/VibratorService;->setFrequency(I)V

    .line 1221
    invoke-direct {p0, p5}, Lcom/android/server/VibratorService;->setIntensity(I)V

    .line 1222
    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->vibratorOn(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 1198
    .end local v3    # "vibratorCount":I
    .end local p6    # "frequency":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1205
    .restart local p6    # "frequency":I
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method private doVibratorOn(JII[IIII)V
    .locals 9
    .param p1, "millis"    # J
    .param p3, "uid"    # I
    .param p4, "usageHint"    # I
    .param p5, "data"    # [I
    .param p6, "magnitude"    # I
    .param p7, "type"    # I
    .param p8, "repeat"    # I

    .prologue
    .line 1230
    iget-object v6, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1232
    :try_start_0
    iget-object v5, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v5, p3, p1, p2}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOn(IJ)V

    .line 1233
    iput p3, p0, Lcom/android/server/VibratorService;->mCurVibUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1236
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1237
    .local v4, "vibratorCount":I
    if-eqz v4, :cond_0

    .line 1238
    new-instance v5, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v5}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v5, p4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 1240
    .local v1, "attributes":Landroid/media/AudioAttributes;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 1241
    iget-object v5, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    invoke-virtual {v5, p1, p2, v1}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 1240
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1244
    .end local v1    # "attributes":Landroid/media/AudioAttributes;
    .end local v3    # "i":I
    :cond_0
    iget-boolean v5, p0, Lcom/android/server/VibratorService;->mHMTMount:Z

    if-eqz v5, :cond_2

    .line 1245
    iget v5, p0, Lcom/android/server/VibratorService;->mHMTMountCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/VibratorService;->mHMTMountCount:I

    .line 1246
    const-string/jumbo v5, "VibratorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "vibratorOn() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", magnitude :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", type : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", but but HMTMount is TRUE."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_2
    monitor-exit v6

    .line 1229
    return-void

    .line 1248
    :cond_2
    :try_start_2
    const-string/jumbo v5, "VibratorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "vibratorOn() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", magnitude :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", type : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    invoke-virtual {p5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    move/from16 v0, p8

    invoke-static {v5, p6, v0}, Lcom/android/server/VibratorService;->vibratorEngine([III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1230
    .end local v4    # "vibratorCount":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 1234
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method private getColorfulData(I)[I
    .locals 1
    .param p1, "type"    # I

    .prologue
    const/4 v0, -0x1

    .line 1845
    packed-switch p1, :pswitch_data_0

    .line 1881
    filled-new-array {v0, v0}, [I

    move-result-object v0

    return-object v0

    .line 1847
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibeEngineA:[I

    return-object v0

    .line 1849
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibeEngineB:[I

    return-object v0

    .line 1851
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibeEngineC:[I

    return-object v0

    .line 1853
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibeEngineD:[I

    return-object v0

    .line 1855
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibeEngineE:[I

    return-object v0

    .line 1857
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibeEngineF:[I

    return-object v0

    .line 1859
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibeEngineG:[I

    return-object v0

    .line 1861
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibeEngineH:[I

    return-object v0

    .line 1863
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibeEngineI:[I

    return-object v0

    .line 1865
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibeEngineJ:[I

    return-object v0

    .line 1867
    :pswitch_a
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibeEngineK:[I

    return-object v0

    .line 1869
    :pswitch_b
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibeEngineL:[I

    return-object v0

    .line 1871
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibeEngineM:[I

    return-object v0

    .line 1873
    :pswitch_d
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibeEngineN:[I

    return-object v0

    .line 1875
    :pswitch_e
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibeEngineO:[I

    return-object v0

    .line 1877
    :pswitch_f
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibeEngineP:[I

    return-object v0

    .line 1879
    :pswitch_10
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibeEngineQ:[I

    return-object v0

    .line 1845
    :pswitch_data_0
    .packed-switch 0xc369
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private getColorfulPattern([J)[J
    .locals 12
    .param p1, "pattern"    # [J

    .prologue
    const-wide/16 v10, 0x0

    const/4 v6, 0x2

    const/4 v8, 0x0

    .line 1988
    array-length v2, p1

    .line 1989
    .local v2, "len":I
    if-ne v2, v6, :cond_0

    .line 1990
    aget-wide v4, p1, v8

    cmp-long v4, v4, v10

    if-gez v4, :cond_0

    .line 1991
    return-object p1

    .line 1995
    :cond_0
    const/4 v0, 0x0

    .line 1996
    .local v0, "duration":I
    new-array v3, v6, [J

    .line 1997
    .local v3, "vibePattern":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1998
    int-to-long v4, v0

    aget-wide v6, p1, v1

    add-long/2addr v4, v6

    long-to-int v0, v4

    .line 1997
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2000
    :cond_1
    aput-wide v10, v3, v8

    .line 2001
    int-to-long v4, v0

    const/4 v6, 0x1

    aput-wide v4, v3, v6

    .line 2002
    return-object v3
.end method

.method private getCommonPattern(I)[J
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 1637
    packed-switch p1, :pswitch_data_0

    .line 1710
    const/4 v2, 0x2

    new-array v0, v2, [J

    .local v0, "pattern":[J
    fill-array-data v0, :array_0

    .line 1711
    move-object v1, v0

    .line 1714
    .end local v0    # "pattern":[J
    .local v1, "vibePattern":[J
    :goto_0
    return-object v1

    .line 1649
    .end local v1    # "vibePattern":[J
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternA:[J

    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1653
    .end local v1    # "vibePattern":[J
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternB:[J

    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1658
    .end local v1    # "vibePattern":[J
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternC:[J

    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1661
    .end local v1    # "vibePattern":[J
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternD:[J

    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1664
    .end local v1    # "vibePattern":[J
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternE:[J

    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1669
    .end local v1    # "vibePattern":[J
    :pswitch_5
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternF:[J

    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1672
    .end local v1    # "vibePattern":[J
    :pswitch_6
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternG:[J

    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1676
    .end local v1    # "vibePattern":[J
    :pswitch_7
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternH:[J

    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1680
    .end local v1    # "vibePattern":[J
    :pswitch_8
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternI:[J

    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1684
    .end local v1    # "vibePattern":[J
    :pswitch_9
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternJ:[J

    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1689
    .end local v1    # "vibePattern":[J
    :pswitch_a
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternK:[J

    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1692
    .end local v1    # "vibePattern":[J
    :pswitch_b
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternL:[J

    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1695
    .end local v1    # "vibePattern":[J
    :pswitch_c
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternM:[J

    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1698
    .end local v1    # "vibePattern":[J
    :pswitch_d
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternN:[J

    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1701
    .end local v1    # "vibePattern":[J
    :pswitch_e
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternO:[J

    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1704
    .end local v1    # "vibePattern":[J
    :pswitch_f
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternP:[J

    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1707
    .end local v1    # "vibePattern":[J
    :pswitch_10
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternQ:[J

    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1637
    :pswitch_data_0
    .packed-switch 0xc369
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch

    .line 1710
    :array_0
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method private getCommonPatternFrequency([J)I
    .locals 12
    .param p1, "pattern"    # [J

    .prologue
    .line 1718
    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyAlert:I

    .line 1719
    .local v1, "frequency":I
    array-length v6, p1

    .line 1720
    .local v6, "length":I
    iget-boolean v7, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    if-nez v7, :cond_0

    .line 1721
    return v1

    .line 1724
    :cond_0
    const/4 v7, 0x2

    if-lt v6, v7, :cond_1

    iget v7, p0, Lcom/android/server/VibratorService;->mVibePatternMaxLength:I

    if-le v6, v7, :cond_2

    .line 1729
    :cond_1
    return v1

    .line 1732
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->getHashValue([J)J

    move-result-wide v2

    .line 1734
    .local v2, "hashValue":J
    sget-object v7, Lcom/android/server/VibratorService;->mVibePatternHash:Ljava/util/Hashtable;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/Hashtable;->containsValue(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1735
    sget-object v7, Lcom/android/server/VibratorService;->mVibePatternHash:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    .line 1736
    .local v5, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1737
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1738
    .local v4, "key":Ljava/lang/String;
    sget-object v7, Lcom/android/server/VibratorService;->mVibePatternHash:Ljava/util/Hashtable;

    invoke-virtual {v7, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1743
    .local v8, "value":J
    cmp-long v7, v8, v2

    if-nez v7, :cond_3

    .line 1750
    const/4 v0, 0x0

    .line 1751
    .local v0, "commonPattern":Z
    const-string/jumbo v7, "A"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1753
    iget-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternA:[J

    invoke-direct {p0, v7, p1}, Lcom/android/server/VibratorService;->isCommonPattern([J[J)Z

    move-result v0

    .line 1754
    .local v0, "commonPattern":Z
    if-eqz v0, :cond_c

    .line 1755
    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyF0:I

    .line 1811
    .end local v0    # "commonPattern":Z
    :cond_4
    :goto_0
    sget-boolean v7, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v7, :cond_5

    .line 1812
    if-eqz v0, :cond_13

    .line 1813
    const-string/jumbo v7, "VibratorService"

    .line 1814
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getCommonPatternFrequency() - common pattern : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1815
    const-string/jumbo v11, ", frequency : "

    .line 1814
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1813
    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v8    # "value":J
    :cond_5
    :goto_1
    return v1

    .line 1751
    .local v0, "commonPattern":Z
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v8    # "value":J
    :cond_6
    const-string/jumbo v7, "B"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1761
    iget-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternB:[J

    invoke-direct {p0, v7, p1}, Lcom/android/server/VibratorService;->isCommonPattern([J[J)Z

    move-result v0

    .line 1762
    .local v0, "commonPattern":Z
    if-eqz v0, :cond_d

    .line 1763
    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyF0:I

    goto :goto_0

    .line 1751
    .local v0, "commonPattern":Z
    :cond_7
    const-string/jumbo v7, "C"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1769
    iget-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternC:[J

    invoke-direct {p0, v7, p1}, Lcom/android/server/VibratorService;->isCommonPattern([J[J)Z

    move-result v0

    .line 1770
    .local v0, "commonPattern":Z
    if-eqz v0, :cond_e

    .line 1771
    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyMid:I

    goto :goto_0

    .line 1751
    .local v0, "commonPattern":Z
    :cond_8
    const-string/jumbo v7, "D"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1777
    iget-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternD:[J

    invoke-direct {p0, v7, p1}, Lcom/android/server/VibratorService;->isCommonPattern([J[J)Z

    move-result v0

    .line 1778
    .local v0, "commonPattern":Z
    if-eqz v0, :cond_f

    .line 1779
    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyHigh:I

    goto :goto_0

    .line 1751
    .local v0, "commonPattern":Z
    :cond_9
    const-string/jumbo v7, "E"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1785
    iget-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternE:[J

    invoke-direct {p0, v7, p1}, Lcom/android/server/VibratorService;->isCommonPattern([J[J)Z

    move-result v0

    .line 1786
    .local v0, "commonPattern":Z
    if-eqz v0, :cond_10

    .line 1787
    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyLow:I

    goto :goto_0

    .line 1751
    .local v0, "commonPattern":Z
    :cond_a
    const-string/jumbo v7, "F"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1793
    iget-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternF:[J

    invoke-direct {p0, v7, p1}, Lcom/android/server/VibratorService;->isCommonPattern([J[J)Z

    move-result v0

    .line 1794
    .local v0, "commonPattern":Z
    if-eqz v0, :cond_11

    .line 1795
    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyF0:I

    goto/16 :goto_0

    .line 1751
    .local v0, "commonPattern":Z
    :cond_b
    const-string/jumbo v7, "G"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1801
    iget-object v7, p0, Lcom/android/server/VibratorService;->mVibePatternG:[J

    invoke-direct {p0, v7, p1}, Lcom/android/server/VibratorService;->isCommonPattern([J[J)Z

    move-result v0

    .line 1802
    .local v0, "commonPattern":Z
    if-eqz v0, :cond_12

    .line 1803
    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyMid:I

    goto/16 :goto_0

    .line 1757
    :cond_c
    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyAlert:I

    goto/16 :goto_0

    .line 1765
    :cond_d
    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyAlert:I

    goto/16 :goto_0

    .line 1773
    :cond_e
    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyAlert:I

    goto/16 :goto_0

    .line 1781
    :cond_f
    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyAlert:I

    goto/16 :goto_0

    .line 1789
    :cond_10
    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyAlert:I

    goto/16 :goto_0

    .line 1797
    :cond_11
    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyAlert:I

    goto/16 :goto_0

    .line 1805
    :cond_12
    iget v1, p0, Lcom/android/server/VibratorService;->mVibeFrequencyAlert:I

    goto/16 :goto_0

    .line 1818
    .end local v0    # "commonPattern":Z
    :cond_13
    const-string/jumbo v7, "VibratorService"

    .line 1819
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getCommonPatternFrequency() - common or custom pattern(confirmed) : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1820
    const-string/jumbo v11, ", frequency : "

    .line 1819
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1818
    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private getCustomPattern([I)[J
    .locals 12
    .param p1, "data"    # [I

    .prologue
    const/4 v10, 0x2

    .line 1949
    array-length v3, p1

    .line 1950
    .local v3, "length":I
    array-length v8, p1

    const/4 v9, 0x3

    if-gt v8, v9, :cond_0

    .line 1951
    new-array v8, v10, [J

    fill-array-data v8, :array_0

    return-object v8

    .line 1954
    :cond_0
    add-int/lit8 v8, v3, -0x1

    div-int/lit8 v8, v8, 0x3

    add-int/lit8 v5, v8, 0x1

    .line 1955
    .local v5, "tempLength":I
    new-array v6, v5, [J

    .line 1956
    .local v6, "tempPattern":[J
    const/4 v2, 0x0

    .line 1958
    .local v2, "j":I
    const/4 v1, 0x1

    .line 1959
    .local v1, "isZero":Z
    const-wide/16 v8, 0x0

    aput-wide v8, v6, v2

    .line 1960
    aget v8, p1, v10

    if-eqz v8, :cond_1

    .line 1961
    const/4 v1, 0x0

    .line 1962
    const/4 v2, 0x1

    .line 1965
    :cond_1
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_5

    .line 1966
    add-int/lit8 v8, v0, 0x1

    if-ge v8, v3, :cond_3

    .line 1967
    if-eqz v1, :cond_4

    add-int/lit8 v8, v0, 0x1

    aget v8, p1, v8

    if-eqz v8, :cond_4

    .line 1968
    const/4 v1, 0x0

    .line 1969
    add-int/lit8 v2, v2, 0x1

    .line 1974
    :cond_2
    :goto_1
    aget-wide v8, v6, v2

    aget v10, p1, v0

    int-to-long v10, v10

    add-long/2addr v8, v10

    aput-wide v8, v6, v2

    .line 1965
    :cond_3
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 1970
    :cond_4
    if-nez v1, :cond_2

    add-int/lit8 v8, v0, 0x1

    aget v8, p1, v8

    if-nez v8, :cond_2

    .line 1971
    const/4 v1, 0x1

    .line 1972
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1978
    :cond_5
    add-int/lit8 v4, v2, 0x1

    .line 1979
    .local v4, "patternLength":I
    new-array v7, v4, [J

    .line 1980
    .local v7, "vibePattern":[J
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_6

    .line 1981
    aget-wide v8, v6, v0

    aput-wide v8, v7, v0

    .line 1980
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1984
    :cond_6
    return-object v7

    .line 1951
    :array_0
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method private getHashValue([J)J
    .locals 8
    .param p1, "pattern"    # [J

    .prologue
    .line 1627
    array-length v1, p1

    .line 1628
    .local v1, "length":I
    const-wide/16 v2, 0x0

    .line 1629
    .local v2, "value":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1630
    aget-wide v4, p1, v0

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    add-int/lit8 v6, v0, 0x1

    int-to-long v6, v6

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 1629
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1632
    :cond_0
    return-wide v2
.end method

.method static getIntArray(Landroid/content/res/Resources;I)[I
    .locals 8
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resid"    # I

    .prologue
    const/4 v7, 0x0

    .line 1576
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 1577
    .local v0, "ar":[I
    const/4 v2, 0x0

    .line 1578
    .local v2, "length":I
    const/4 v4, -0x1

    .line 1579
    .local v4, "startEngineIndex":I
    if-nez v0, :cond_0

    .line 1580
    return-object v7

    .line 1582
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_1

    .line 1583
    aget v5, v0, v1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 1584
    add-int/lit8 v4, v1, 0x1

    .line 1588
    :cond_1
    if-gez v4, :cond_3

    .line 1589
    return-object v7

    .line 1582
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1591
    :cond_3
    array-length v5, v0

    sub-int v2, v5, v4

    .line 1593
    new-array v3, v2, [I

    .line 1594
    .local v3, "out":[I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_4

    .line 1595
    add-int v5, v1, v4

    aget v5, v0, v5

    aput v5, v3, v1

    .line 1594
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1597
    :cond_4
    return-object v3
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 6
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resid"    # I

    .prologue
    const/4 v4, 0x0

    .line 1557
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 1558
    .local v0, "ar":[I
    const/4 v2, 0x0

    .line 1559
    .local v2, "length":I
    if-nez v0, :cond_0

    .line 1560
    return-object v4

    .line 1562
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 1563
    aget v4, v0, v1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 1568
    :cond_1
    new-array v3, v2, [J

    .line 1569
    .local v3, "out":[J
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    .line 1570
    aget v4, v0, v1

    int-to-long v4, v4

    aput-wide v4, v3, v1

    .line 1569
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1566
    .end local v3    # "out":[J
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 1562
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1572
    .restart local v3    # "out":[J
    :cond_3
    return-object v3
.end method

.method private getMillisecondsFromColorfulData([I)J
    .locals 6
    .param p1, "data"    # [I

    .prologue
    .line 1896
    const-wide/16 v2, 0x0

    .line 1897
    .local v2, "millis":J
    array-length v1, p1

    .line 1898
    .local v1, "length":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1899
    aget v4, p1, v0

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 1898
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 1901
    :cond_0
    return-wide v2
.end method

.method private getMinMagnitude()I
    .locals 5

    .prologue
    .line 2219
    iget v1, p0, Lcom/android/server/VibratorService;->mMinMagnitudeValue:I

    .line 2221
    .local v1, "magnitude":I
    :try_start_0
    sget-object v2, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    const/4 v3, 0x1

    aget v1, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2225
    :goto_0
    return v1

    .line 2222
    :catch_0
    move-exception v0

    .line 2223
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Min magnitude should be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/VibratorService;->mMinMagnitudeValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static native getVibratorMotorType()I
.end method

.method private hasColorfulData(I[I)Z
    .locals 4
    .param p1, "type"    # I
    .param p2, "data"    # [I

    .prologue
    const/4 v3, 0x0

    .line 1886
    array-length v0, p2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1887
    aget v0, p2, v3

    if-gez v0, :cond_1

    .line 1888
    sget-boolean v0, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "This "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not supported for engine."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    :cond_0
    return v3

    .line 1892
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private initEngineData(Landroid/content/res/Resources;I)[I
    .locals 5
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "resid"    # I

    .prologue
    const/4 v4, -0x1

    .line 1618
    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->getIntArray(Landroid/content/res/Resources;I)[I

    move-result-object v0

    .line 1619
    .local v0, "data":[I
    if-nez v0, :cond_1

    .line 1620
    sget-boolean v1, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initEngineData() is failed by illegal resid("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    :cond_0
    filled-new-array {v4, v4}, [I

    move-result-object v1

    return-object v1

    .line 1623
    :cond_1
    return-object v0
.end method

.method private initPattern(Landroid/content/res/Resources;ILjava/lang/String;)[J
    .locals 6
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "resid"    # I
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 1601
    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v1

    .line 1602
    .local v1, "pattern":[J
    if-nez v1, :cond_0

    .line 1603
    const-string/jumbo v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initPattern() is failed by illegal resid("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    const/4 v2, 0x2

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    return-object v2

    .line 1607
    :cond_0
    array-length v0, v1

    .line 1608
    .local v0, "length":I
    iget v2, p0, Lcom/android/server/VibratorService;->mVibePatternMaxLength:I

    if-ge v2, v0, :cond_1

    .line 1609
    iput v0, p0, Lcom/android/server/VibratorService;->mVibePatternMaxLength:I

    .line 1612
    :cond_1
    sget-object v2, Lcom/android/server/VibratorService;->mVibePatternHash:Ljava/util/Hashtable;

    invoke-direct {p0, v1}, Lcom/android/server/VibratorService;->getHashValue([J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p3, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1614
    return-object v1

    .line 1604
    nop

    :array_0
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method private isAll0([J)Z
    .locals 6
    .param p1, "pattern"    # [J

    .prologue
    .line 829
    array-length v0, p1

    .line 830
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 831
    aget-wide v2, p1, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 832
    const/4 v2, 0x0

    return v2

    .line 830
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 835
    :cond_1
    const-string/jumbo v2, "VibratorService"

    const-string/jumbo v3, "isAll0() is true"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    const/4 v2, 0x1

    return v2
.end method

.method private isColorfulDataFormat([I)Z
    .locals 7
    .param p1, "data"    # [I

    .prologue
    const/4 v6, 0x0

    .line 1929
    array-length v2, p1

    .line 1930
    .local v2, "rawLength":I
    add-int/lit8 v1, v2, -0x1

    .line 1931
    .local v1, "length":I
    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    div-int/lit8 v3, v1, 0x3

    mul-int/lit8 v3, v3, 0x3

    if-eq v3, v1, :cond_2

    .line 1932
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1933
    const-string/jumbo v3, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isColorfulDataFormat() - wrong format(1) : data["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1935
    :cond_1
    return v6

    .line 1938
    .end local v0    # "i":I
    :cond_2
    aget v3, p1, v6

    if-ne v1, v3, :cond_3

    .line 1939
    const/4 v3, 0x1

    return v3

    .line 1941
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v2, :cond_4

    .line 1942
    const-string/jumbo v3, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isColorfulDataFormat() - wrong format(2) : data["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1944
    :cond_4
    return v6
.end method

.method private isCommonPattern([J[J)Z
    .locals 7
    .param p1, "common"    # [J
    .param p2, "pattern"    # [J

    .prologue
    const/4 v6, 0x0

    .line 1832
    array-length v1, p1

    .line 1833
    .local v1, "length":I
    array-length v2, p2

    if-eq v1, v2, :cond_0

    .line 1834
    return v6

    .line 1836
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1837
    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 1838
    return v6

    .line 1836
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1841
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method private isExecutablePattern([JILjava/lang/String;)Z
    .locals 12
    .param p1, "pattern"    # [J
    .param p2, "repeat"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2007
    if-nez p1, :cond_0

    .line 2008
    const-string/jumbo v4, "VibratorService"

    const-string/jumbo v5, "isExecutablePattern() - pattern is null"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    return v8

    .line 2012
    :cond_0
    array-length v2, p1

    .line 2013
    .local v2, "length":I
    if-lt p2, v2, :cond_1

    .line 2014
    const-string/jumbo v4, "VibratorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isExecutablePattern() - length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", repeat = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    return v8

    .line 2018
    :cond_1
    aget-wide v4, p1, p2

    cmp-long v4, v4, v10

    if-lez v4, :cond_2

    .line 2019
    return v9

    .line 2022
    :cond_2
    div-int/lit8 v4, p2, 0x2

    mul-int/lit8 v4, v4, 0x2

    if-ne v4, p2, :cond_4

    div-int/lit8 v4, v2, 0x2

    mul-int/lit8 v4, v4, 0x2

    if-ne v4, v2, :cond_4

    .line 2024
    :cond_3
    add-int/lit8 v4, v2, -0x1

    aget-wide v4, p1, v4

    cmp-long v4, v4, v10

    if-lez v4, :cond_5

    .line 2025
    return v9

    .line 2023
    :cond_4
    div-int/lit8 v4, p2, 0x2

    mul-int/lit8 v4, v4, 0x2

    if-eq v4, p2, :cond_5

    div-int/lit8 v4, v2, 0x2

    mul-int/lit8 v4, v4, 0x2

    if-ne v4, v2, :cond_3

    .line 2030
    :cond_5
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_7

    .line 2031
    add-int v4, v1, p2

    add-int/lit8 v3, v4, 0x1

    .line 2032
    .local v3, "working":I
    add-int/lit8 v0, v3, 0x1

    .line 2033
    .local v0, "delay":I
    if-ge v0, v2, :cond_6

    .line 2034
    aget-wide v4, p1, v3

    aget-wide v6, p1, v0

    add-long/2addr v4, v6

    cmp-long v4, v4, v10

    if-lez v4, :cond_6

    .line 2035
    return v9

    .line 2030
    :cond_6
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 2039
    .end local v0    # "delay":I
    .end local v3    # "working":I
    :cond_7
    const-string/jumbo v4, "VibratorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "This pattern is not executable. repeat = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_8

    .line 2041
    const-string/jumbo v4, "VibratorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pattern["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-wide v6, p1, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2043
    :cond_8
    iget v4, p0, Lcom/android/server/VibratorService;->mCheckExecutable:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/VibratorService;->mCheckExecutable:I

    .line 2044
    iget-object v4, p0, Lcom/android/server/VibratorService;->mCheckExecutablePkg:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x3e8

    if-ge v4, v5, :cond_9

    .line 2045
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/VibratorService;->mCheckExecutablePkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/VibratorService;->mCheckExecutablePkg:Ljava/lang/String;

    .line 2046
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_9

    .line 2047
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/VibratorService;->mCheckExecutablePkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-wide v6, p1, v1

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/VibratorService;->mCheckExecutablePkg:Ljava/lang/String;

    .line 2046
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2050
    :cond_9
    return v8
.end method

.method private removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x0

    .line 1066
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 1067
    .local v0, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/VibratorService$Vibration;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1068
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VibratorService$Vibration;

    .line 1069
    .local v1, "vib":Lcom/android/server/VibratorService$Vibration;
    invoke-static {v1}, Lcom/android/server/VibratorService$Vibration;->-get10(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 1070
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 1071
    invoke-direct {p0, v1}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 1072
    return-object v1

    .line 1077
    .end local v1    # "vib":Lcom/android/server/VibratorService$Vibration;
    :cond_1
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v2}, Lcom/android/server/VibratorService$Vibration;->-get10(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 1078
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 1079
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    return-object v2

    .line 1081
    :cond_2
    return-object v4
.end method

.method private reportFinishVibrationLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1053
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v1, :cond_0

    .line 1055
    :try_start_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v2}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v2

    .line 1056
    iget-object v3, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->-get11(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    .line 1057
    iget-object v4, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v4}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v4

    .line 1056
    const/4 v5, 0x3

    .line 1055
    invoke-interface {v1, v2, v5, v3, v4}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1060
    :goto_0
    iput-object v6, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 1052
    :cond_0
    return-void

    .line 1058
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private setFrequency(I)V
    .locals 2
    .param p1, "frequency"    # I

    .prologue
    .line 2197
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    if-eqz v0, :cond_0

    .line 2198
    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/android/server/VibratorService;->vibratorFrequency(J)V

    .line 2196
    :cond_0
    return-void
.end method

.method private setIntensity(I)V
    .locals 2
    .param p1, "intensity"    # I

    .prologue
    .line 2203
    sget-boolean v0, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    if-eqz v0, :cond_0

    .line 2204
    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/android/server/VibratorService;->vibratorIntensity(J)V

    .line 2202
    :cond_0
    return-void
.end method

.method private shouldVibrateForRingtone()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1041
    iget-object v4, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1042
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 1045
    .local v1, "ringerMode":I
    iget-object v4, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "vibrate_when_ringing"

    .line 1044
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    .line 1046
    if-eqz v1, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    .line 1048
    :cond_1
    if-ne v1, v2, :cond_2

    :goto_1
    return v2

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method private startNextVibrationLocked()V
    .locals 1

    .prologue
    .line 972
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 973
    invoke-direct {p0}, Lcom/android/server/VibratorService;->reportFinishVibrationLocked()V

    .line 974
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 975
    return-void

    .line 977
    :cond_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VibratorService$Vibration;

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 971
    return-void
.end method

.method private startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    .locals 13
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 992
    :try_start_0
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get12(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 993
    invoke-direct {p0}, Lcom/android/server/VibratorService;->shouldVibrateForRingtone()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1002
    :cond_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 1003
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get12(Lcom/android/server/VibratorService$Vibration;)I

    move-result v2

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get11(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v4

    .line 1002
    const/4 v5, 0x3

    invoke-interface {v1, v5, v2, v3, v4}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v11

    .line 1004
    .local v11, "mode":I
    if-nez v11, :cond_1

    .line 1005
    iget-object v1, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v2}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v2

    .line 1006
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get11(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    .line 1005
    invoke-interface {v1, v2, v5, v3, v4}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I

    move-result v11

    .line 1008
    :cond_1
    if-nez v11, :cond_3

    .line 1009
    iput-object p1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1020
    .end local v11    # "mode":I
    :goto_0
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get9(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_8

    .line 1021
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get1(Lcom/android/server/VibratorService$Vibration;)[I

    move-result-object v1

    if-nez v1, :cond_6

    .line 1022
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get9(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v2

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get11(Lcom/android/server/VibratorService$Vibration;)I

    move-result v4

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get12(Lcom/android/server/VibratorService$Vibration;)I

    move-result v5

    .line 1023
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get13(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get3(Lcom/android/server/VibratorService$Vibration;)I

    move-result v6

    .line 1024
    :goto_1
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get2(Lcom/android/server/VibratorService$Vibration;)I

    move-result v7

    move-object v1, p0

    .line 1022
    invoke-direct/range {v1 .. v7}, Lcom/android/server/VibratorService;->doVibratorOn(JIIII)V

    .line 1025
    iget-object v1, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get9(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 981
    :goto_2
    return-void

    .line 994
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 995
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v12

    .line 996
    .local v12, "ringerMode":I
    const-string/jumbo v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startVibrationLocked() : ringMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 997
    const-string/jumbo v3, ", VIBRATE_WHEN_RINGING = "

    .line 996
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 998
    iget-object v3, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "vibrate_when_ringing"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 996
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    return-void

    .line 1011
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v12    # "ringerMode":I
    .restart local v11    # "mode":I
    :cond_3
    const/4 v1, 0x2

    if-ne v11, v1, :cond_4

    .line 1012
    const-string/jumbo v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Would be an error: vibrate from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get11(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    :cond_4
    const-string/jumbo v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startVibrationLocked() : vibrate from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get11(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iget-object v1, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1016
    return-void

    .line 1023
    .end local v11    # "mode":I
    :cond_5
    iget v6, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    goto/16 :goto_1

    .line 1027
    :cond_6
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get9(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v2

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get11(Lcom/android/server/VibratorService$Vibration;)I

    move-result v4

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get12(Lcom/android/server/VibratorService$Vibration;)I

    move-result v5

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get1(Lcom/android/server/VibratorService$Vibration;)[I

    move-result-object v6

    .line 1028
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get13(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get3(Lcom/android/server/VibratorService$Vibration;)I

    move-result v7

    :goto_3
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)I

    move-result v8

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get7(Lcom/android/server/VibratorService$Vibration;)I

    move-result v9

    move-object v1, p0

    .line 1027
    invoke-direct/range {v1 .. v9}, Lcom/android/server/VibratorService;->doVibratorOn(JII[IIII)V

    .line 1029
    iget-object v1, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get9(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v4

    const-wide/16 v6, 0xa

    add-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 1028
    :cond_7
    iget v7, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    goto :goto_3

    .line 1034
    :cond_8
    new-instance v1, Lcom/android/server/VibratorService$VibrateThread;

    invoke-direct {v1, p0, p1}, Lcom/android/server/VibratorService$VibrateThread;-><init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    iput-object v1, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 1035
    iget-object v1, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v1}, Lcom/android/server/VibratorService$VibrateThread;->start()V

    goto/16 :goto_2

    .line 1018
    :catch_0
    move-exception v10

    .local v10, "e":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method private unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    .locals 3
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 1085
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get6(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1089
    :try_start_0
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get10(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1084
    :cond_0
    :goto_0
    return-void

    .line 1090
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private updateInputDeviceVibrators()V
    .locals 12

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1097
    iget-object v7, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v7

    .line 1098
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 1100
    iget-object v8, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1101
    const/4 v9, 0x0

    :try_start_1
    iput-boolean v9, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1104
    :try_start_2
    iget-object v9, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 1105
    const-string/jumbo v10, "vibrate_input_devices"

    const/4 v11, -0x2

    .line 1103
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-lez v9, :cond_2

    :goto_0
    iput-boolean v5, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1109
    :goto_1
    :try_start_3
    iget-object v5, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v5}, Landroid/os/PowerManagerInternal;->getLowPowerModeEnabled()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    .line 1111
    iget-boolean v5, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v5, :cond_3

    .line 1112
    iget-boolean v5, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-nez v5, :cond_0

    .line 1113
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    .line 1114
    iget-object v5, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    iget-object v6, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-virtual {v5, p0, v6}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 1123
    :cond_0
    :goto_2
    iget-object v5, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1124
    iget-boolean v5, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v5, :cond_4

    .line 1125
    iget-object v5, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v5}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v2

    .line 1126
    .local v2, "ids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    array-length v5, v2

    if-ge v1, v5, :cond_4

    .line 1127
    iget-object v5, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    aget v6, v2, v1

    invoke-virtual {v5, v6}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 1128
    .local v0, "device":Landroid/view/InputDevice;
    invoke-virtual {v0}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v4

    .line 1129
    .local v4, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v4}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1130
    iget-object v5, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1126
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v0    # "device":Landroid/view/InputDevice;
    .end local v1    # "i":I
    .end local v2    # "ids":[I
    .end local v4    # "vibrator":Landroid/os/Vibrator;
    :cond_2
    move v5, v6

    .line 1103
    goto :goto_0

    .line 1117
    :cond_3
    iget-boolean v5, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-eqz v5, :cond_0

    .line 1118
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    .line 1119
    iget-object v5, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v5, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1100
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v8

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1097
    :catchall_1
    move-exception v5

    monitor-exit v7

    throw v5

    :cond_4
    :try_start_5
    monitor-exit v8

    .line 1136
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v7

    .line 1096
    return-void

    .line 1106
    :catch_0
    move-exception v3

    .local v3, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_1
.end method

.method private verifyIncomingUid(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 728
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 729
    return-void

    .line 731
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 732
    return-void

    .line 734
    :cond_1
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.UPDATE_APP_OPS_STATS"

    .line 735
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    .line 734
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 727
    return-void
.end method

.method private vibrate(ILjava/lang/String;JILandroid/os/IBinder;ILjava/lang/String;)V
    .locals 19
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "milliseconds"    # J
    .param p5, "usageHint"    # I
    .param p6, "token"    # Landroid/os/IBinder;
    .param p7, "magnitude"    # I
    .param p8, "magnitueType"    # Ljava/lang/String;

    .prologue
    .line 786
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.VIBRATE"

    invoke-virtual {v2, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 788
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v4, "Requires VIBRATE permission"

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 791
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    .line 795
    const-wide/16 v4, 0x0

    cmp-long v2, p3, v4

    if-lez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_2

    .line 796
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Lcom/android/server/VibratorService$Vibration;->hasLongerTimeout(J)Z

    move-result v2

    .line 795
    if-eqz v2, :cond_2

    .line 800
    :cond_1
    const-string/jumbo v2, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vibrate - package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mCurrentVibration.hasLongerTimeout(milliseconds) => true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    return-void

    .line 810
    :cond_2
    const-string/jumbo v2, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vibrate - package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", ms: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", magnitude:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    new-instance v3, Lcom/android/server/VibratorService$Vibration;

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p6

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p7

    move-object/from16 v14, p8

    invoke-direct/range {v3 .. v14}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;JIILjava/lang/String;II[ILjava/lang/String;)V

    .line 815
    .local v3, "vib":Lcom/android/server/VibratorService$Vibration;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 817
    .local v16, "ident":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 818
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 819
    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 820
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 821
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 824
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 785
    return-void

    .line 817
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v4

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 823
    :catchall_1
    move-exception v2

    .line 824
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 823
    throw v2
.end method

.method static native vibratorEngine([III)V
.end method

.method static native vibratorEngineExist()Z
.end method

.method static native vibratorExists()Z
.end method

.method static native vibratorFrequency(J)V
.end method

.method static native vibratorFrequencyExist()Z
.end method

.method static native vibratorInit()V
.end method

.method static native vibratorIntensity(J)V
.end method

.method static native vibratorIntensityExists()Z
.end method

.method static native vibratorOff()V
.end method

.method static native vibratorOn(J)V
.end method


# virtual methods
.method public cancelVibrate(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 923
    iget-object v3, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 924
    const-string/jumbo v4, "android.permission.VIBRATE"

    .line 925
    const-string/jumbo v5, "cancelVibrate"

    .line 923
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 930
    .local v0, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 931
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v2

    .line 932
    .local v2, "vib":Lcom/android/server/VibratorService$Vibration;
    iget-object v3, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-ne v2, v3, :cond_0

    .line 936
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 937
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 942
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 922
    return-void

    .line 930
    .end local v2    # "vib":Lcom/android/server/VibratorService$Vibration;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 941
    :catchall_1
    move-exception v3

    .line 942
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 941
    throw v3
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2480
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 2483
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Permission Denial: can\'t dump vibrator service from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2484
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 2483
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2485
    const-string/jumbo v3, ", uid="

    .line 2483
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2485
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2483
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2486
    return-void

    .line 2488
    :cond_0
    const-string/jumbo v2, "Previous vibrations:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2489
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v3

    .line 2490
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VibratorService$VibrationInfo;

    .line 2491
    .local v0, "info":Lcom/android/server/VibratorService$VibrationInfo;
    const-string/jumbo v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2492
    invoke-virtual {v0}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2489
    .end local v0    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 2494
    .restart local v1    # "info$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    const-string/jumbo v2, "Extra vibrations:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2495
    iget-object v2, p0, Lcom/android/server/VibratorService;->mPreviousNoTouchVibrations:Ljava/util/LinkedList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VibratorService$VibrationInfo;

    .line 2496
    .restart local v0    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    const-string/jumbo v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2497
    invoke-virtual {v0}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    :cond_2
    monitor-exit v3

    .line 2500
    const-string/jumbo v2, "Current Info:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2501
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  mLowPowerMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2505
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  mTouchMagnitude = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2506
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  mCallMagnitude = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2507
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  mNotiMagnitude = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2508
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  mDefaultMagnitude = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2509
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  mForceMagnitude = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  mMax = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService;->mMaxMagnitudeValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2511
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  mMin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService;->mMinMagnitudeValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  mMType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService;->mMotorType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2513
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  mHMTMountC = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService;->mHMTMountCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  mHasVibrator = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/VibratorService;->mHasVibrator:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2515
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  mIsEnableInt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2516
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  mIsSupportedH = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2517
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  mIsSupportedF = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2518
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  mIsSupportedE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2519
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  mCheckExe = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService;->mCheckExecutable:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2520
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  mCheckPac = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VibratorService;->mCheckExecutablePkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2521
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  USE_SET_MAX_MAGNITUE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/VibratorService;->USE_SET_MAX_MAGNITUE:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2479
    return-void
.end method

.method public getMagnitude(Ljava/lang/String;)I
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 2229
    invoke-static {p1}, Landroid/os/Vibrator$SemMagnitudeTypes;->valueOf(Ljava/lang/String;)Landroid/os/Vibrator$SemMagnitudeTypes;

    move-result-object v0

    .line 2230
    .local v0, "magnitudeType":Landroid/os/Vibrator$SemMagnitudeTypes;
    invoke-static {}, Lcom/android/server/VibratorService;->-getandroid-os-Vibrator$SemMagnitudeTypesSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Vibrator$SemMagnitudeTypes;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2248
    const/4 v1, 0x0

    return v1

    .line 2232
    :pswitch_0
    iget v1, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    return v1

    .line 2234
    :pswitch_1
    iget v1, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    return v1

    .line 2236
    :pswitch_2
    iget v1, p0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    return v1

    .line 2238
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/VibratorService;->getMaxMagnitude()I

    move-result v1

    return v1

    .line 2240
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/VibratorService;->getMinMagnitude()I

    move-result v1

    return v1

    .line 2242
    :pswitch_5
    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    if-eqz v1, :cond_0

    .line 2243
    iget v1, p0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    return v1

    .line 2245
    :cond_0
    iget v1, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    return v1

    .line 2230
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMaxMagnitude()I
    .locals 5

    .prologue
    .line 2209
    iget v1, p0, Lcom/android/server/VibratorService;->mMaxMagnitudeValue:I

    .line 2211
    .local v1, "magnitude":I
    :try_start_0
    sget-object v2, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    sget-object v3, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v1, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2215
    :goto_0
    return v1

    .line 2212
    :catch_0
    move-exception v0

    .line 2213
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Default magnitude = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/VibratorService;->mMaxMagnitudeValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMotorType()I
    .locals 3

    .prologue
    .line 2192
    sget-boolean v0, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getMotorType() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VibratorService;->mMotorType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    :cond_0
    iget v0, p0, Lcom/android/server/VibratorService;->mMotorType:I

    return v0
.end method

.method public hasVibrator()Z
    .locals 4

    .prologue
    .line 694
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorExists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/VibratorService;->mHasVibrator:Z

    .line 695
    sget-boolean v0, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 696
    const-string/jumbo v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hasVibrator : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mHasVibrator:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 697
    const-string/jumbo v2, ", mIsEnableIntensity: "

    .line 696
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 697
    sget-boolean v2, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    .line 696
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 698
    const-string/jumbo v2, ", mIsHSupported: "

    .line 696
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 698
    sget-boolean v2, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    .line 696
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v1

    .line 702
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_1

    .line 703
    const-string/jumbo v0, "VibratorService"

    const-string/jumbo v2, "***** Current vibration info *****"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$Vibration;->printInfo()V

    .line 706
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 707
    const-string/jumbo v0, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mVibrations.size() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const-string/jumbo v0, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Last package that started the wakelock : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VibratorService;->mLastStartWakeLock:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    const-string/jumbo v0, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Last package that ended the wakelock : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VibratorService;->mLastEndWakeLock:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 714
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mHasVibrator:Z

    return v0

    .line 701
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onInputDeviceAdded(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 1142
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    .line 1141
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 1147
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    .line 1146
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 1152
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    .line 1151
    return-void
.end method

.method public readFromFile(J)I
    .locals 13
    .param p1, "offset"    # J

    .prologue
    const/4 v11, -0x1

    .line 2434
    const/4 v5, 0x0

    .line 2435
    .local v5, "randomAccessFile":Ljava/io/RandomAccessFile;
    new-instance v4, Ljava/io/File;

    const-string/jumbo v8, "/dev/block/param"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2437
    .local v4, "file":Ljava/io/File;
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v8

    if-nez v8, :cond_0

    .line 2438
    const-string/jumbo v8, "VibratorService"

    const-string/jumbo v9, "It\'s not Factory Binary"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    return v11

    .line 2442
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 2443
    const-string/jumbo v8, "VibratorService"

    const-string/jumbo v9, "/dev/block/param is not found"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    return v11

    .line 2446
    :cond_1
    const/4 v7, -0x1

    .line 2450
    .local v7, "value":I
    :try_start_0
    new-instance v6, Ljava/io/RandomAccessFile;

    new-instance v8, Ljava/io/File;

    const-string/jumbo v9, "/dev/block/param"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "rw"

    invoke-direct {v6, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2456
    .end local v5    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .local v6, "randomAccessFile":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v6, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2458
    const/4 v8, 0x4

    new-array v0, v8, [B

    .line 2459
    .local v0, "byteData":[B
    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-virtual {v6, v0, v8, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 2461
    const/4 v8, 0x3

    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    const/4 v9, 0x2

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    const/4 v9, 0x1

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    const/4 v9, 0x0

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    or-int v7, v8, v9

    .line 2463
    const-string/jumbo v8, "VibratorService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "get frequency : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2464
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 2475
    return v7

    .line 2451
    .end local v0    # "byteData":[B
    .end local v6    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v5    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v1

    .line 2452
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2453
    return v11

    .line 2465
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 2466
    .end local v5    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .local v2, "e":Ljava/io/IOException;
    :goto_0
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 2468
    :try_start_3
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2472
    :goto_1
    return v11

    .line 2469
    :catch_2
    move-exception v3

    .line 2470
    .local v3, "err":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2465
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "err":Ljava/lang/Exception;
    .restart local v6    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .local v5, "randomAccessFile":Ljava/io/RandomAccessFile;
    goto :goto_0
.end method

.method reloadContentObserver()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, -0x2

    .line 2252
    sget-boolean v4, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    if-eqz v4, :cond_7

    .line 2253
    iget-object v4, p0, Lcom/android/server/VibratorService;->mTouchMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-virtual {v4}, Lcom/android/server/VibratorService$SecSettingsObserver;->reload()V

    .line 2254
    iget-object v4, p0, Lcom/android/server/VibratorService;->mCallMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-virtual {v4}, Lcom/android/server/VibratorService$SecSettingsObserver;->reload()V

    .line 2255
    iget-object v4, p0, Lcom/android/server/VibratorService;->mNotiMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-virtual {v4}, Lcom/android/server/VibratorService$SecSettingsObserver;->reload()V

    .line 2258
    sget-object v4, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    .line 2259
    .local v1, "magnitudeMaxLevel":I
    sget-object v4, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    array-length v4, v4

    add-int/lit8 v3, v4, -0x1

    .line 2260
    .local v3, "touchMagnitudeMaxLevel":I
    if-lt v1, v8, :cond_0

    if-ge v3, v8, :cond_1

    .line 2261
    :cond_0
    const-string/jumbo v4, "VibratorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "magnitudeMaxLevel(reloadContentObserver) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2262
    const-string/jumbo v6, ", touchMagnitudeMaxLevel(reloadContentObserver) : "

    .line 2261
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    return-void

    .line 2266
    :cond_1
    iget-object v4, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v4, v5, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2267
    .local v0, "magnitudeLevel":I
    if-le v0, v3, :cond_3

    .end local v0    # "magnitudeLevel":I
    :goto_0
    iput v0, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    .line 2269
    iget-object v4, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    aget-object v5, v5, v9

    invoke-static {v4, v5, v1, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2270
    .restart local v0    # "magnitudeLevel":I
    if-le v0, v1, :cond_4

    .end local v0    # "magnitudeLevel":I
    :goto_1
    iput v0, p0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    .line 2272
    iget-object v4, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-static {v4, v5, v1, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2273
    .restart local v0    # "magnitudeLevel":I
    if-le v0, v1, :cond_5

    .end local v0    # "magnitudeLevel":I
    :goto_2
    iput v0, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    .line 2275
    sget-object v4, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v4, v4, v1

    iput v4, p0, Lcom/android/server/VibratorService;->mMaxMagnitudeValue:I

    .line 2276
    sget-object v4, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v4, v4, v9

    iput v4, p0, Lcom/android/server/VibratorService;->mMinMagnitudeValue:I

    .line 2278
    sget-boolean v4, Lcom/android/server/VibratorService;->USE_SET_MAX_MAGNITUE:Z

    if-nez v4, :cond_2

    .line 2279
    iget v4, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    iput v4, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    .line 2282
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    if-eqz v4, :cond_7

    .line 2283
    iget-object v4, p0, Lcom/android/server/VibratorService;->mForceMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-virtual {v4}, Lcom/android/server/VibratorService$SecSettingsObserver;->reload()V

    .line 2285
    sget-object v4, Lcom/android/server/VibratorService;->LEVEL_TO_FORCE_MAGNITUDE:[I

    array-length v4, v4

    add-int/lit8 v2, v4, -0x1

    .line 2286
    .local v2, "touchForceMagnitudeMaxLevel":I
    sget-object v4, Lcom/android/server/VibratorService;->LEVEL_TO_FORCE_MAGNITUDE:[I

    aget v4, v4, v2

    iput v4, p0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    .line 2287
    if-ge v2, v8, :cond_6

    .line 2288
    const-string/jumbo v4, "VibratorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "touchForceMagnitudeMaxLevel : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    return-void

    .line 2267
    .end local v2    # "touchForceMagnitudeMaxLevel":I
    .restart local v0    # "magnitudeLevel":I
    :cond_3
    sget-object v4, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    aget v0, v4, v0

    goto :goto_0

    .line 2270
    :cond_4
    sget-object v4, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v0, v4, v0

    goto :goto_1

    .line 2273
    :cond_5
    sget-object v4, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v0, v4, v0

    goto :goto_2

    .line 2291
    .end local v0    # "magnitudeLevel":I
    .restart local v2    # "touchForceMagnitudeMaxLevel":I
    :cond_6
    iget-object v4, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-static {v4, v5, v2, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2292
    .restart local v0    # "magnitudeLevel":I
    if-le v0, v2, :cond_8

    .end local v0    # "magnitudeLevel":I
    :goto_3
    iput v0, p0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    .line 2251
    .end local v1    # "magnitudeMaxLevel":I
    .end local v2    # "touchForceMagnitudeMaxLevel":I
    .end local v3    # "touchMagnitudeMaxLevel":I
    :cond_7
    return-void

    .line 2292
    .restart local v0    # "magnitudeLevel":I
    .restart local v1    # "magnitudeMaxLevel":I
    .restart local v2    # "touchForceMagnitudeMaxLevel":I
    .restart local v3    # "touchMagnitudeMaxLevel":I
    :cond_8
    sget-object v4, Lcom/android/server/VibratorService;->LEVEL_TO_FORCE_MAGNITUDE:[I

    aget v0, v4, v0

    goto :goto_3
.end method

.method public resetMagnitude()V
    .locals 2

    .prologue
    .line 2179
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2181
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires VIBRATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2184
    :cond_0
    iget v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    if-gez v0, :cond_1

    .line 2185
    return-void

    .line 2187
    :cond_1
    iget v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    iput v0, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    .line 2188
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    .line 2178
    return-void
.end method

.method public semColorfulVibrate(ILjava/lang/String;[IILandroid/os/IBinder;IIILjava/lang/String;)V
    .locals 22
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "data"    # [I
    .param p4, "repeat"    # I
    .param p5, "token"    # Landroid/os/IBinder;
    .param p6, "magnitude"    # I
    .param p7, "usageHint"    # I
    .param p8, "type"    # I
    .param p9, "magnitudeType"    # Ljava/lang/String;

    .prologue
    .line 2054
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.VIBRATE"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 2056
    new-instance v6, Ljava/lang/SecurityException;

    const-string/jumbo v7, "Requires VIBRATE permission"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2059
    :cond_0
    if-gez p6, :cond_1

    sget-object v6, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_EXTRA:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v6}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p9

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2063
    :cond_1
    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    .line 2065
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 2068
    .local v20, "ident":J
    :try_start_0
    const-string/jumbo v6, "VibratorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "semColorfulVibrate - package: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, ", repeat: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2069
    const-string/jumbo v10, ", token: "

    .line 2068
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2069
    const-string/jumbo v10, ", mag: "

    .line 2068
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2069
    const-string/jumbo v10, ", usageHint : "

    .line 2068
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2069
    const-string/jumbo v10, ", def: "

    .line 2068
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2069
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    .line 2068
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    if-nez v6, :cond_6

    .line 2073
    const-string/jumbo v6, "VibratorService"

    const-string/jumbo v7, "This model can\'t support colorful."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    sget-boolean v6, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    if-eqz v6, :cond_4

    .line 2075
    if-nez p6, :cond_3

    .line 2076
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2077
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/VibratorService;->cancelVibrate(Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2159
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2079
    return-void

    .line 2060
    .end local v20    # "ident":J
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/android/server/VibratorService;->getMagnitude(Ljava/lang/String;)I

    move-result p6

    goto/16 :goto_0

    .line 2076
    .restart local v20    # "ident":J
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v6

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2158
    :catchall_1
    move-exception v6

    .line 2159
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2158
    throw v6

    .line 2081
    :cond_3
    const-wide/16 v8, 0x1e

    move-object/from16 v5, p0

    move/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v10, p7

    move-object/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p9

    :try_start_4
    invoke-direct/range {v5 .. v13}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;JILandroid/os/IBinder;ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2159
    :goto_1
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2091
    return-void

    .line 2083
    :cond_4
    :try_start_5
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    if-nez v6, :cond_5

    .line 2084
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2085
    :try_start_6
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/VibratorService;->cancelVibrate(Landroid/os/IBinder;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2159
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2087
    return-void

    .line 2084
    :catchall_2
    move-exception v7

    :try_start_8
    monitor-exit v6

    throw v7

    .line 2089
    :cond_5
    const-wide/16 v8, 0x1e

    move-object/from16 v5, p0

    move/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v10, p7

    move-object/from16 v11, p5

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;JILandroid/os/IBinder;)V

    goto :goto_1

    .line 2094
    :cond_6
    if-gtz p6, :cond_7

    .line 2095
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2096
    :try_start_9
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/VibratorService;->cancelVibrate(Landroid/os/IBinder;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 2159
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2098
    return-void

    .line 2095
    :catchall_3
    move-exception v7

    :try_start_b
    monitor-exit v6

    throw v7

    .line 2101
    :cond_7
    if-nez p3, :cond_8

    .line 2102
    const-string/jumbo v6, "VibratorService"

    const-string/jumbo v7, "semColorfulVibrate() : data is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 2159
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2103
    return-void

    .line 2106
    :cond_8
    :try_start_c
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->isColorfulDataFormat([I)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-result v6

    if-nez v6, :cond_9

    .line 2159
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2107
    return-void

    .line 2110
    :cond_9
    if-lez p4, :cond_a

    .line 2111
    :try_start_d
    const-string/jumbo v6, "VibratorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "semColorfulVibrate() : repeat("

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, ") is wrong."

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 2159
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2112
    return-void

    .line 2115
    :cond_a
    if-nez p5, :cond_b

    .line 2116
    :try_start_e
    const-string/jumbo v6, "VibratorService"

    const-string/jumbo v7, "semColorfulVibrate() : token is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 2159
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2117
    return-void

    .line 2120
    :cond_b
    :try_start_f
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->getMillisecondsFromColorfulData([I)J

    move-result-wide v8

    .line 2122
    .local v8, "millis":J
    const/4 v6, -0x1

    move/from16 v0, p8

    if-ne v0, v6, :cond_c

    .line 2123
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->getCustomPattern([I)[J

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/VibratorService;->getColorfulPattern([J)[J

    move-result-object v17

    .line 2127
    .local v17, "vibePattern":[J
    :goto_2
    move-object/from16 v0, v17

    array-length v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_d

    .line 2128
    const/4 v6, 0x0

    aget-wide v6, v17, v6

    const-wide/16 v10, 0x0

    cmp-long v6, v6, v10

    if-gez v6, :cond_d

    .line 2129
    const-string/jumbo v6, "VibratorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "This "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p8

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, " is not supported."

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 2159
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2130
    return-void

    .line 2125
    .end local v17    # "vibePattern":[J
    :cond_c
    :try_start_10
    move-object/from16 v0, p0

    move/from16 v1, p8

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->getCommonPattern(I)[J

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/VibratorService;->getColorfulPattern([J)[J

    move-result-object v17

    .restart local v17    # "vibePattern":[J
    goto :goto_2

    .line 2133
    :cond_d
    const/4 v6, -0x1

    move/from16 v0, p4

    if-le v0, v6, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p4

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/VibratorService;->isExecutablePattern([JILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 2137
    :cond_e
    new-instance v5, Lcom/android/server/VibratorService$Vibration;

    move-object/from16 v6, p0

    move-object/from16 v7, p5

    move/from16 v10, p7

    move/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p6

    move/from16 v14, p8

    move-object/from16 v15, p3

    move/from16 v16, p4

    move-object/from16 v18, p9

    invoke-direct/range {v5 .. v18}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;JIILjava/lang/String;II[II[JLjava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 2140
    .local v5, "vib":Lcom/android/server/VibratorService$Vibration;
    const/4 v6, 0x0

    :try_start_11
    move-object/from16 v0, p5

    invoke-interface {v0, v5, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 2145
    :try_start_12
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v7
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 2146
    :try_start_13
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 2147
    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 2148
    if-ltz p4, :cond_10

    .line 2149
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 2150
    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    .line 2156
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    :try_start_14
    monitor-exit v7
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 2159
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2053
    return-void

    .line 2159
    .end local v5    # "vib":Lcom/android/server/VibratorService$Vibration;
    :cond_f
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2134
    return-void

    .line 2141
    .restart local v5    # "vib":Lcom/android/server/VibratorService$Vibration;
    :catch_0
    move-exception v4

    .line 2159
    .local v4, "e":Landroid/os/RemoteException;
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2142
    return-void

    .line 2154
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_10
    :try_start_15
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    goto :goto_3

    .line 2145
    :catchall_4
    move-exception v6

    :try_start_16
    monitor-exit v7

    throw v6
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1
.end method

.method public semIsForceTouchSupported()Z
    .locals 3

    .prologue
    .line 723
    sget-boolean v0, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semIsForceTouchSupported() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    return v0
.end method

.method public semIsHapticSupported()Z
    .locals 3

    .prologue
    .line 718
    sget-boolean v0, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semIsHapticSupported() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_0
    sget-boolean v0, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    return v0
.end method

.method public setMagnitude(I)V
    .locals 2
    .param p1, "magnitude"    # I

    .prologue
    .line 2165
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2167
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires VIBRATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2169
    :cond_0
    if-gez p1, :cond_2

    .line 2170
    const/4 p1, 0x0

    .line 2174
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    iput v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    .line 2175
    iput p1, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    .line 2164
    return-void

    .line 2171
    :cond_2
    iget v0, p0, Lcom/android/server/VibratorService;->mMaxMagnitudeValue:I

    if-le p1, v0, :cond_1

    .line 2172
    iget p1, p0, Lcom/android/server/VibratorService;->mMaxMagnitudeValue:I

    goto :goto_0
.end method

.method public systemReady()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 616
    iget-object v1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/input/InputManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    iput-object v1, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    .line 617
    new-instance v1, Lcom/android/server/VibratorService$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/VibratorService$SettingsObserver;-><init>(Lcom/android/server/VibratorService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 619
    const-class v1, Landroid/os/PowerManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManagerInternal;

    iput-object v1, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 620
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 621
    new-instance v2, Lcom/android/server/VibratorService$3;

    invoke-direct {v2, p0}, Lcom/android/server/VibratorService$3;-><init>(Lcom/android/server/VibratorService;)V

    .line 620
    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 628
    iget-object v1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 629
    const-string/jumbo v2, "vibrate_input_devices"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 630
    iget-object v3, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 628
    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 632
    iget-object v1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/VibratorService$4;

    invoke-direct {v2, p0}, Lcom/android/server/VibratorService$4;-><init>(Lcom/android/server/VibratorService;)V

    .line 638
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.USER_SWITCHED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    .line 632
    invoke-virtual {v1, v2, v3, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 640
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    .line 644
    const-class v1, Lcom/android/server/vr/GearVrManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/GearVrManagerInternal;

    .line 645
    .local v0, "vrService":Lcom/android/server/vr/GearVrManagerInternal;
    if-eqz v0, :cond_0

    .line 646
    new-instance v1, Lcom/android/server/VibratorService$5;

    invoke-direct {v1, p0}, Lcom/android/server/VibratorService$5;-><init>(Lcom/android/server/VibratorService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/vr/GearVrManagerInternal;->registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    .line 615
    :goto_0
    return-void

    .line 662
    :cond_0
    const-string/jumbo v1, "VibratorService"

    const-string/jumbo v2, "HMT VibratorService failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public vibrate(ILjava/lang/String;JILandroid/os/IBinder;)V
    .locals 15
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "milliseconds"    # J
    .param p5, "usageHint"    # I
    .param p6, "token"    # Landroid/os/IBinder;

    .prologue
    .line 741
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.VIBRATE"

    invoke-virtual {v2, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 743
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v4, "Requires VIBRATE permission"

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 746
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    .line 750
    const-wide/16 v4, 0x0

    cmp-long v2, p3, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_2

    .line 751
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Lcom/android/server/VibratorService$Vibration;->hasLongerTimeout(J)Z

    move-result v2

    .line 750
    if-eqz v2, :cond_2

    .line 755
    :cond_1
    const-string/jumbo v2, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vibrate - package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mCurrentVibration.hasLongerTimeout(milliseconds) => true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    return-void

    .line 765
    :cond_2
    const-string/jumbo v2, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vibrate - package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", ms: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    new-instance v3, Lcom/android/server/VibratorService$Vibration;

    move-object v4, p0

    move-object/from16 v5, p6

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v3 .. v10}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;JIILjava/lang/String;)V

    .line 770
    .local v3, "vib":Lcom/android/server/VibratorService$Vibration;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 772
    .local v12, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 773
    :try_start_1
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 774
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 775
    invoke-direct {p0, v3}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 776
    invoke-direct {p0, v3}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 779
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 740
    return-void

    .line 772
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v4

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 778
    :catchall_1
    move-exception v2

    .line 779
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 778
    throw v2
.end method

.method public vibrateCommonPatternMagnitude(ILjava/lang/String;IILandroid/os/IBinder;IILjava/lang/String;)V
    .locals 16
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "repeat"    # I
    .param p5, "token"    # Landroid/os/IBinder;
    .param p6, "magnitude"    # I
    .param p7, "usageHint"    # I
    .param p8, "magnitudeType"    # Ljava/lang/String;

    .prologue
    .line 1905
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.VIBRATE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1907
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Requires VIBRATE permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1910
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    if-eqz v2, :cond_1

    .line 1911
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->getColorfulData(I)[I

    move-result-object v5

    .line 1912
    .local v5, "data":[I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v5}, Lcom/android/server/VibratorService;->hasColorfulData(I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p3

    move-object/from16 v11, p8

    .line 1913
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/VibratorService;->semColorfulVibrate(ILjava/lang/String;[IILandroid/os/IBinder;IIILjava/lang/String;)V

    .line 1914
    return-void

    .line 1918
    .end local v5    # "data":[I
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->getCommonPattern(I)[J

    move-result-object v9

    .line 1919
    .local v9, "vibePattern":[J
    array-length v2, v9

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 1920
    const/4 v2, 0x0

    aget-wide v2, v9, v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-gez v2, :cond_2

    .line 1921
    const-string/jumbo v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "This "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not supported."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    return-void

    :cond_2
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v10, p4

    move/from16 v11, p7

    move-object/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p3

    move-object/from16 v15, p8

    .line 1925
    invoke-virtual/range {v6 .. v15}, Lcom/android/server/VibratorService;->vibratePatternMagnitude(ILjava/lang/String;[JIILandroid/os/IBinder;IILjava/lang/String;)V

    .line 1904
    return-void
.end method

.method public vibrateMagnitude(ILjava/lang/String;JILandroid/os/IBinder;ILjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "milliseconds"    # J
    .param p5, "usageHint"    # I
    .param p6, "token"    # Landroid/os/IBinder;
    .param p7, "magnitude"    # I
    .param p8, "magnitudeType"    # Ljava/lang/String;

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1439
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires VIBRATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1442
    :cond_0
    if-gez p7, :cond_1

    sget-object v0, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_EXTRA:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v0}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1447
    :cond_1
    :goto_0
    const-string/jumbo v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vibrateMagnitude - package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1448
    const-string/jumbo v2, ", token: "

    .line 1447
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1448
    const-string/jumbo v2, ", mag: "

    .line 1447
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1448
    const-string/jumbo v2, ", def: "

    .line 1447
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1448
    iget v2, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    .line 1447
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    const/4 v0, -0x1

    if-ne p7, v0, :cond_4

    .line 1451
    iget v0, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    if-nez v0, :cond_3

    .line 1452
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v0

    .line 1453
    :try_start_0
    invoke-virtual {p0, p6}, Lcom/android/server/VibratorService;->cancelVibrate(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 1455
    return-void

    .line 1443
    :cond_2
    invoke-virtual {p0, p8}, Lcom/android/server/VibratorService;->getMagnitude(Ljava/lang/String;)I

    move-result p7

    goto :goto_0

    .line 1452
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 1457
    :cond_3
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;JILandroid/os/IBinder;)V

    .line 1436
    :goto_1
    return-void

    .line 1459
    :cond_4
    if-nez p7, :cond_5

    .line 1460
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v0

    .line 1461
    :try_start_1
    invoke-virtual {p0, p6}, Lcom/android/server/VibratorService;->cancelVibrate(Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    .line 1463
    return-void

    .line 1460
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1

    .line 1465
    :cond_5
    invoke-direct/range {p0 .. p8}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;JILandroid/os/IBinder;ILjava/lang/String;)V

    goto :goto_1
.end method

.method public vibratePattern(ILjava/lang/String;[JIILandroid/os/IBinder;)V
    .locals 16
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pattern"    # [J
    .param p4, "repeat"    # I
    .param p5, "usageHint"    # I
    .param p6, "token"    # Landroid/os/IBinder;

    .prologue
    .line 842
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.VIBRATE"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 844
    new-instance v5, Ljava/lang/SecurityException;

    const-string/jumbo v6, "Requires VIBRATE permission"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 847
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    .line 849
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 861
    .local v14, "identity":J
    if-eqz p3, :cond_1

    :try_start_0
    move-object/from16 v0, p3

    array-length v5, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v5, :cond_2

    .line 893
    :cond_1
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 864
    return-void

    .line 862
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->isAll0([J)Z

    move-result v5

    .line 861
    if-nez v5, :cond_1

    .line 863
    move-object/from16 v0, p3

    array-length v5, v0

    move/from16 v0, p4

    if-ge v0, v5, :cond_1

    if-eqz p6, :cond_1

    .line 867
    const/4 v5, -0x1

    move/from16 v0, p4

    if-le v0, v5, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/VibratorService;->isExecutablePattern([JILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 871
    :cond_3
    new-instance v4, Lcom/android/server/VibratorService$Vibration;

    move-object/from16 v5, p0

    move-object/from16 v6, p6

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p1

    move-object/from16 v11, p2

    invoke-direct/range {v4 .. v11}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JIIILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 873
    .local v4, "vib":Lcom/android/server/VibratorService$Vibration;
    const/4 v5, 0x0

    :try_start_2
    move-object/from16 v0, p6

    invoke-interface {v0, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 878
    :try_start_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 879
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 880
    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 881
    if-ltz p4, :cond_5

    .line 882
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 883
    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    .line 889
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 893
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 841
    return-void

    .line 893
    .end local v4    # "vib":Lcom/android/server/VibratorService$Vibration;
    :cond_4
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 868
    return-void

    .line 874
    .restart local v4    # "vib":Lcom/android/server/VibratorService$Vibration;
    :catch_0
    move-exception v12

    .line 893
    .local v12, "e":Landroid/os/RemoteException;
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 875
    return-void

    .line 887
    .end local v12    # "e":Landroid/os/RemoteException;
    :cond_5
    :try_start_6
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 878
    :catchall_0
    move-exception v5

    :try_start_7
    monitor-exit v6

    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 892
    .end local v4    # "vib":Lcom/android/server/VibratorService$Vibration;
    :catchall_1
    move-exception v5

    .line 893
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 892
    throw v5
.end method

.method public vibratePatternMagnitude(ILjava/lang/String;[JIILandroid/os/IBinder;IILjava/lang/String;)V
    .locals 20
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pattern"    # [J
    .param p4, "repeat"    # I
    .param p5, "usageHint"    # I
    .param p6, "token"    # Landroid/os/IBinder;
    .param p7, "magnitude"    # I
    .param p8, "type"    # I
    .param p9, "magnitudeType"    # Ljava/lang/String;

    .prologue
    .line 1471
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.VIBRATE"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 1473
    new-instance v5, Ljava/lang/SecurityException;

    const-string/jumbo v6, "Requires VIBRATE permission"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1476
    :cond_0
    if-gez p7, :cond_1

    sget-object v5, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_EXTRA:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v5}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p9

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1480
    :cond_1
    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    .line 1482
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 1494
    .local v18, "identity":J
    if-eqz p3, :cond_2

    :try_start_0
    move-object/from16 v0, p3

    array-length v5, v0

    if-nez v5, :cond_5

    .line 1497
    :cond_2
    const-string/jumbo v5, "VibratorService"

    const-string/jumbo v6, "vibratePatternMagnitude() is failed by illegal argument."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    if-eqz p3, :cond_3

    .line 1499
    const-string/jumbo v5, "VibratorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "vibratePatternMagnitude() - pattern.length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", repeat = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    :cond_3
    const-string/jumbo v5, "VibratorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "vibratePatternMagnitude() - token = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1552
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1502
    return-void

    .line 1477
    .end local v18    # "identity":J
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/android/server/VibratorService;->getMagnitude(Ljava/lang/String;)I

    move-result p7

    goto :goto_0

    .line 1495
    .restart local v18    # "identity":J
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->isAll0([J)Z

    move-result v5

    .line 1494
    if-nez v5, :cond_2

    .line 1496
    move-object/from16 v0, p3

    array-length v5, v0

    move/from16 v0, p4

    if-ge v0, v5, :cond_2

    if-eqz p6, :cond_2

    .line 1505
    const/4 v5, -0x1

    move/from16 v0, p4

    if-le v0, v5, :cond_6

    const/4 v5, -0x1

    move/from16 v0, p8

    if-ne v0, v5, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/VibratorService;->isExecutablePattern([JILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1511
    :cond_6
    const-string/jumbo v5, "VibratorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "vibratePatternMagnitude - package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", repeat: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1512
    const-string/jumbo v7, ", token: "

    .line 1511
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1512
    const-string/jumbo v7, ", mag: "

    .line 1511
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1512
    const-string/jumbo v7, ", def: "

    .line 1511
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1512
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    .line 1511
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    const/4 v5, -0x1

    move/from16 v0, p7

    if-ne v0, v5, :cond_9

    .line 1515
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    if-nez v5, :cond_8

    .line 1516
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1517
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/android/server/VibratorService;->cancelVibrate(Landroid/os/IBinder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1552
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1519
    return-void

    .line 1552
    :cond_7
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1506
    return-void

    .line 1516
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit v5

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1551
    :catchall_1
    move-exception v5

    .line 1552
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1551
    throw v5

    .line 1521
    :cond_8
    :try_start_5
    new-instance v4, Lcom/android/server/VibratorService$Vibration;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->getCommonPatternFrequency([J)I

    move-result v12

    move-object/from16 v5, p0

    move-object/from16 v6, p6

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v13, p8

    invoke-direct/range {v4 .. v13}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JIIILjava/lang/String;II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1532
    .local v4, "vib":Lcom/android/server/VibratorService$Vibration;
    :goto_1
    const/4 v5, 0x0

    :try_start_6
    move-object/from16 v0, p6

    invoke-interface {v0, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1537
    :try_start_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1538
    :try_start_8
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 1539
    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 1540
    if-ltz p4, :cond_b

    .line 1541
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1542
    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    .line 1548
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1552
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1470
    return-void

    .line 1523
    .end local v4    # "vib":Lcom/android/server/VibratorService$Vibration;
    :cond_9
    if-nez p7, :cond_a

    .line 1524
    :try_start_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1525
    :try_start_b
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/android/server/VibratorService;->cancelVibrate(Landroid/os/IBinder;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1552
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1527
    return-void

    .line 1524
    :catchall_2
    move-exception v6

    :try_start_d
    monitor-exit v5

    throw v6

    .line 1529
    :cond_a
    new-instance v4, Lcom/android/server/VibratorService$Vibration;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->getCommonPatternFrequency([J)I

    move-result v13

    move-object/from16 v5, p0

    move-object/from16 v6, p6

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p7

    move/from16 v14, p8

    move-object/from16 v15, p9

    invoke-direct/range {v4 .. v15}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JIIILjava/lang/String;IIILjava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .restart local v4    # "vib":Lcom/android/server/VibratorService$Vibration;
    goto :goto_1

    .line 1533
    :catch_0
    move-exception v16

    .line 1552
    .local v16, "e":Landroid/os/RemoteException;
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1534
    return-void

    .line 1546
    .end local v16    # "e":Landroid/os/RemoteException;
    :cond_b
    :try_start_e
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_2

    .line 1537
    :catchall_3
    move-exception v5

    :try_start_f
    monitor-exit v6

    throw v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
.end method

.method public writeToFile(JI)Z
    .locals 11
    .param p1, "offset"    # J
    .param p3, "value"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2382
    const/4 v5, 0x0

    .line 2383
    .local v5, "randomAccessFile":Ljava/io/RandomAccessFile;
    new-instance v4, Ljava/io/File;

    const-string/jumbo v7, "/dev/block/param"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2385
    .local v4, "file":Ljava/io/File;
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v7

    if-nez v7, :cond_0

    .line 2386
    const-string/jumbo v7, "VibratorService"

    const-string/jumbo v8, "It\'s not Factory Binary"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    return v9

    .line 2390
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2391
    const-string/jumbo v7, "VibratorService"

    const-string/jumbo v8, "/dev/block/param is not found"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    return v9

    .line 2397
    :cond_1
    :try_start_0
    new-instance v6, Ljava/io/RandomAccessFile;

    new-instance v7, Ljava/io/File;

    const-string/jumbo v8, "/dev/block/param"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "rw"

    invoke-direct {v6, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2403
    .end local v5    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .local v6, "randomAccessFile":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v6, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2405
    const/4 v7, 0x4

    new-array v0, v7, [B

    .line 2406
    .local v0, "byteData":[B
    and-int/lit16 v7, p3, 0xff

    int-to-byte v7, v7

    const/4 v8, 0x0

    aput-byte v7, v0, v8

    .line 2407
    shr-int/lit8 v7, p3, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    const/4 v8, 0x1

    aput-byte v7, v0, v8

    .line 2408
    shr-int/lit8 v7, p3, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    const/4 v8, 0x2

    aput-byte v7, v0, v8

    .line 2409
    shr-int/lit8 v7, p3, 0x18

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    const/4 v8, 0x3

    aput-byte v7, v0, v8

    .line 2411
    const/4 v7, 0x0

    aget-byte v7, v0, v7

    invoke-virtual {v6, v7}, Ljava/io/RandomAccessFile;->write(I)V

    .line 2412
    const/4 v7, 0x1

    aget-byte v7, v0, v7

    invoke-virtual {v6, v7}, Ljava/io/RandomAccessFile;->write(I)V

    .line 2413
    const/4 v7, 0x2

    aget-byte v7, v0, v7

    invoke-virtual {v6, v7}, Ljava/io/RandomAccessFile;->write(I)V

    .line 2414
    const/4 v7, 0x3

    aget-byte v7, v0, v7

    invoke-virtual {v6, v7}, Ljava/io/RandomAccessFile;->write(I)V

    .line 2416
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 2427
    return v10

    .line 2398
    .end local v0    # "byteData":[B
    .end local v6    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v5    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v1

    .line 2399
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2400
    return v9

    .line 2417
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 2418
    .end local v5    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .local v2, "e":Ljava/io/IOException;
    :goto_0
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 2420
    :try_start_3
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2424
    :goto_1
    return v9

    .line 2421
    :catch_2
    move-exception v3

    .line 2422
    .local v3, "err":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2417
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "err":Ljava/lang/Exception;
    .restart local v6    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .local v5, "randomAccessFile":Ljava/io/RandomAccessFile;
    goto :goto_0
.end method
