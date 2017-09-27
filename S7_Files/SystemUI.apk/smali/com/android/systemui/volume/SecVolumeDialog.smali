.class public Lcom/android/systemui/volume/SecVolumeDialog;
.super Ljava/lang/Object;
.source "SecVolumeDialog.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/SecVolumeDialog$1;,
        Lcom/android/systemui/volume/SecVolumeDialog$2;,
        Lcom/android/systemui/volume/SecVolumeDialog$3;,
        Lcom/android/systemui/volume/SecVolumeDialog$4;,
        Lcom/android/systemui/volume/SecVolumeDialog$5;,
        Lcom/android/systemui/volume/SecVolumeDialog$6;,
        Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;,
        Lcom/android/systemui/volume/SecVolumeDialog$Callback;,
        Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;,
        Lcom/android/systemui/volume/SecVolumeDialog$H;,
        Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;,
        Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;
    }
.end annotation


# static fields
.field private static final M_LATTE:Z

.field private static SUPPORT_DEFAULTSTREAM_NOTIFICATION:Z

.field private static final TAG:Ljava/lang/String;

.field private static mActiveStreamChanged:Z

.field public static mIsKnoxDesktopMode:Z

.field private static mIsKnoxDesktopModeChanged:Z

.field private static mIsLastKnoxDesktopMode:Z

.field public static mIsSafetyWarningShowing:Z

.field private static mRemoteControlCurrentVolume:I

.field private static mRemoteControlMaxVolume:I

.field public static mShowing:Z


# instance fields
.field private final DENSITY_XXHDPI:D

.field private final STREAM_MULTI_SOUND:I

.field private final STREAM_SMART_VIEW:I

.field private mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mAccessibility:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

.field private final mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveChildIndex:I

.field private mActiveItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

.field private mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

.field private final mActiveSliderTint:Landroid/content/res/ColorStateList;

.field private mActiveStream:I

.field private mAfterHeight:I

.field private mApp:Lcom/android/systemui/SystemUIApplication;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mAutomute:Z

.field private mBTDeviceName:Ljava/lang/String;

.field private mBTScoDeviceName:Ljava/lang/String;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBtScoDevice:Landroid/bluetooth/BluetoothDevice;

.field private mCallback:Lcom/android/systemui/volume/SecVolumeDialog$Callback;

.field private final mClickExpand:Landroid/view/View$OnClickListener;

.field private mCollapseTime:J

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/systemui/volume/VolumeDialogController;

.field private final mControllerCallbackH:Lcom/android/systemui/volume/VolumeDialogController$Callbacks;

.field private mCoverBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mCoverOpened:Z

.field private mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private mCoverType:I

.field private mCurSmartViewVol:I

.field private mCurrentWindowWidth:I

.field private mDensity:I

.field private mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

.field private mDialogContentView:Landroid/view/ViewGroup;

.field private mDialogDndView:Landroid/view/ViewGroup;

.field private mDialogView:Landroid/view/ViewGroup;

.field private final mDisabledAlpha:F

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDivider:Landroid/view/View;

.field private final mDynamic:Landroid/util/SparseBooleanArray;

.field private mEarProtectLevel:I

.field private mEarProtectLevelForMultiSound:I

.field private mEarProtectLevelforLockScreen:I

.field private mEarProtectLimit:I

.field private mExpandButton:Landroid/widget/ImageButton;

.field private mExpandButtonAnimationDuration:I

.field private mExpandButtonAnimationRunning:Z

.field private mExpandButtonColor:Landroid/content/res/ColorStateList;

.field private mExpandButtonDefaultColor:Landroid/content/res/ColorStateList;

.field private mExpandCollapseAnimating:Z

.field private mExpanded:Z

.field private mExtraForRingerMode:Ljava/lang/String;

.field private mGhostView:Landroid/view/View;

.field private final mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

.field mHardwareAccelerated:Z

.field private mHfp:Landroid/bluetooth/BluetoothHeadset;

.field private mHovering:Z

.field private mIconActiveColor:Landroid/content/res/ColorStateList;

.field private mIconActiveDefaultColor:Landroid/content/res/ColorStateList;

.field private mIconDisabledColor:Landroid/content/res/ColorStateList;

.field private mIconEarShockColor:Landroid/content/res/ColorStateList;

.field private mIconEarShockDefaultColor:Landroid/content/res/ColorStateList;

.field private mIconMutedColor:Landroid/content/res/ColorStateList;

.field private mIconMutedDefaultColor:Landroid/content/res/ColorStateList;

.field private final mInactiveSliderTint:Landroid/content/res/ColorStateList;

.field private mIsSafeMediaVolumeDeviceOn:Z

.field private mIsSafeMediaVolumeDeviceOnForMultiSound:Z

.field private mIsShowingSCoverWarning:Z

.field private final mKeyguard:Landroid/app/KeyguardManager;

.field private final mLayoutTransition:Landroid/animation/LayoutTransition;

.field private mLockScreenBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

.field private mLockScreenDialogContentView:Landroid/view/ViewGroup;

.field private mLockScreenDialogView:Landroid/view/ViewGroup;

.field private mMaxSmartViewVol:I

.field private mMinSmartViewVol:I

.field private mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mPendingRecheckAll:Z

.field private mPendingStateChanged:Z

.field private mPinDevice:I

.field mPrevSystemRendererDisabled:Z

.field private mProgressBgColor:Landroid/content/res/ColorStateList;

.field private mProgressBgDefaultColor:Landroid/content/res/ColorStateList;

.field private mProgressColor:Landroid/content/res/ColorStateList;

.field private mProgressDefaultColor:Landroid/content/res/ColorStateList;

.field private mRowHeight:I

.field private final mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;",
            ">;"
        }
    .end annotation
.end field

.field private final mRowsLockScreen:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;",
            ">;"
        }
    .end annotation
.end field

.field private mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

.field private final mSafetyWarningLock:Ljava/lang/Object;

.field private mScover:Lcom/samsung/android/sdk/cover/Scover;

.field mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mSemDisplayVolumeListener:Landroid/hardware/display/SemDisplayVolumeListener;

.field private mShowFullZen:Z

.field private mShowHeaders:Z

.field private mSilentMode:Z

.field private mSoundID:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private final mSpTexts:Lcom/android/systemui/volume/SpTexts;

.field private mState:Lcom/android/systemui/volume/VolumeDialogController$State;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mThumbColor:Landroid/content/res/ColorStateList;

.field private mThumbDefaultColor:Landroid/content/res/ColorStateList;

.field private mThumbDisabledColor:Landroid/content/res/ColorStateList;

.field private mThumbDisabledDefaultColor:Landroid/content/res/ColorStateList;

.field private mTopOffset:I

.field private mValueForHwSwKey:J

.field private mVisibleRowIndex:I

.field private mVoiceCapable:Z

.field private mVolumeDnDToast:Landroid/widget/Toast;

.field private mVolumeLimiterDialog:Landroid/app/AlertDialog;

.field private mVolumePanelBgColor:Landroid/content/res/ColorStateList;

.field private mVolumePanelBgDefaultColor:Landroid/content/res/ColorStateList;

.field private mVolumeTitleColor:Landroid/content/res/ColorStateList;

.field private mVolumeTitleDefaultColor:Landroid/content/res/ColorStateList;

.field private final mWindowType:I

.field private mZenMode:I

.field private final mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private sCoverTopOffset:I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/volume/SecVolumeDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDensity:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationRunning:Z

    return v0
.end method

.method static synthetic -get17(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandCollapseAnimating:Z

    return v0
.end method

.method static synthetic -get18(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    return v0
.end method

.method static synthetic -get19(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$H;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/volume/SecVolumeDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveChildIndex:I

    return v0
.end method

.method static synthetic -get20()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsKnoxDesktopModeChanged:Z

    return v0
.end method

.method static synthetic -get21()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsLastKnoxDesktopMode:Z

    return v0
.end method

.method static synthetic -get22(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsShowingSCoverWarning:Z

    return v0
.end method

.method static synthetic -get23(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/systemui/volume/SecVolumeDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMaxSmartViewVol:I

    return v0
.end method

.method static synthetic -get25(Lcom/android/systemui/volume/SecVolumeDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMinSmartViewVol:I

    return v0
.end method

.method static synthetic -get26(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogMotion;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    return-object v0
.end method

.method static synthetic -get27(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPendingRecheckAll:Z

    return v0
.end method

.method static synthetic -get28(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPendingStateChanged:Z

    return v0
.end method

.method static synthetic -get29(Lcom/android/systemui/volume/SecVolumeDialog;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    return-object v0
.end method

.method static synthetic -get30(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SafetyWarningDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    return-object v0
.end method

.method static synthetic -get31(Lcom/android/systemui/volume/SecVolumeDialog;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get32(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/samsung/android/sdk/cover/Scover;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    return-object v0
.end method

.method static synthetic -get33(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSilentMode:Z

    return v0
.end method

.method static synthetic -get34(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SpTexts;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    return-object v0
.end method

.method static synthetic -get35(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    return-object v0
.end method

.method static synthetic -get36(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVoiceCapable:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/samsung/android/sdk/cover/ScoverManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/volume/SecVolumeDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    return-object p1
.end method

.method static synthetic -set10(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandCollapseAnimating:Z

    return p1
.end method

.method static synthetic -set11(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHfp:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic -set12(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHovering:Z

    return p1
.end method

.method static synthetic -set13(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsKnoxDesktopModeChanged:Z

    return p0
.end method

.method static synthetic -set14(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsLastKnoxDesktopMode:Z

    return p0
.end method

.method static synthetic -set15(Lcom/android/systemui/volume/SecVolumeDialog;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMaxSmartViewVol:I

    return p1
.end method

.method static synthetic -set16(Lcom/android/systemui/volume/SecVolumeDialog;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMinSmartViewVol:I

    return p1
.end method

.method static synthetic -set17(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPendingRecheckAll:Z

    return p1
.end method

.method static synthetic -set18(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPendingStateChanged:Z

    return p1
.end method

.method static synthetic -set19(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SafetyWarningDialog;)Lcom/android/systemui/volume/SafetyWarningDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/volume/SecVolumeDialog;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAfterHeight:I

    return p1
.end method

.method static synthetic -set20(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeDnDToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/systemui/volume/SecVolumeDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mBTDeviceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/systemui/volume/SecVolumeDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mBTScoDeviceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/volume/SecVolumeDialog;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    return p1
.end method

.method static synthetic -set7(Lcom/android/systemui/volume/SecVolumeDialog;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCurSmartViewVol:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/systemui/volume/SecVolumeDialog;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDensity:I

    return p1
.end method

.method static synthetic -set9(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/samsung/android/desktopmode/SemDesktopModeManager;)Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/animation/AnimatorSet;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->createCollapseExpandAnim()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z
    .locals 1
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p2, "isActive"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/SecVolumeDialog;->isVisibleH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/systemui/volume/SecVolumeDialog;Z)V
    .locals 0
    .param p1, "expanded"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->setExpandedH(Z)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/systemui/volume/SecVolumeDialog;IZ)V
    .locals 0
    .param p1, "stream"    # I
    .param p2, "important"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamImportantH(IZ)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/systemui/volume/SecVolumeDialog;I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->showH(I)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/systemui/volume/SecVolumeDialog;I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->showSafetyWarningH(I)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->showVolumeLimiterDialog()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateDialogBottomMarginH()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateExpandedWindowHeightH()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateWindowWidthH()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Landroid/widget/SeekBar;I)I
    .locals 1
    .param p0, "seekBar"    # Landroid/widget/SeekBar;
    .param p1, "progress"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(I)I
    .locals 1
    .param p0, "progress"    # I

    .prologue
    invoke-static {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getImpliedMediaVolumeLevel(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->doRefresh()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->initDialog()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->onDismissSafeVolumeWarning()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/VolumeDialogController$State;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/volume/VolumeDialogController$State;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->onStateChangedH(Lcom/android/systemui/volume/VolumeDialogController$State;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 0
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->recheckH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 171
    const-class v0, Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    .line 370
    sput-boolean v1, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafetyWarningShowing:Z

    .line 376
    sput-boolean v1, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStreamChanged:Z

    .line 413
    sput-boolean v1, Lcom/android/systemui/volume/SecVolumeDialog;->mIsKnoxDesktopMode:Z

    .line 414
    sput-boolean v1, Lcom/android/systemui/volume/SecVolumeDialog;->mIsLastKnoxDesktopMode:Z

    .line 415
    sput-boolean v1, Lcom/android/systemui/volume/SecVolumeDialog;->mIsKnoxDesktopModeChanged:Z

    .line 425
    const-string/jumbo v0, "latte"

    const-string/jumbo v1, "ro.build.scafe"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->M_LATTE:Z

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/volume/SecVolumeDialog$Callback;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowType"    # I
    .param p3, "controller"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p4, "zenModeController"    # Lcom/android/systemui/statusbar/policy/ZenModeController;
    .param p5, "callback"    # Lcom/android/systemui/volume/SecVolumeDialog$Callback;

    .prologue
    .line 498
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v12, Lcom/android/systemui/volume/SecVolumeDialog$H;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/volume/SecVolumeDialog$H;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    .line 199
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    .line 208
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mRowsLockScreen:Ljava/util/List;

    .line 210
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevelforLockScreen:I

    .line 215
    new-instance v12, Landroid/util/SparseBooleanArray;

    invoke-direct {v12}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    .line 228
    new-instance v12, Ljava/lang/Object;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    .line 230
    new-instance v12, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mAccessibility:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    .line 248
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowHeaders:Z

    .line 250
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mAutomute:Z

    .line 252
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mSilentMode:Z

    .line 270
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mHovering:Z

    .line 274
    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->DENSITY_XXHDPI:D

    .line 280
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 285
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundID:I

    .line 298
    const/16 v12, 0xa

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->STREAM_SMART_VIEW:I

    .line 300
    const/16 v12, 0xb

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->STREAM_MULTI_SOUND:I

    .line 347
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    .line 349
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 351
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    .line 353
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    .line 355
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsShowingSCoverWarning:Z

    .line 359
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mTopOffset:I

    .line 361
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->sCoverTopOffset:I

    .line 363
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    .line 368
    const v12, 0x3ecccccd    # 0.4f

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mDisabledAlpha:F

    .line 400
    const-string/jumbo v12, "Ringtone"

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mExtraForRingerMode:Ljava/lang/String;

    .line 402
    const-wide/16 v12, 0x3e8

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mValueForHwSwKey:J

    .line 412
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 418
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevel:I

    .line 421
    sget-boolean v12, Landroid/view/ThreadedRenderer;->sSystemRendererDisabled:Z

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mPrevSystemRendererDisabled:Z

    .line 423
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mHardwareAccelerated:Z

    .line 433
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveChildIndex:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mVisibleRowIndex:I

    .line 439
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mGhostView:Landroid/view/View;

    .line 445
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mCurrentWindowWidth:I

    .line 447
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    .line 467
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOn:Z

    .line 469
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    .line 475
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mCurSmartViewVol:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mMinSmartViewVol:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mMaxSmartViewVol:I

    .line 477
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mPinDevice:I

    .line 479
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevelForMultiSound:I

    .line 481
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLimit:I

    .line 490
    new-instance v12, Lcom/android/systemui/volume/SecVolumeDialog$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/volume/SecVolumeDialog$1;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 2301
    new-instance v12, Lcom/android/systemui/volume/SecVolumeDialog$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/volume/SecVolumeDialog$2;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mControllerCallbackH:Lcom/android/systemui/volume/VolumeDialogController$Callbacks;

    .line 2638
    new-instance v12, Lcom/android/systemui/volume/SecVolumeDialog$3;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/volume/SecVolumeDialog$3;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mClickExpand:Landroid/view/View$OnClickListener;

    .line 3340
    new-instance v12, Lcom/android/systemui/volume/SecVolumeDialog$4;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/volume/SecVolumeDialog$4;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 3578
    new-instance v12, Lcom/android/systemui/volume/SecVolumeDialog$5;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/volume/SecVolumeDialog$5;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 3601
    new-instance v12, Lcom/android/systemui/volume/SecVolumeDialog$6;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/volume/SecVolumeDialog$6;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 500
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    .line 501
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    .line 502
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumeDialog;->mCallback:Lcom/android/systemui/volume/SecVolumeDialog$Callback;

    .line 503
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumeDialog;->mWindowType:I

    .line 504
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumeDialog;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 505
    new-instance v12, Lcom/android/systemui/volume/SpTexts;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13}, Lcom/android/systemui/volume/SpTexts;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    .line 506
    const-string/jumbo v12, "keyguard"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/KeyguardManager;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mKeyguard:Landroid/app/KeyguardManager;

    .line 507
    const-string/jumbo v12, "audio"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    .line 508
    const-class v12, Landroid/app/NotificationManager;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mNotificationManager:Landroid/app/NotificationManager;

    .line 510
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 511
    const v13, 0x112005c

    .line 510
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x0

    .line 509
    :goto_1
    sput-boolean v12, Lcom/android/systemui/volume/SecVolumeDialog;->SUPPORT_DEFAULTSTREAM_NOTIFICATION:Z

    .line 512
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "accessibility"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    .line 513
    new-instance v12, Landroid/animation/LayoutTransition;

    invoke-direct {v12}, Landroid/animation/LayoutTransition;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 514
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mLayoutTransition:Landroid/animation/LayoutTransition;

    new-instance v13, Landroid/animation/ValueAnimator;

    invoke-direct {v13}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v14

    const-wide/16 v16, 0x2

    div-long v14, v14, v16

    invoke-virtual {v12, v14, v15}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 516
    new-instance v12, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    .line 518
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v12}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    .line 519
    .local v10, "window":Landroid/view/Window;
    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Landroid/view/Window;->requestFeature(I)Z

    .line 520
    new-instance v12, Landroid/graphics/drawable/ColorDrawable;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v10, v12}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 521
    const/4 v12, 0x2

    invoke-virtual {v10, v12}, Landroid/view/Window;->clearFlags(I)V

    .line 522
    const v12, 0x10c0128

    invoke-virtual {v10, v12}, Landroid/view/Window;->addFlags(I)V

    .line 528
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 529
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 530
    .local v7, "res":Landroid/content/res/Resources;
    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 531
    .local v6, "lp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mWindowType:I

    iput v12, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 532
    const/4 v12, -0x3

    iput v12, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 533
    const-class v12, Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 534
    const/16 v12, 0x31

    iput v12, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 535
    const v12, 0x7f0d02d6

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 536
    const/4 v12, -0x1

    iput v12, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 537
    invoke-virtual {v10, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 538
    const/16 v12, 0x30

    invoke-virtual {v10, v12}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 541
    new-instance v12, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    .line 542
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v12}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 543
    .local v5, "lockscreen_window":Landroid/view/Window;
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Landroid/view/Window;->requestFeature(I)Z

    .line 544
    new-instance v12, Landroid/graphics/drawable/ColorDrawable;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v12}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 545
    const/4 v12, 0x2

    invoke-virtual {v5, v12}, Landroid/view/Window;->clearFlags(I)V

    .line 546
    const v12, 0x10c0128

    invoke-virtual {v5, v12}, Landroid/view/Window;->addFlags(I)V

    .line 552
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 553
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 554
    .local v4, "lockscreen_lp":Landroid/view/WindowManager$LayoutParams;
    move/from16 v0, p2

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 555
    const/4 v12, -0x3

    iput v12, v4, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 556
    const/16 v12, 0x31

    iput v12, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 557
    const/4 v12, -0x1

    iput v12, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 558
    const/4 v12, -0x1

    iput v12, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 559
    invoke-virtual {v5, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 560
    const/16 v12, 0x30

    invoke-virtual {v5, v12}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 563
    const v12, 0x7f0b009e

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/volume/SecVolumeDialog;->loadColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveSliderTint:Landroid/content/res/ColorStateList;

    .line 564
    const v12, 0x7f0b00eb

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/volume/SecVolumeDialog;->loadColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mInactiveSliderTint:Landroid/content/res/ColorStateList;

    .line 565
    const v12, 0x7f0b0117

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/volume/SecVolumeDialog;->loadColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconDisabledColor:Landroid/content/res/ColorStateList;

    .line 585
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/systemui/volume/Util;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mVoiceCapable:Z

    .line 587
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mHardwareAccelerated:Z

    if-nez v12, :cond_0

    .line 588
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v12}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    .line 589
    .local v11, "wlp":Landroid/view/WindowManager$LayoutParams;
    iget v12, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v12, v12, 0x2

    iput v12, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 590
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v12}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 593
    .end local v11    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumeDialog;->initDialog()V

    .line 595
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mAccessibility:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    invoke-virtual {v12}, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->init()V

    .line 597
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mControllerCallbackH:Lcom/android/systemui/volume/VolumeDialogController$Callbacks;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Lcom/android/systemui/volume/VolumeDialogController;->addCallback(Lcom/android/systemui/volume/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    .line 598
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/volume/VolumeDialogController;->getState()V

    .line 599
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const-string/jumbo v14, "sysui_show_full_zen"

    const/4 v15, 0x0

    aput-object v14, v13, v15

    move-object/from16 v0, p0

    invoke-virtual {v12, v0, v13}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 601
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 602
    .local v3, "currentConfig":Landroid/content/res/Configuration;
    iget v12, v3, Landroid/content/res/Configuration;->densityDpi:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mDensity:I

    .line 605
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumeDialog;->makeSound()V

    .line 608
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateTintColor()V

    .line 609
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateDefaultTintColor()V

    .line 611
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumeDialog;->refreshMorebuttonTintColor()V

    .line 613
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "row$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 614
    .local v8, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/systemui/volume/SecVolumeDialog;->refreshResourceTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    goto :goto_2

    .line 423
    .end local v3    # "currentConfig":Landroid/content/res/Configuration;
    .end local v4    # "lockscreen_lp":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "lockscreen_window":Landroid/view/Window;
    .end local v6    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v7    # "res":Landroid/content/res/Resources;
    .end local v8    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .end local v9    # "row$iterator":Ljava/util/Iterator;
    .end local v10    # "window":Landroid/view/Window;
    :cond_1
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 510
    :cond_2
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 619
    .restart local v3    # "currentConfig":Landroid/content/res/Configuration;
    .restart local v4    # "lockscreen_lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v5    # "lockscreen_window":Landroid/view/Window;
    .restart local v6    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v7    # "res":Landroid/content/res/Resources;
    .restart local v9    # "row$iterator":Ljava/util/Iterator;
    .restart local v10    # "window":Landroid/view/Window;
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mRowsLockScreen:Ljava/util/List;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 620
    .restart local v8    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/systemui/volume/SecVolumeDialog;->refreshLockScreenDialogResourceTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    goto :goto_3

    .line 622
    .end local v8    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumeDialog;->registerLockScreenReceiver()V

    .line 625
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v12, v13}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 628
    new-instance v12, Lcom/android/systemui/volume/SecVolumeDialog$7;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/volume/SecVolumeDialog$7;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    .line 650
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/volume/SecVolumeDialog;->initCoverManager(Landroid/content/Context;)V

    .line 651
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v12, v13}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 652
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumeDialog;->registerCoverReceiver()V

    .line 654
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/SystemUIApplication;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mApp:Lcom/android/systemui/SystemUIApplication;

    .line 655
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mApp:Lcom/android/systemui/SystemUIApplication;

    const-class v13, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v12, v13}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 657
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 658
    .local v2, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v2, :cond_5

    .line 660
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 661
    const/4 v14, 0x2

    .line 660
    invoke-virtual {v2, v12, v13, v14}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 663
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 664
    const/4 v14, 0x1

    .line 663
    invoke-virtual {v2, v12, v13, v14}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 667
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "display"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/display/DisplayManager;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 668
    new-instance v12, Lcom/android/systemui/volume/SecVolumeDialog$8;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/volume/SecVolumeDialog$8;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mSemDisplayVolumeListener:Landroid/hardware/display/SemDisplayVolumeListener;

    .line 702
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mSemDisplayVolumeListener:Landroid/hardware/display/SemDisplayVolumeListener;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    invoke-virtual {v12, v13, v14}, Landroid/hardware/display/DisplayManager;->semRegisterDisplayVolumeListener(Landroid/hardware/display/SemDisplayVolumeListener;Landroid/os/Handler;)V

    .line 499
    return-void
.end method

.method private addExistingRows()V
    .locals 8

    .prologue
    .line 992
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 993
    .local v6, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_1

    .line 994
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 995
    .local v1, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get10(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v3

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get9(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get12(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Z

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/SecVolumeDialog;->initRow(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;IIIZ)V

    .line 996
    if-lez v7, :cond_0

    .line 997
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/SecVolumeDialog;->addSpacer(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 999
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 993
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 991
    .end local v1    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    :cond_1
    return-void
.end method

.method private addRow(IIIZ)V
    .locals 6
    .param p1, "stream"    # I
    .param p2, "iconRes"    # I
    .param p3, "iconMuteRes"    # I
    .param p4, "important"    # Z

    .prologue
    .line 972
    new-instance v1, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;-><init>(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .local v1, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 973
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/SecVolumeDialog;->initRow(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;IIIZ)V

    .line 974
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 975
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/SecVolumeDialog;->addSpacer(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 978
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 979
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 971
    return-void
.end method

.method private addRow_lockscreen(IIIZ)V
    .locals 6
    .param p1, "stream"    # I
    .param p2, "iconRes"    # I
    .param p3, "iconMuteRes"    # I
    .param p4, "important"    # Z

    .prologue
    .line 984
    new-instance v1, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;-><init>(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .local v1, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 985
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/SecVolumeDialog;->initRow_lockscreen(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;IIIZ)V

    .line 986
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialogContentView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 987
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRowsLockScreen:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 983
    return-void
.end method

.method private addSpacer(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 5
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 1004
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1005
    .local v2, "v":Landroid/view/View;
    const/high16 v3, 0x1020000

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 1006
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1007
    const v4, 0x7f0d02d5

    .line 1006
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1008
    .local v0, "h":I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1009
    const/4 v3, -0x1

    .line 1008
    invoke-direct {v1, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1010
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-virtual {v3, v2, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1011
    invoke-static {p1, v2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set16(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    .line 1003
    return-void
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "color"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3031
    new-array v0, v2, [[I

    .line 3032
    new-array v1, v3, [I

    aput-object v1, v0, v3

    .line 3034
    .local v0, "EMPTY":[[I
    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    .line 3035
    aput p1, v2, v3

    .line 3034
    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private computeTimeoutH()I
    .locals 2

    .prologue
    const/16 v1, 0x1388

    .line 1404
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAccessibility:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->-get1(Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1405
    return v1

    .line 1406
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHovering:Z

    if-eqz v0, :cond_1

    .line 1407
    const/16 v0, 0x3e80

    return v0

    .line 1408
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v0, :cond_2

    .line 1409
    return v1

    .line 1410
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationRunning:Z

    if-eqz v0, :cond_4

    .line 1411
    :cond_3
    return v1

    .line 1412
    :cond_4
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_6

    .line 1413
    :cond_5
    const/16 v0, 0x5dc

    return v0

    .line 1414
    :cond_6
    const/16 v0, 0xbb8

    return v0
.end method

.method private createAlphaAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "start"    # F
    .param p3, "end"    # F

    .prologue
    .line 2489
    const-string/jumbo v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 v3, 0x1

    aput p3, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2490
    .local v0, "alphaAnim":Landroid/animation/ObjectAnimator;
    return-object v0
.end method

.method private createAlphaAnimSet(I)Landroid/animation/AnimatorSet;
    .locals 12
    .param p1, "alphaType"    # I

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 2458
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2460
    .local v3, "alphaAnimSet":Landroid/animation/AnimatorSet;
    const/4 v0, 0x0

    .line 2461
    .local v0, "alphaAnim1":Landroid/animation/ObjectAnimator;
    const/4 v1, 0x0

    .line 2462
    .local v1, "alphaAnim2":Landroid/animation/ObjectAnimator;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2463
    .local v2, "alphaAnimCollection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/animation/Animator;>;"
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v0    # "alphaAnim1":Landroid/animation/ObjectAnimator;
    .end local v1    # "alphaAnim2":Landroid/animation/ObjectAnimator;
    .local v5, "row$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 2464
    .local v4, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v8

    iget v9, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    if-eq v8, v9, :cond_0

    .line 2465
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v7

    .line 2466
    .local v7, "view":Landroid/view/View;
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v6

    .line 2468
    .local v6, "space":Landroid/view/View;
    const/4 v8, 0x3

    if-ne p1, v8, :cond_1

    .line 2469
    invoke-direct {p0, v7, v10, v11}, Lcom/android/systemui/volume/SecVolumeDialog;->createAlphaAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2470
    .local v0, "alphaAnim1":Landroid/animation/ObjectAnimator;
    invoke-direct {p0, v6, v10, v11}, Lcom/android/systemui/volume/SecVolumeDialog;->createAlphaAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 2475
    .local v1, "alphaAnim2":Landroid/animation/ObjectAnimator;
    :goto_1
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2476
    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2472
    .end local v0    # "alphaAnim1":Landroid/animation/ObjectAnimator;
    .end local v1    # "alphaAnim2":Landroid/animation/ObjectAnimator;
    :cond_1
    invoke-direct {p0, v7, v11, v10}, Lcom/android/systemui/volume/SecVolumeDialog;->createAlphaAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2473
    .restart local v0    # "alphaAnim1":Landroid/animation/ObjectAnimator;
    invoke-direct {p0, v6, v11, v10}, Lcom/android/systemui/volume/SecVolumeDialog;->createAlphaAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .restart local v1    # "alphaAnim2":Landroid/animation/ObjectAnimator;
    goto :goto_1

    .line 2479
    .end local v0    # "alphaAnim1":Landroid/animation/ObjectAnimator;
    .end local v1    # "alphaAnim2":Landroid/animation/ObjectAnimator;
    .end local v4    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .end local v6    # "space":Landroid/view/View;
    .end local v7    # "view":Landroid/view/View;
    :cond_2
    iget-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v8, :cond_3

    .line 2480
    const-wide/16 v8, 0x12c

    invoke-virtual {v3, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2484
    :goto_2
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2485
    return-object v3

    .line 2482
    :cond_3
    const-wide/16 v8, 0x96

    invoke-virtual {v3, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_2
.end method

.method private createCollapseExpandAnim()Landroid/animation/AnimatorSet;
    .locals 15

    .prologue
    .line 2494
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    if-nez v10, :cond_0

    .line 2495
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 2498
    :cond_0
    const/4 v7, 0x0

    .line 2499
    .local v7, "containerViewAnim":Landroid/animation/ValueAnimator;
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    .line 2501
    .local v5, "beforeHeight":I
    const/4 v10, 0x2

    new-array v10, v10, [F

    int-to-float v11, v5

    const/4 v12, 0x0

    aput v11, v10, v12

    iget v11, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAfterHeight:I

    int-to-float v11, v11

    const/4 v12, 0x1

    aput v11, v10, v12

    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 2502
    .local v7, "containerViewAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v10, 0x12c

    invoke-virtual {v7, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2503
    new-instance v10, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v10}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2504
    new-instance v10, Lcom/android/systemui/volume/SecVolumeDialog$15;

    invoke-direct {v10, p0}, Lcom/android/systemui/volume/SecVolumeDialog$15;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    invoke-virtual {v7, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2516
    const/4 v0, 0x0

    .line 2519
    .local v0, "activeItemAnim":Landroid/animation/ObjectAnimator;
    iget-boolean v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v10, :cond_1

    .line 2520
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    .line 2524
    .local v6, "beforeTop":I
    :goto_0
    const/4 v1, -0x1

    .line 2527
    .local v1, "afterTop":I
    iget-boolean v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-nez v10, :cond_2

    .line 2528
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    .line 2529
    const/4 v3, 0x4

    .line 2539
    .local v3, "alphaAnimType":I
    :goto_1
    iget-boolean v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-nez v10, :cond_4

    iget v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveChildIndex:I

    if-eqz v10, :cond_4

    .line 2540
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v10}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/systemui/volume/SecVolumeDialog;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 2541
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v10, :cond_3

    .line 2542
    const/4 v10, 0x0

    return-object v10

    .line 2522
    .end local v1    # "afterTop":I
    .end local v3    # "alphaAnimType":I
    .end local v6    # "beforeTop":I
    :cond_1
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v10}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v6

    .restart local v6    # "beforeTop":I
    goto :goto_0

    .line 2531
    .restart local v1    # "afterTop":I
    :cond_2
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v10

    .line 2532
    iget v11, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRowHeight:I

    .line 2533
    iget v12, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVisibleRowIndex:I

    .line 2532
    mul-int/2addr v11, v12

    .line 2531
    add-int/2addr v10, v11

    .line 2534
    iget-object v11, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 2535
    const v12, 0x7f0d02d5

    .line 2534
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 2535
    iget v12, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVisibleRowIndex:I

    .line 2534
    mul-int/2addr v11, v12

    .line 2531
    add-int v1, v10, v11

    .line 2536
    const/4 v3, 0x3

    .restart local v3    # "alphaAnimType":I
    goto :goto_1

    .line 2544
    :cond_3
    new-instance v10, Landroid/view/View;

    iget-object v11, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mGhostView:Landroid/view/View;

    .line 2546
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 2547
    .local v9, "r":Landroid/graphics/Rect;
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    iget v10, v9, Landroid/graphics/Rect;->right:I

    iget v11, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    .line 2548
    iget v11, v9, Landroid/graphics/Rect;->bottom:I

    iget v12, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    .line 2547
    invoke-direct {v8, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2549
    .local v8, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mGhostView:Landroid/view/View;

    invoke-virtual {v10, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2550
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    iget-object v11, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mGhostView:Landroid/view/View;

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2552
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mGhostView:Landroid/view/View;

    iget-object v11, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2553
    iget-boolean v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v10, :cond_5

    .line 2554
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mGhostView:Landroid/view/View;

    iget-object v11, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setTop(I)V

    .line 2560
    :goto_2
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mGhostView:Landroid/view/View;

    const-string/jumbo v11, "translationY"

    .line 2559
    const/4 v12, 0x2

    new-array v12, v12, [F

    .line 2560
    int-to-float v13, v6

    const/4 v14, 0x0

    aput v13, v12, v14

    int-to-float v13, v1

    const/4 v14, 0x1

    aput v13, v12, v14

    .line 2559
    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2561
    .local v0, "activeItemAnim":Landroid/animation/ObjectAnimator;
    const-wide/16 v10, 0x12c

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2562
    new-instance v10, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v10}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2566
    .end local v0    # "activeItemAnim":Landroid/animation/ObjectAnimator;
    .end local v8    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9    # "r":Landroid/graphics/Rect;
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->createAlphaAnimSet(I)Landroid/animation/AnimatorSet;

    move-result-object v2

    .line 2569
    .local v2, "alphaAnimSet":Landroid/animation/AnimatorSet;
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2570
    .local v4, "animSet":Landroid/animation/AnimatorSet;
    iget-boolean v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-nez v10, :cond_6

    iget v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveChildIndex:I

    if-eqz v10, :cond_6

    if-eqz v0, :cond_6

    .line 2571
    const/4 v10, 0x3

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v11, 0x1

    aput-object v0, v10, v11

    const/4 v11, 0x2

    aput-object v2, v10, v11

    invoke-virtual {v4, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2575
    :goto_3
    iget-boolean v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v10, :cond_7

    .line 2576
    const-wide/16 v10, 0x258

    invoke-virtual {v4, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2577
    new-instance v10, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseOut;

    const/high16 v11, 0x3f800000    # 1.0f

    const v12, 0x3f333333    # 0.7f

    invoke-direct {v10, v11, v12}, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseOut;-><init>(FF)V

    invoke-virtual {v4, v10}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2581
    :goto_4
    new-instance v10, Lcom/android/systemui/volume/SecVolumeDialog$16;

    invoke-direct {v10, p0}, Lcom/android/systemui/volume/SecVolumeDialog$16;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    invoke-virtual {v4, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2620
    return-object v4

    .line 2556
    .end local v2    # "alphaAnimSet":Landroid/animation/AnimatorSet;
    .end local v4    # "animSet":Landroid/animation/AnimatorSet;
    .local v0, "activeItemAnim":Landroid/animation/ObjectAnimator;
    .restart local v8    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v9    # "r":Landroid/graphics/Rect;
    :cond_5
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mGhostView:Landroid/view/View;

    iget-object v11, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v11}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setTop(I)V

    goto :goto_2

    .line 2573
    .end local v0    # "activeItemAnim":Landroid/animation/ObjectAnimator;
    .end local v8    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9    # "r":Landroid/graphics/Rect;
    .restart local v2    # "alphaAnimSet":Landroid/animation/AnimatorSet;
    .restart local v4    # "animSet":Landroid/animation/AnimatorSet;
    :cond_6
    const/4 v10, 0x2

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v11, 0x1

    aput-object v2, v10, v11

    invoke-virtual {v4, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_3

    .line 2579
    :cond_7
    new-instance v10, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v10}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v10}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_4
.end method

.method private createCoverMsgRemoteView()Landroid/widget/RemoteViews;
    .locals 3

    .prologue
    .line 3319
    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 3320
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3321
    const v2, 0x7f040175

    .line 3320
    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 3326
    .local v0, "coverMsgRemoteViews":Landroid/widget/RemoteViews;
    :goto_0
    return-object v0

    .line 3323
    .end local v0    # "coverMsgRemoteViews":Landroid/widget/RemoteViews;
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3324
    const v2, 0x7f040173

    .line 3323
    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v0    # "coverMsgRemoteViews":Landroid/widget/RemoteViews;
    goto :goto_0
.end method

.method private doRefresh()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2624
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mGhostView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2625
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mGhostView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2626
    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mGhostView:Landroid/view/View;

    .line 2628
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->removeCachedBitmap()V

    .line 2623
    return-void
.end method

.method private findRow(I)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .locals 3
    .param p1, "stream"    # I

    .prologue
    .line 1033
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "row$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1034
    .local v0, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1035
    return-object v0

    .line 1037
    .end local v0    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getActiveRow()Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1019
    const/4 v0, 0x0

    .line 1020
    .local v0, "index":I
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "row$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1021
    .local v1, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v3

    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    if-ne v3, v4, :cond_0

    .line 1022
    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveChildIndex:I

    .line 1023
    return-object v1

    .line 1025
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1028
    .end local v1    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    :cond_1
    iput v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveChildIndex:I

    .line 1029
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    return-object v3
.end method

.method private getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2442
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 2443
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2442
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2444
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2445
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2446
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 2447
    .local v1, "bd":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2450
    return-object v1

    .line 2451
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v3

    .line 2452
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "IllegalArgumentException happens in getBitmapDrawableFromView()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    const/4 v4, 0x0

    return-object v4
.end method

.method private getConservativeCollapseDuration()J
    .locals 2

    .prologue
    .line 1536
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationDuration:I

    mul-int/lit8 v0, v0, 0x3

    int-to-long v0, v0

    return-wide v0
.end method

.method private static getImpliedLevel(Landroid/widget/SeekBar;I)I
    .locals 5
    .param p0, "seekBar"    # Landroid/widget/SeekBar;
    .param p1, "progress"    # I

    .prologue
    const/4 v0, 0x0

    .line 1065
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    .line 1066
    .local v1, "m":I
    div-int/lit8 v3, v1, 0x64

    add-int/lit8 v2, v3, -0x1

    .line 1067
    .local v2, "n":I
    if-nez p1, :cond_0

    .line 1069
    .local v0, "level":I
    :goto_0
    return v0

    .line 1068
    .end local v0    # "level":I
    :cond_0
    if-ne p1, v1, :cond_1

    div-int/lit8 v0, v1, 0x64

    goto :goto_0

    :cond_1
    int-to-float v3, p1

    int-to-float v4, v1

    div-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v0, v3, 0x1

    goto :goto_0
.end method

.method private static getImpliedMediaVolumeLevel(I)I
    .locals 0
    .param p0, "progress"    # I

    .prologue
    .line 1073
    div-int/lit8 p0, p0, 0xa

    .line 1074
    mul-int/lit8 p0, p0, 0xa

    return p0
.end method

.method private initCoverManager(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3278
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    if-nez v2, :cond_0

    .line 3279
    new-instance v2, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct {v2}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    .line 3281
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    invoke-virtual {v2, p1}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3287
    :goto_0
    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "initCoverManager: initCoverManager"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3288
    new-instance v2, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v2, p1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 3289
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3290
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 3291
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    .line 3277
    :cond_0
    :goto_1
    return-void

    .line 3293
    :cond_1
    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "initCoverManager fail NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3282
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 3284
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .local v0, "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    goto :goto_0
.end method

.method private initDialog()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const v11, 0x1080a12

    const v10, 0x10809ff

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 706
    iput-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHovering:Z

    .line 707
    sput-boolean v8, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    .line 708
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    .line 716
    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsKnoxDesktopMode:Z

    if-nez v0, :cond_2

    .line 717
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    const v1, 0x7f04017a

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->setContentView(I)V

    .line 722
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    const v1, 0x7f130418

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    .line 723
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/volume/SecVolumeDialog$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/SecVolumeDialog$9;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 733
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    const v1, 0x7f130419

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    .line 734
    iput-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    .line 735
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    const v1, 0x7f13041a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    .line 736
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 737
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mClickExpand:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 738
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 739
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateWindowWidthH()V

    .line 740
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateExpandButtonH()V

    .line 743
    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsKnoxDesktopMode:Z

    if-nez v0, :cond_3

    .line 744
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    const v1, 0x7f0400ae

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->setContentView(I)V

    .line 748
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    const v1, 0x7f13025e

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialogView:Landroid/view/ViewGroup;

    .line 749
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    const v1, 0x7f13025f

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialogContentView:Landroid/view/ViewGroup;

    .line 753
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogMotion;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    .line 754
    new-instance v5, Lcom/android/systemui/volume/SecVolumeDialog$10;

    invoke-direct {v5, p0}, Lcom/android/systemui/volume/SecVolumeDialog$10;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    .line 753
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogMotion;-><init>(Landroid/app/Dialog;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/volume/VolumeDialogMotion$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    .line 770
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->semGetEarProtectLimit()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLimit:I

    .line 772
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 773
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVoiceCapable:Z

    if-eqz v0, :cond_4

    .line 774
    const/4 v0, 0x2

    invoke-direct {p0, v0, v11, v10, v9}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 776
    invoke-direct {p0, v12, v11, v10, v9}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 778
    const/4 v0, 0x5

    invoke-direct {p0, v0, v11, v10, v9}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 781
    invoke-direct {p0, v9, v11, v10, v9}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 784
    const/4 v0, 0x4

    invoke-direct {p0, v0, v11, v10, v8}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 787
    const v0, 0x10809fd

    .line 788
    const v1, 0x10809fd

    .line 786
    invoke-direct {p0, v8, v0, v1, v8}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 789
    const/4 v0, 0x6

    .line 790
    const v1, 0x10809fb

    .line 791
    const v2, 0x10809fb

    .line 789
    invoke-direct {p0, v0, v1, v2, v8}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 792
    const/16 v0, 0xa

    .line 793
    const v1, 0x7f020719

    .line 794
    const v2, 0x7f020719

    .line 792
    invoke-direct {p0, v0, v1, v2, v8}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 795
    const/16 v0, 0xb

    invoke-direct {p0, v0, v11, v10, v8}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 799
    const v0, 0x7f02071d

    .line 800
    const v1, 0x7f02071b

    .line 799
    invoke-direct {p0, v12, v0, v1, v9}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow_lockscreen(IIIZ)V

    .line 801
    const/16 v0, 0xb

    const v1, 0x7f02071d

    .line 802
    const v2, 0x7f02071b

    .line 801
    invoke-direct {p0, v0, v1, v2, v9}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow_lockscreen(IIIZ)V

    .line 838
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    const v1, 0x7f13041b

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDndView:Landroid/view/ViewGroup;

    .line 839
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04017c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 840
    .local v6, "dndpanel":Landroid/view/View;
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDndView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDndView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 841
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->isValidZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDndView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 842
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDndView:Landroid/view/ViewGroup;

    const v1, 0x7f13041d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDivider:Landroid/view/View;

    .line 843
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDivider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 844
    .local v7, "param":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v7, :cond_1

    .line 845
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_6

    .line 846
    iput v9, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 850
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDivider:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 853
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 854
    const v1, 0x7f0c0069

    .line 853
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationDuration:I

    .line 705
    return-void

    .line 719
    .end local v6    # "dndpanel":Landroid/view/View;
    .end local v7    # "param":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    const v1, 0x7f04017a

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->setContentView(I)V

    goto/16 :goto_0

    .line 746
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    const v1, 0x7f0400ae

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->setContentView(I)V

    goto/16 :goto_1

    .line 805
    :cond_4
    const/4 v0, 0x5

    invoke-direct {p0, v0, v11, v10, v9}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 808
    invoke-direct {p0, v12, v11, v10, v9}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 810
    invoke-direct {p0, v9, v11, v10, v9}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 813
    const/4 v0, 0x4

    invoke-direct {p0, v0, v11, v10, v8}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 816
    const v0, 0x10809fd

    .line 817
    const v1, 0x10809fd

    .line 815
    invoke-direct {p0, v8, v0, v1, v8}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 818
    const/4 v0, 0x6

    .line 819
    const v1, 0x10809fb

    .line 820
    const v2, 0x10809fb

    .line 818
    invoke-direct {p0, v0, v1, v2, v8}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 821
    const/16 v0, 0xa

    .line 822
    const v1, 0x7f020719

    .line 823
    const v2, 0x7f020719

    .line 821
    invoke-direct {p0, v0, v1, v2, v8}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 824
    const/16 v0, 0xb

    invoke-direct {p0, v0, v11, v10, v8}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 828
    const v0, 0x7f02071d

    .line 829
    const v1, 0x7f02071b

    .line 828
    invoke-direct {p0, v12, v0, v1, v9}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow_lockscreen(IIIZ)V

    .line 830
    const/16 v0, 0xb

    const v1, 0x7f02071d

    .line 831
    const v2, 0x7f02071b

    .line 830
    invoke-direct {p0, v0, v1, v2, v9}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow_lockscreen(IIIZ)V

    goto/16 :goto_2

    .line 835
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->addExistingRows()V

    goto/16 :goto_2

    .line 848
    .restart local v6    # "dndpanel":Landroid/view/View;
    .restart local v7    # "param":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    const/4 v0, 0x2

    iput v0, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3
.end method

.method private initRow(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;IIIZ)V
    .locals 7
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p2, "stream"    # I
    .param p3, "iconRes"    # I
    .param p4, "iconMuteRes"    # I
    .param p5, "important"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 1080
    invoke-static {p1, p2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 1081
    invoke-static {p1, p3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set10(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 1082
    invoke-static {p1, p4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set9(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 1083
    invoke-static {p1, p5}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set12(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z

    .line 1084
    sget-boolean v4, Lcom/android/systemui/volume/SecVolumeDialog;->mIsKnoxDesktopMode:Z

    if-nez v4, :cond_4

    .line 1085
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v4}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04017d

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    .line 1089
    :goto_0
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1090
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f130420

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {p1, v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set7(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1091
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/volume/SpTexts;->add(Landroid/widget/TextView;)I

    .line 1092
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f130261

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    invoke-static {p1, v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;

    .line 1093
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, p1, v6}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;)V

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1094
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_5

    .line 1095
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMuteAnimation(Z)V

    .line 1096
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->semSetFluidEnabled(Z)V

    .line 1097
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setTouchDisabled(Z)V

    .line 1098
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/volume/SecVolumeDialog$11;

    invoke-direct {v5, p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog$11;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1113
    :goto_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->semSetMode(I)V

    .line 1114
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set0(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 1116
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f130260

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    invoke-static {p1, v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    .line 1117
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1118
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1120
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    .line 1121
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/volume/SecVolumeDialog$12;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/systemui/volume/SecVolumeDialog$12;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1154
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    if-eqz v4, :cond_6

    .line 1155
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_7

    const/4 v0, 0x1

    .line 1156
    .local v0, "isCallOrBTSco":Z
    :goto_2
    const/4 v1, 0x0

    .line 1157
    .local v1, "levelMax":I
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_9

    .line 1158
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v4, :cond_8

    sget-boolean v4, Lcom/android/systemui/volume/VolumeDialogController;->mIsSupportTvVolumeControl:Z

    if-eqz v4, :cond_8

    .line 1159
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 1160
    const-string/jumbo v5, "mivo"

    .line 1159
    invoke-virtual {v4, v5}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayConfiguration(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1164
    :goto_3
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1173
    :goto_4
    if-eqz v0, :cond_c

    add-int/lit8 v4, v1, 0x1

    mul-int/lit8 v2, v4, 0x64

    .line 1174
    .local v2, "max":I
    :goto_5
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1175
    const/4 v3, 0x0

    .line 1177
    .local v3, "min":I
    if-eqz v0, :cond_d

    .line 1178
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->semSetMin(I)V

    .line 1189
    :cond_1
    :goto_6
    const/4 v4, 0x3

    if-eq p2, v4, :cond_2

    const/16 v4, 0xb

    if-ne p2, v4, :cond_3

    .line 1190
    :cond_2
    invoke-direct {p0, p2, v2}, Lcom/android/systemui/volume/SecVolumeDialog;->setImpliedEarProtectLevel(II)V

    .line 1079
    :cond_3
    return-void

    .line 1087
    .end local v0    # "isCallOrBTSco":Z
    .end local v1    # "levelMax":I
    .end local v2    # "max":I
    .end local v3    # "min":I
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v4}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04017d

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    goto/16 :goto_0

    .line 1110
    :cond_5
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMuteAnimation(Z)V

    .line 1111
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->semSetFluidEnabled(Z)V

    goto/16 :goto_1

    .line 1154
    :cond_6
    const/4 v0, 0x1

    .restart local v0    # "isCallOrBTSco":Z
    goto :goto_2

    .line 1155
    .end local v0    # "isCallOrBTSco":Z
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "isCallOrBTSco":Z
    goto :goto_2

    .line 1162
    .restart local v1    # "levelMax":I
    :cond_8
    const/4 v1, 0x0

    goto :goto_3

    .line 1165
    :cond_9
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_a

    .line 1166
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    goto :goto_4

    .line 1167
    :cond_a
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    const/16 v5, 0x64

    if-ge v4, v5, :cond_b

    .line 1168
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, p2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    goto :goto_4

    .line 1170
    :cond_b
    sget v1, Lcom/android/systemui/volume/SecVolumeDialog;->mRemoteControlMaxVolume:I

    goto :goto_4

    .line 1173
    :cond_c
    mul-int/lit8 v2, v1, 0x64

    .restart local v2    # "max":I
    goto :goto_5

    .line 1179
    .restart local v3    # "min":I
    :cond_d
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    .line 1180
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v4, :cond_e

    sget-boolean v4, Lcom/android/systemui/volume/VolumeDialogController;->mIsSupportTvVolumeControl:Z

    if-eqz v4, :cond_e

    .line 1181
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 1182
    const-string/jumbo v5, "mavo"

    .line 1181
    invoke-virtual {v4, v5}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayConfiguration(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1186
    :goto_7
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->semSetMin(I)V

    goto/16 :goto_6

    .line 1184
    :cond_e
    const/4 v3, 0x0

    goto :goto_7
.end method

.method private initRow_lockscreen(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;IIIZ)V
    .locals 6
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p2, "stream"    # I
    .param p3, "iconRes"    # I
    .param p4, "iconMuteRes"    # I
    .param p5, "important"    # Z

    .prologue
    const v2, 0x7f0400af

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1196
    invoke-static {p1, p2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 1197
    invoke-static {p1, p3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set10(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 1198
    invoke-static {p1, p4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set9(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 1199
    invoke-static {p1, p5}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set12(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z

    .line 1200
    sget-boolean v1, Lcom/android/systemui/volume/SecVolumeDialog;->mIsKnoxDesktopMode:Z

    if-nez v1, :cond_2

    .line 1201
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v1}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    .line 1205
    :goto_0
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1206
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f130261

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    invoke-static {p1, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;

    .line 1207
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;

    invoke-direct {v2, p0, p1, v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1208
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setMuteAnimation(Z)V

    .line 1209
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->semSetFluidEnabled(Z)V

    .line 1210
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setTouchDisabled(Z)V

    .line 1211
    invoke-static {p1, v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set0(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 1212
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f130260

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-static {p1, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    .line 1213
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1215
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    mul-int/lit8 v0, v1, 0x64

    .line 1216
    .local v0, "max":I
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1218
    if-eq p2, v5, :cond_0

    const/16 v1, 0xb

    if-ne p2, v1, :cond_1

    .line 1219
    :cond_0
    invoke-direct {p0, p2, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->setImpliedEarProtectLevelforLockScreenDialog(II)V

    .line 1195
    :cond_1
    return-void

    .line 1203
    .end local v0    # "max":I
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v1}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    goto :goto_0
.end method

.method private insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;
    .param p4, "value"    # J

    .prologue
    .line 3393
    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertLog : extra = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3394
    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertLog : value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3396
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    .line 3397
    const-string/jumbo v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 3396
    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3398
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3399
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3400
    const-string/jumbo v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3401
    const-string/jumbo v2, "extra"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3402
    const-string/jumbo v2, "value"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3404
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3406
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3407
    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3408
    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3410
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3392
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private isAttached()Z
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInLockScreen()Z
    .locals 2

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mApp:Lcom/android/systemui/SystemUIApplication;

    if-nez v0, :cond_0

    .line 1383
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mApp:Lcom/android/systemui/SystemUIApplication;

    .line 1386
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-nez v0, :cond_1

    .line 1387
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mApp:Lcom/android/systemui/SystemUIApplication;

    const-class v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 1390
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isShadeLockedState()Z

    move-result v0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidZenMode(I)Z
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 1316
    packed-switch p0, :pswitch_data_0

    .line 1323
    const/4 v0, 0x0

    return v0

    .line 1321
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1316
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isVisibleH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z
    .locals 1
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p2, "isActive"    # Z

    .prologue
    .line 1604
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get12(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-nez v0, :cond_2

    .end local p2    # "isActive":Z
    :goto_0
    return p2

    .restart local p2    # "isActive":Z
    :cond_1
    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private loadColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "colorResId"    # I

    .prologue
    .line 865
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private makeSound()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 1230
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 1231
    return-void

    .line 1232
    :cond_0
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sound : new SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 1236
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 1237
    const/16 v2, 0xd

    .line 1236
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 1233
    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    .line 1240
    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->SUPPORT_DEFAULTSTREAM_NOTIFICATION:Z

    if-eqz v0, :cond_1

    .line 1241
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->semSetStreamType(I)V

    .line 1245
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    const-string/jumbo v1, "system/media/audio/ui/TW_Volume_control.ogg"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundID:I

    .line 1229
    return-void

    .line 1243
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->semSetStreamType(I)V

    goto :goto_0
.end method

.method private onDismissLockScreenDialog()V
    .locals 2

    .prologue
    .line 3530
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mApp:Lcom/android/systemui/SystemUIApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-nez v0, :cond_1

    .line 3531
    :cond_0
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SystemUIApplication or StatusBar is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3532
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mApp:Lcom/android/systemui/SystemUIApplication;

    .line 3533
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mApp:Lcom/android/systemui/SystemUIApplication;

    const-class v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 3536
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_2

    .line 3537
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Set KeyguardStatubar Visibility : TRUE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3538
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setForceKeyguardStatusBarVisibility(Z)V

    .line 3540
    :cond_2
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mLockScreenDialog is dismissing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3541
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->dismiss()V

    .line 3529
    return-void
.end method

.method private onDismissSafeVolumeWarning()V
    .locals 2

    .prologue
    .line 3378
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3379
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SafetyWarningDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3380
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SafetyWarningDialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 3384
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsShowingSCoverWarning:Z

    if-eqz v0, :cond_1

    .line 3385
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "dismiss warning popup on the s view cover"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3386
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->sendCoverWarningMsgIntent(Z)V

    .line 3377
    :cond_1
    return-void

    .line 3378
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onShowLockScreenDialog()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3493
    const/4 v2, 0x0

    .line 3494
    .local v2, "isStatusBarExpand":Z
    const/4 v1, 0x0

    .line 3496
    .local v1, "isNotiCardExpand":Z
    :try_start_0
    const-string/jumbo v4, "statusbar"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v3

    .line 3497
    .local v3, "mStatusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    invoke-interface {v3}, Lcom/android/internal/statusbar/IStatusBarService;->getQuickSettingPanelExpandState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3503
    .local v2, "isStatusBarExpand":Z
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mApp:Lcom/android/systemui/SystemUIApplication;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-nez v4, :cond_1

    .line 3504
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/SystemUIApplication;

    iput-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mApp:Lcom/android/systemui/SystemUIApplication;

    .line 3505
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mApp:Lcom/android/systemui/SystemUIApplication;

    const-class v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4, v5}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 3507
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isShadeLockedState()Z

    move-result v1

    .line 3509
    .local v1, "isNotiCardExpand":Z
    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    const/16 v5, 0xb

    if-ne v4, v5, :cond_4

    .line 3510
    :cond_2
    if-nez v2, :cond_3

    if-nez v1, :cond_3

    .line 3511
    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Set KeyguardStatubar Visibility : FALSE & Show the mLockScreenDialog"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3512
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setForceKeyguardStatusBarVisibility(Z)V

    .line 3513
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v4}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->show()V

    .line 3526
    const/4 v4, 0x1

    return v4

    .line 3498
    .end local v3    # "mStatusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    .local v1, "isNotiCardExpand":Z
    .local v2, "isStatusBarExpand":Z
    :catch_0
    move-exception v0

    .line 3499
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "RemoteException when call the getPanelExpandState"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3500
    return v6

    .line 3515
    .end local v0    # "e":Landroid/os/RemoteException;
    .local v1, "isNotiCardExpand":Z
    .local v2, "isStatusBarExpand":Z
    .restart local v3    # "mStatusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_3
    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Do nothing because StatusBar is Expanded"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3516
    sput-boolean v6, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    .line 3517
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v4, v6}, Lcom/android/systemui/volume/VolumeDialogController;->notifyVisible(Z)V

    .line 3518
    return v6

    .line 3521
    :cond_4
    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Lockscreen is true but ActiveStream is not music. so do nothing"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3522
    sput-boolean v6, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    .line 3523
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v4, v6}, Lcom/android/systemui/volume/VolumeDialogController;->notifyVisible(Z)V

    .line 3524
    return v6
.end method

.method private onStateChangedH(Lcom/android/systemui/volume/VolumeDialogController$State;)V
    .locals 14
    .param p1, "state"    # Lcom/android/systemui/volume/VolumeDialogController$State;

    .prologue
    const/4 v13, 0x3

    const/16 v12, 0x8

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1711
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    if-nez v7, :cond_0

    .line 1712
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1715
    :cond_0
    iget-boolean v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v7}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_6

    .line 1716
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v12}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1723
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    sget-boolean v7, Lcom/android/systemui/volume/SecVolumeDialog;->mIsKnoxDesktopMode:Z

    if-eqz v7, :cond_4

    .line 1728
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v12}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1729
    iput-boolean v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    .line 1732
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateWindowWidthH()V

    .line 1734
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v7}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v0

    .line 1735
    .local v0, "animating":Z
    sget-boolean v7, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v7, :cond_5

    .line 1736
    sget-object v7, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onStateChangedH animating="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    :cond_5
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    .line 1738
    if-eqz v0, :cond_7

    .line 1739
    iput-boolean v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPendingStateChanged:Z

    .line 1740
    return-void

    .line 1718
    .end local v0    # "animating":Z
    :cond_6
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1742
    .restart local v0    # "animating":Z
    :cond_7
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1744
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v7, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v2, v7, :cond_a

    .line 1745
    iget-object v7, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 1746
    .local v6, "stream":I
    iget-object v7, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .line 1747
    .local v5, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    iget-boolean v7, v5, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->dynamic:Z

    if-nez v7, :cond_9

    .line 1744
    :cond_8
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1749
    :cond_9
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1750
    invoke-direct {p0, v6}, Lcom/android/systemui/volume/SecVolumeDialog;->findRow(I)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v7

    if-nez v7, :cond_8

    .line 1751
    iget v7, v5, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMax:I

    sput v7, Lcom/android/systemui/volume/SecVolumeDialog;->mRemoteControlMaxVolume:I

    .line 1752
    iget v7, v5, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    sput v7, Lcom/android/systemui/volume/SecVolumeDialog;->mRemoteControlCurrentVolume:I

    .line 1753
    const v7, 0x7f02021f

    const v8, 0x7f020220

    invoke-direct {p0, v6, v7, v8, v10}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    goto :goto_2

    .line 1757
    .end local v5    # "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    .end local v6    # "stream":I
    :cond_a
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v13}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v1

    .line 1758
    .local v1, "device":I
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result v7

    iput v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPinDevice:I

    .line 1760
    iget v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPinDevice:I

    if-ne v1, v7, :cond_b

    .line 1761
    iput v11, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPinDevice:I

    .line 1764
    :cond_b
    iget v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    iget v8, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->activeStream:I

    if-eq v7, v8, :cond_d

    .line 1765
    sput-boolean v10, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStreamChanged:Z

    .line 1766
    iget v7, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->activeStream:I

    iput v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    .line 1767
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1768
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateRowsH()V

    .line 1769
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->rescheduleTimeoutH()V

    .line 1774
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->refreshMorebuttonTintColor()V

    .line 1776
    iget-boolean v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v7, :cond_f

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->isInLockScreen()Z

    move-result v7

    if-eqz v7, :cond_f

    iget v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    if-eq v7, v13, :cond_c

    iget v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    const/16 v8, 0xb

    if-ne v7, v8, :cond_f

    .line 1777
    :cond_c
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRowsLockScreen:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "row$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1778
    .local v3, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v7

    iget v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    if-ne v7, v8, :cond_e

    .line 1779
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1783
    :goto_5
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->refreshLockScreenDialogResourceTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 1784
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->updateLockScreenVolumeRowH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    goto :goto_4

    .line 1771
    .end local v3    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .end local v4    # "row$iterator":Ljava/util/Iterator;
    :cond_d
    sput-boolean v11, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStreamChanged:Z

    goto :goto_3

    .line 1781
    .restart local v3    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .restart local v4    # "row$iterator":Ljava/util/Iterator;
    :cond_e
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 1787
    .end local v3    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .end local v4    # "row$iterator":Ljava/util/Iterator;
    :cond_f
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "row$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1788
    .restart local v3    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->refreshResourceTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 1789
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->updateVolumeRowH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    goto :goto_6

    .line 1710
    .end local v3    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    :cond_10
    return-void
.end method

.method private phoneIsOffhook()Z
    .locals 4

    .prologue
    .line 3243
    const/4 v0, 0x0

    .line 3245
    .local v0, "phoneOffhook":Z
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    .line 3246
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    .line 3247
    const-string/jumbo v2, "phone"

    .line 3246
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 3249
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    .line 3250
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 3251
    const/4 v0, 0x1

    .line 3254
    :cond_1
    sget-object v1, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "phoneIsOffhook : phoneOffhook = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3255
    return v0
.end method

.method private recheckH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 5
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 2181
    if-nez p1, :cond_1

    .line 2182
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_0

    .line 2183
    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "recheckH ALL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->trimObsoleteH()V

    .line 2185
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 2186
    .local v0, "r":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateVolumeRowH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    goto :goto_0

    .line 2189
    .end local v0    # "r":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .end local v1    # "r$iterator":Ljava/util/Iterator;
    :cond_1
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_2

    .line 2190
    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "recheckH "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->updateVolumeRowH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 2180
    :cond_3
    return-void
.end method

.method private refreshIconTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)V
    .locals 2
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p2, "vlevel"    # I

    .prologue
    const/16 v1, 0x8

    .line 3103
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3102
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3105
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    if-nez v0, :cond_0

    .line 3106
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconMutedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 3110
    :pswitch_2
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 3112
    :goto_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconMutedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 3111
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    if-nez v0, :cond_0

    goto :goto_1

    .line 3116
    :pswitch_3
    if-nez p2, :cond_0

    .line 3117
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconMutedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 3121
    :pswitch_4
    if-nez p2, :cond_4

    .line 3122
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v0, :cond_3

    .line 3125
    :cond_2
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconMutedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 3123
    :cond_3
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconMutedDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 3128
    :cond_4
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevel:I

    if-lt p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOn:Z

    if-eqz v0, :cond_0

    .line 3129
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v0, :cond_6

    .line 3132
    :cond_5
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconEarShockColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 3130
    :cond_6
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconEarShockDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 3137
    :pswitch_5
    if-nez p2, :cond_9

    .line 3138
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    if-ne v0, v1, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v0, :cond_8

    .line 3141
    :cond_7
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconMutedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0

    .line 3139
    :cond_8
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconMutedDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0

    .line 3144
    :cond_9
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevelForMultiSound:I

    if-lt p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    if-eqz v0, :cond_0

    .line 3145
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    if-ne v0, v1, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v0, :cond_b

    .line 3148
    :cond_a
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconEarShockColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0

    .line 3146
    :cond_b
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconEarShockDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0

    .line 3153
    :pswitch_6
    if-nez p2, :cond_0

    .line 3154
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconMutedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0

    .line 3103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private refreshLockScreenDialogResourceTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 7
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    const/16 v6, 0xb

    const/4 v5, 0x3

    .line 3210
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3211
    .local v0, "mResolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "white_lockscreen_statusbar"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 3213
    .local v1, "mWhiteKeyguardStatusBar":I
    if-eqz v0, :cond_0

    .line 3214
    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Value of mWhiteKeyguardStatusBar : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3217
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 3218
    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "update LockScreen Dialog TintColor as Light Theme"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3219
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v2

    const-string/jumbo v3, "#494949"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 3220
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    const-string/jumbo v3, "#494949"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 3221
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    const-string/jumbo v3, "#4d494949"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 3222
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, v5, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOn:Z

    if-nez v2, :cond_2

    .line 3223
    :cond_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, v6, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    .line 3222
    if-eqz v2, :cond_3

    .line 3224
    :cond_2
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    const-string/jumbo v3, "#66f1662f"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#f1662f"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/SeekBar;->setDualModeOverlapColor(II)V

    .line 3209
    :cond_3
    :goto_0
    return-void

    .line 3228
    :cond_4
    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "update LockScreen Dialog TintColor as Dark Theme"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3229
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v2

    const-string/jumbo v3, "#fafafa"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 3230
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    const-string/jumbo v3, "#fafafa"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 3231
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    const-string/jumbo v3, "#66fafafa"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 3232
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, v5, :cond_5

    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOn:Z

    if-nez v2, :cond_6

    .line 3233
    :cond_5
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, v6, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    .line 3232
    if-eqz v2, :cond_3

    .line 3234
    :cond_6
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    const-string/jumbo v3, "#66ff753f"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#ff753f"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/SeekBar;->setDualModeOverlapColor(II)V

    goto :goto_0
.end method

.method private refreshMorebuttonTintColor()V
    .locals 2

    .prologue
    .line 3093
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v0, :cond_1

    .line 3097
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 3098
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumePanelBgColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 3092
    :goto_0
    return-void

    .line 3094
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 3095
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumePanelBgDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method private refreshResourceTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 2
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 3040
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v0, :cond_1

    .line 3045
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->refreshSliderResourceTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 3046
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconActiveColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 3047
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeTitleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 3039
    :goto_0
    return-void

    .line 3041
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->refreshSliderResourceDefaultTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 3042
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconActiveDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 3043
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeTitleDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method private refreshSliderResourceDefaultTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 2
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 3074
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setDefaultColorForVolumePanel(Z)V

    .line 3076
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get5(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbDefaultColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_0

    .line 3077
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 3078
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbDefaultColor:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set5(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 3081
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get6(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressDefaultColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_1

    .line 3082
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 3083
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressDefaultColor:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set6(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 3086
    :cond_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get4(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgDefaultColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_2

    .line 3087
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 3088
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgDefaultColor:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set4(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 3073
    :cond_2
    return-void
.end method

.method private refreshSliderResourceTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 2
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 3052
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setDefaultColorForVolumePanel(Z)V

    .line 3054
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get5(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_0

    .line 3055
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "refreshSliderResourceTintColor #1 mThumbColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3056
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 3057
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbColor:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set5(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 3060
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get6(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_1

    .line 3061
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "refreshSliderResourceTintColor #2 mProgressColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3062
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 3063
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressColor:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set6(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 3066
    :cond_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get4(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_2

    .line 3067
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "refreshSliderResourceTintColor #3 mProgressBgColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3068
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 3069
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgColor:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set4(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 3051
    :cond_2
    return-void
.end method

.method private registerCoverReceiver()V
    .locals 3

    .prologue
    .line 3370
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3371
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3372
    const-string/jumbo v1, "android.view.volumepanel.CLICK_BUTTON1"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3373
    const-string/jumbo v1, "android.view.volumepanel.CLICK_BUTTON2"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3374
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3369
    return-void
.end method

.method private registerLockScreenReceiver()V
    .locals 3

    .prologue
    .line 3594
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3595
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3596
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3593
    return-void
.end method

.method private releaseSound()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1269
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 1270
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sound : release SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 1272
    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    .line 1268
    :cond_0
    return-void
.end method

.method private removeCachedBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2632
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 2633
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2634
    iput-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 2631
    :cond_0
    return-void
.end method

.method private sendCoverWarningMsgIntent(Z)V
    .locals 4
    .param p1, "coverMessageEnabled"    # Z

    .prologue
    .line 3331
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->createCoverMsgRemoteView()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 3332
    .local v1, "remoteViews":Landroid/widget/RemoteViews;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3333
    .local v0, "coverIntent":Landroid/content/Intent;
    const-string/jumbo v2, "visibility"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3334
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "volume"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3335
    const-string/jumbo v2, "remote"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3336
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3337
    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsShowingSCoverWarning:Z

    .line 3329
    return-void
.end method

.method private setDualColorSeekbar(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 3
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    const/4 v2, -0x1

    .line 2996
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 2997
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOn:Z

    if-eqz v0, :cond_1

    .line 2998
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDualColorSeekbar - mAudioManager.semGetEarProtectLimit() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2999
    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLimit:I

    .line 2998
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2999
    const-string/jumbo v2, ", mEarProtectLevel = "

    .line 2998
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3000
    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevel:I

    .line 2998
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3001
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevel:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    .line 2995
    :cond_0
    :goto_0
    return-void

    .line 3002
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOn:Z

    if-nez v0, :cond_0

    .line 3003
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    goto :goto_0

    .line 3006
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    if-eqz v0, :cond_3

    .line 3007
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDualColorSeekbar - mAudioManager.semGetEarProtectLimit() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3008
    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLimit:I

    .line 3007
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3008
    const-string/jumbo v2, ", mEarProtectLevelForMultiSound = "

    .line 3007
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3009
    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevelForMultiSound:I

    .line 3007
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3010
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevelForMultiSound:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    goto :goto_0

    .line 3011
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    if-nez v0, :cond_0

    .line 3012
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    goto :goto_0
.end method

.method private setDualColorSeekbarforLockScreen(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 3
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    const/4 v2, -0x1

    .line 3545
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 3546
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOn:Z

    if-eqz v0, :cond_1

    .line 3547
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDualColorSeekbarforLockScreen - mAudioManager.semGetEarProtectLimit() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3548
    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLimit:I

    .line 3547
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3548
    const-string/jumbo v2, ", mEarProtectLevelforLockScreen = "

    .line 3547
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3549
    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevelforLockScreen:I

    .line 3547
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3550
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevelforLockScreen:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    .line 3544
    :cond_0
    :goto_0
    return-void

    .line 3551
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOn:Z

    if-nez v0, :cond_0

    .line 3552
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    goto :goto_0

    .line 3555
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    if-eqz v0, :cond_3

    .line 3556
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDualColorSeekbarforLockScreen - mAudioManager.semGetEarProtectLimit() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3557
    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLimit:I

    .line 3556
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3557
    const-string/jumbo v2, ", mEarProtectLevelForMultiSound = "

    .line 3556
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3558
    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevelForMultiSound:I

    .line 3556
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3559
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevelForMultiSound:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    goto :goto_0

    .line 3560
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    if-nez v0, :cond_0

    .line 3561
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    goto :goto_0
.end method

.method private setExpandedH(Z)V
    .locals 6
    .param p1, "expanded"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 1547
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-ne v0, p1, :cond_0

    .line 1548
    return-void

    .line 1549
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    .line 1550
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->isAttached()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationRunning:Z

    .line 1551
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_1

    .line 1552
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setExpandedH "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    :cond_1
    sput-boolean v5, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStreamChanged:Z

    .line 1557
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->phoneIsOffhook()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1558
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    if-ne v0, v4, :cond_2

    .line 1559
    invoke-direct {p0, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamImportantH(IZ)V

    .line 1560
    invoke-direct {p0, v3, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamImportantH(IZ)V

    .line 1562
    :cond_2
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    if-nez v0, :cond_3

    .line 1563
    invoke-direct {p0, v3, v5}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamImportantH(IZ)V

    .line 1564
    invoke-direct {p0, v4, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamImportantH(IZ)V

    .line 1570
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateRowsH()V

    .line 1571
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationRunning:Z

    if-eqz v0, :cond_4

    .line 1572
    iput-boolean v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationRunning:Z

    .line 1574
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateExpandButtonH()V

    .line 1575
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->rescheduleTimeoutH()V

    .line 1546
    return-void

    .line 1567
    :cond_5
    invoke-direct {p0, v4, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamImportantH(IZ)V

    .line 1568
    invoke-direct {p0, v3, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamImportantH(IZ)V

    goto :goto_0
.end method

.method private setImpliedEarProtectLevel(II)V
    .locals 2
    .param p1, "stream"    # I
    .param p2, "max"    # I

    .prologue
    .line 3018
    div-int/lit8 v1, p2, 0x64

    add-int/lit8 v0, v1, -0x1

    .line 3020
    .local v0, "n":I
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 3021
    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLimit:I

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x64

    add-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevel:I

    .line 3017
    :goto_0
    return-void

    .line 3022
    :cond_0
    const/16 v1, 0xb

    if-ne p1, v1, :cond_1

    .line 3023
    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLimit:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p2

    div-int/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevelForMultiSound:I

    goto :goto_0

    .line 3025
    :cond_1
    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLimit:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p2

    div-int/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevel:I

    goto :goto_0
.end method

.method private setImpliedEarProtectLevelforLockScreenDialog(II)V
    .locals 2
    .param p1, "stream"    # I
    .param p2, "max"    # I

    .prologue
    .line 3567
    div-int/lit8 v1, p2, 0x64

    add-int/lit8 v0, v1, -0x1

    .line 3569
    .local v0, "n":I
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 3570
    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLimit:I

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevelforLockScreen:I

    .line 3566
    :goto_0
    return-void

    .line 3571
    :cond_0
    const/16 v1, 0xb

    if-ne p1, v1, :cond_1

    .line 3572
    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLimit:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p2

    div-int/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevelForMultiSound:I

    goto :goto_0

    .line 3574
    :cond_1
    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLimit:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p2

    div-int/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevelforLockScreen:I

    goto :goto_0
.end method

.method private setStreamImportantH(IZ)V
    .locals 3
    .param p1, "stream"    # I
    .param p2, "important"    # Z

    .prologue
    .line 2196
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "row$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 2197
    .local v0, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 2198
    invoke-static {v0, p2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set12(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z

    .line 2199
    return-void

    .line 2195
    .end local v0    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    :cond_1
    return-void
.end method

.method private setStreamTypeForLogging(I)V
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 1499
    packed-switch p1, :pswitch_data_0

    .line 1498
    :goto_0
    :pswitch_0
    return-void

    .line 1501
    :pswitch_1
    const-string/jumbo v0, "System"

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExtraForRingerMode:Ljava/lang/String;

    goto :goto_0

    .line 1505
    :pswitch_2
    const-string/jumbo v0, "Ringtone"

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExtraForRingerMode:Ljava/lang/String;

    goto :goto_0

    .line 1510
    :pswitch_3
    const-string/jumbo v0, "Media"

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExtraForRingerMode:Ljava/lang/String;

    goto :goto_0

    .line 1514
    :pswitch_4
    const-string/jumbo v0, "Notification"

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExtraForRingerMode:Ljava/lang/String;

    goto :goto_0

    .line 1499
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private showH(I)V
    .locals 7
    .param p1, "reason"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1336
    const/4 v0, 0x1

    .line 1338
    .local v0, "show":Z
    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHardwareAccelerated:Z

    if-nez v1, :cond_0

    .line 1339
    sput-boolean v4, Landroid/view/ThreadedRenderer;->sSystemRendererDisabled:Z

    .line 1342
    :cond_0
    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v1, :cond_2

    .line 1343
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->isInLockScreen()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->isValidZenMode(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    if-ne v1, v6, :cond_2

    .line 1344
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->showVolumeDnDToast()V

    .line 1348
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1349
    return-void

    .line 1351
    :cond_3
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_4

    .line 1352
    sget-object v1, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showH r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/volume/Events;->SHOW_REASONS:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mShowing : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    invoke-virtual {v1, v4}, Lcom/android/systemui/volume/SecVolumeDialog$H;->removeMessages(I)V

    .line 1354
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    invoke-virtual {v1, v6}, Lcom/android/systemui/volume/SecVolumeDialog$H;->removeMessages(I)V

    .line 1355
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->rescheduleTimeoutH()V

    .line 1356
    sget-boolean v1, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-eqz v1, :cond_5

    .line 1357
    return-void

    .line 1358
    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v1, :cond_6

    .line 1359
    return-void

    .line 1360
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v1}, Lcom/android/systemui/volume/SafetyWarningDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1361
    return-void

    .line 1362
    :cond_7
    sput-boolean v4, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    .line 1363
    iput-boolean v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandCollapseAnimating:Z

    .line 1365
    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->isInLockScreen()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1366
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->onShowLockScreenDialog()Z

    move-result v0

    .line 1375
    .end local v0    # "show":Z
    :goto_0
    if-eqz v0, :cond_8

    .line 1376
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mKeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v5, v2}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1377
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v1, v4}, Lcom/android/systemui/volume/VolumeDialogController;->notifyVisible(Z)V

    .line 1335
    :cond_8
    return-void

    .line 1369
    .restart local v0    # "show":Z
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    sget-boolean v1, Lcom/android/systemui/volume/SecVolumeDialog;->mIsKnoxDesktopMode:Z

    if-eqz v1, :cond_c

    .line 1370
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v1}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->show()V

    goto :goto_0

    .line 1372
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->startShow()V

    goto :goto_0
.end method

.method private showSafetyWarningH(I)V
    .locals 10
    .param p1, "flags"    # I

    .prologue
    .line 2205
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    if-nez v6, :cond_0

    .line 2206
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 2208
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    const/4 v7, -0x1

    invoke-static {v6, v7}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set14(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 2209
    const/high16 v6, 0x10000000

    and-int/2addr v6, p1

    if-eqz v6, :cond_3

    .line 2210
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2211
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v6, :cond_2

    .line 2212
    sget-boolean v6, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v6, :cond_1

    .line 2213
    sget-object v6, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "SafetyWarning dismissed by FLAG_DISMISS_UI_WARNINGS"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    :cond_1
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafetyWarningShowing:Z

    .line 2215
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->onDismissSafeVolumeWarning()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v7

    .line 2204
    :goto_0
    return-void

    .line 2210
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 2219
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2220
    :try_start_1
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v6, :cond_6

    .line 2221
    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-nez v6, :cond_4

    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsShowingSCoverWarning:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v6, :cond_5

    :cond_4
    :goto_1
    monitor-exit v7

    .line 2225
    return-void

    .line 2222
    :cond_5
    :try_start_2
    sget-object v6, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "show warning popup on the s view cover and than return"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/systemui/volume/SecVolumeDialog;->sendCoverWarningMsgIntent(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 2219
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6

    .line 2227
    :cond_6
    :try_start_3
    new-instance v6, Lcom/android/systemui/volume/SecVolumeDialog$14;

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    .line 2228
    iget-object v9, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v9}, Lcom/android/systemui/volume/VolumeDialogController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v9

    .line 2227
    invoke-direct {v6, p0, v8, v9}, Lcom/android/systemui/volume/SecVolumeDialog$14;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/content/Context;Landroid/media/AudioManager;)V

    iput-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    .line 2238
    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v6, :cond_9

    .line 2239
    sget-object v6, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    .line 2240
    const-string/jumbo v8, "cover open, warning popup window type is set to TYPE_VOLUME_OVERLAY"

    .line 2239
    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v6}, Lcom/android/systemui/volume/SafetyWarningDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 2242
    const/16 v8, 0x7e4

    .line 2241
    invoke-virtual {v6, v8}, Landroid/view/Window;->setType(I)V

    .line 2250
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v6}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v6, :cond_a

    .line 2254
    :cond_7
    :goto_3
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v6}, Lcom/android/systemui/volume/SafetyWarningDialog;->show()V

    .line 2255
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafetyWarningShowing:Z

    .line 2256
    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-nez v6, :cond_8

    .line 2258
    sget-object v6, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Show warning popup on the s view cover"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2260
    iget v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    const/4 v8, 0x6

    if-ne v6, v8, :cond_b

    .line 2261
    new-instance v5, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2262
    const v8, 0x7f040175

    .line 2261
    invoke-direct {v5, v6, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2270
    .local v5, "remoteViews":Landroid/widget/RemoteViews;
    :goto_4
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2271
    .local v0, "coverIntent":Landroid/content/Intent;
    const-string/jumbo v6, "visibility"

    const/4 v8, 0x1

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2272
    const-string/jumbo v6, "type"

    const-string/jumbo v8, "volume"

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2273
    const-string/jumbo v6, "remote"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2275
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "android.view.volumepanel.CLICK_BUTTON1"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2276
    .local v1, "intent1":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    .line 2277
    const/high16 v9, 0x8000000

    .line 2276
    invoke-static {v6, v8, v1, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 2279
    .local v3, "pendingIntent1":Landroid/app/PendingIntent;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "android.view.volumepanel.CLICK_BUTTON2"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2280
    .local v2, "intent2":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    .line 2281
    const/high16 v9, 0x8000000

    .line 2280
    invoke-static {v6, v8, v2, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 2283
    .local v4, "pendingIntent2":Landroid/app/PendingIntent;
    const v6, 0x7f13040c

    invoke-virtual {v5, v6, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2285
    const v6, 0x7f13040d

    invoke-virtual {v5, v6, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2287
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2288
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsShowingSCoverWarning:Z

    .line 2290
    .end local v0    # "coverIntent":Landroid/content/Intent;
    .end local v1    # "intent1":Landroid/content/Intent;
    .end local v2    # "intent2":Landroid/content/Intent;
    .end local v3    # "pendingIntent1":Landroid/app/PendingIntent;
    .end local v4    # "pendingIntent2":Landroid/app/PendingIntent;
    .end local v5    # "remoteViews":Landroid/widget/RemoteViews;
    :cond_8
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/systemui/volume/SecVolumeDialog;->recheckH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v7

    .line 2292
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->rescheduleTimeoutH()V

    goto/16 :goto_0

    .line 2244
    :cond_9
    :try_start_4
    sget-object v6, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    .line 2245
    const-string/jumbo v8, "cover closed, warning popup window type is set to TYPE_KEYGUARD_DIALOG"

    .line 2244
    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v6}, Lcom/android/systemui/volume/SafetyWarningDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 2247
    const/16 v8, 0x7d9

    .line 2246
    invoke-virtual {v6, v8}, Landroid/view/Window;->setType(I)V

    goto/16 :goto_2

    .line 2251
    :cond_a
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/android/systemui/volume/SecVolumeDialog;->dismissH(I)V

    goto/16 :goto_3

    .line 2263
    :cond_b
    iget v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    const/16 v8, 0x8

    if-ne v6, v8, :cond_c

    .line 2264
    new-instance v5, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2265
    const v8, 0x7f040174

    .line 2264
    invoke-direct {v5, v6, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v5    # "remoteViews":Landroid/widget/RemoteViews;
    goto/16 :goto_4

    .line 2267
    .end local v5    # "remoteViews":Landroid/widget/RemoteViews;
    :cond_c
    new-instance v5, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2268
    const v8, 0x7f040173

    .line 2267
    invoke-direct {v5, v6, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .restart local v5    # "remoteViews":Landroid/widget/RemoteViews;
    goto/16 :goto_4
.end method

.method private showVolumeDnDToast()V
    .locals 3

    .prologue
    .line 3482
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeDnDToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 3484
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    .line 3485
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0f066b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3486
    const/4 v2, 0x0

    .line 3483
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeDnDToast:Landroid/widget/Toast;

    .line 3488
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeDnDToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3481
    return-void
.end method

.method private showVolumeLimiterDialog()V
    .locals 3

    .prologue
    .line 3415
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3416
    return-void

    .line 3418
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3419
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 3420
    const v1, 0x7f0f04e1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 3423
    new-instance v1, Lcom/android/systemui/volume/SecVolumeDialog$17;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/SecVolumeDialog$17;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    .line 3422
    const v2, 0x7f0f04e3

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3456
    new-instance v1, Lcom/android/systemui/volume/SecVolumeDialog$18;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/SecVolumeDialog$18;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3463
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    .line 3464
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7e4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 3465
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/systemui/volume/SecVolumeDialog$19;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/SecVolumeDialog$19;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 3476
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 3477
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 3414
    :cond_1
    return-void
.end method

.method private trimObsoleteH()V
    .locals 4

    .prologue
    .line 1696
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_0

    .line 1697
    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "trimObsoleteH"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1699
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1700
    .local v1, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->dynamic:Z

    if-eqz v2, :cond_1

    .line 1702
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1703
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1704
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1705
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1698
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1695
    .end local v1    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    :cond_2
    return-void
.end method

.method private updateDefaultTintColor()V
    .locals 2

    .prologue
    .line 3193
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateDefaultTintColor()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3194
    const-string/jumbo v0, "#56c0e5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconActiveDefaultColor:Landroid/content/res/ColorStateList;

    .line 3195
    const-string/jumbo v0, "#000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeTitleDefaultColor:Landroid/content/res/ColorStateList;

    .line 3196
    const-string/jumbo v0, "#fafafa"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumePanelBgDefaultColor:Landroid/content/res/ColorStateList;

    .line 3197
    const-string/jumbo v0, "#ff00a0ce"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbDefaultColor:Landroid/content/res/ColorStateList;

    .line 3198
    const-string/jumbo v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbDisabledDefaultColor:Landroid/content/res/ColorStateList;

    .line 3199
    const-string/jumbo v0, "#ff00a0ce"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressDefaultColor:Landroid/content/res/ColorStateList;

    .line 3200
    const-string/jumbo v0, "#ffC9c9c9"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgDefaultColor:Landroid/content/res/ColorStateList;

    .line 3201
    const-string/jumbo v0, "#919799"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconMutedDefaultColor:Landroid/content/res/ColorStateList;

    .line 3202
    const-string/jumbo v0, "#f1662f"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconEarShockDefaultColor:Landroid/content/res/ColorStateList;

    .line 3203
    const-string/jumbo v0, "#919799"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonDefaultColor:Landroid/content/res/ColorStateList;

    .line 3192
    return-void
.end method

.method private updateDialogBottomMarginH()V
    .locals 10

    .prologue
    .line 1520
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCollapseTime:J

    sub-long v2, v6, v8

    .line 1521
    .local v2, "diff":J
    iget-wide v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCollapseTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getConservativeCollapseDuration()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-gez v6, :cond_2

    const/4 v1, 0x1

    .line 1522
    .local v1, "collapsing":Z
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1523
    .local v4, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v5, v6, Landroid/content/res/Configuration;->orientation:I

    .line 1524
    .local v5, "orientation":I
    if-eqz v1, :cond_3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    .line 1527
    .local v0, "bottomMargin":I
    :goto_1
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v0, v6, :cond_1

    .line 1528
    sget-boolean v6, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v6, :cond_0

    .line 1529
    sget-object v6, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "bottomMargin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    :cond_0
    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1531
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1519
    :cond_1
    return-void

    .line 1521
    .end local v0    # "bottomMargin":I
    .end local v1    # "collapsing":Z
    .end local v4    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v5    # "orientation":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "collapsing":Z
    goto :goto_0

    .line 1525
    .restart local v4    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v5    # "orientation":I
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1526
    const v7, 0x7f0d02d8

    .line 1525
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .restart local v0    # "bottomMargin":I
    goto :goto_1
.end method

.method private updateExpandButtonH()V
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/high16 v7, 0x43340000    # 180.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 1579
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_0

    .line 1580
    sget-object v1, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateExpandButtonH"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationRunning:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 1582
    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationRunning:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1583
    return-void

    :cond_1
    move v1, v3

    .line 1581
    goto :goto_0

    .line 1586
    :cond_2
    sget-boolean v1, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-eqz v1, :cond_4

    .line 1587
    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v1, :cond_3

    .line 1588
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    const-string/jumbo v4, "rotation"

    new-array v5, v5, [F

    aput v6, v5, v2

    aput v7, v5, v3

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1589
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1590
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1599
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v1, :cond_5

    .line 1600
    const v1, 0x7f0f04c3

    .line 1599
    :goto_2
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1578
    return-void

    .line 1592
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    const-string/jumbo v4, "rotation"

    new-array v5, v5, [F

    aput v7, v5, v2

    aput v6, v5, v3

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1593
    .restart local v0    # "animator":Landroid/animation/ObjectAnimator;
    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1594
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 1597
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setRotation(F)V

    goto :goto_1

    .line 1600
    :cond_5
    const v1, 0x7f0f04c2

    goto :goto_2
.end method

.method private updateExpandedWindowHeightH()V
    .locals 8

    .prologue
    .line 910
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v5}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 911
    .local v4, "window":Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 912
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 913
    .local v3, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 914
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 916
    .local v1, "h":I
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDndView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 917
    iget v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAfterHeight:I

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDndView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 921
    :goto_0
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-le v5, v1, :cond_0

    .line 923
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 925
    :cond_0
    sget-object v5, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "EXPAND HEIGHT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    invoke-virtual {v4, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 909
    return-void

    .line 919
    :cond_1
    iget v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAfterHeight:I

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0
.end method

.method private updateLockScreenVolumeRowH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 7
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    const/4 v3, 0x0

    .line 1975
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    if-nez v4, :cond_0

    .line 1976
    return-void

    .line 1977
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget-object v4, v4, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .line 1978
    .local v2, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    if-nez v2, :cond_1

    .line 1979
    return-void

    .line 1980
    :cond_1
    invoke-static {p1, v2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Lcom/android/systemui/volume/VolumeDialogController$StreamState;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .line 1981
    sget-boolean v4, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v4, :cond_2

    .line 1982
    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateLockScreenVolumeRowH s="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", ss.level : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1983
    const-string/jumbo v6, ", row.lastAudibleLevel : "

    .line 1982
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1983
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get13(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    .line 1982
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1983
    const-string/jumbo v6, ", row.ss.muted : "

    .line 1982
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1984
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    .line 1982
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    :cond_2
    iget v4, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    if-lez v4, :cond_3

    .line 1986
    iget v4, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    invoke-static {p1, v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set13(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 1988
    :cond_3
    iget v4, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 1989
    const/4 v4, -0x1

    invoke-static {p1, v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set14(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 1992
    :cond_4
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    .line 1993
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->semIsSafeMediaVolumeDeviceOn()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOn:Z

    .line 1994
    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mIsSafeMediaVolumeDeviceOn : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOn:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    :goto_0
    iget v4, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    if-nez v4, :cond_6

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get9(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v1

    .line 2002
    .local v1, "iconRes":I
    :goto_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2003
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    iget-object v5, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2005
    const/4 v0, 0x1

    .line 2006
    .local v0, "enableSlider":Z
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    if-eqz v4, :cond_7

    .line 2007
    .local v3, "vlevel":I
    :goto_2
    const/4 v4, 0x1

    invoke-direct {p0, p1, v4, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->updateLockScreenVolumeRowSliderH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;ZI)V

    .line 1973
    return-void

    .line 1996
    .end local v0    # "enableSlider":Z
    .end local v1    # "iconRes":I
    .end local v3    # "vlevel":I
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPinDevice:I

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->isSafeMediaVolumeDeviceOn(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    .line 1997
    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mIsSafeMediaVolumeDeviceOnForMultiSound : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2001
    :cond_6
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get10(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v1

    .restart local v1    # "iconRes":I
    goto :goto_1

    .line 2006
    .restart local v0    # "enableSlider":Z
    :cond_7
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v4

    iget v3, v4, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    goto :goto_2
.end method

.method private updateLockScreenVolumeRowSliderH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;ZI)V
    .locals 5
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p2, "enable"    # Z
    .param p3, "vlevel"    # I

    .prologue
    const/4 v4, 0x3

    .line 2132
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    .line 2136
    .local v2, "progress":I
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->setDualColorSeekbarforLockScreen(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 2138
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 2139
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->getImpliedMediaVolumeLevel(I)I

    move-result v0

    .line 2144
    .local v0, "level":I
    :goto_0
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 2145
    move v1, p3

    .line 2159
    .local v1, "newProgress":I
    :goto_1
    if-eq v2, v1, :cond_0

    .line 2160
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2131
    :cond_0
    return-void

    .line 2141
    .end local v0    # "level":I
    .end local v1    # "newProgress":I
    :cond_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/systemui/volume/SecVolumeDialog;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v0

    .restart local v0    # "level":I
    goto :goto_0

    .line 2147
    :cond_2
    iget v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLimit:I

    add-int/lit8 v3, v3, -0x1

    if-ne p3, v3, :cond_6

    .line 2148
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v3

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOn:Z

    if-nez v3, :cond_4

    .line 2149
    :cond_3
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_5

    iget-boolean v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    .line 2148
    if-eqz v3, :cond_5

    .line 2150
    :cond_4
    mul-int/lit8 v1, p3, 0x6a

    .restart local v1    # "newProgress":I
    goto :goto_1

    .line 2152
    .end local v1    # "newProgress":I
    :cond_5
    mul-int/lit8 v1, p3, 0x64

    .restart local v1    # "newProgress":I
    goto :goto_1

    .line 2155
    .end local v1    # "newProgress":I
    :cond_6
    mul-int/lit8 v1, p3, 0x64

    .restart local v1    # "newProgress":I
    goto :goto_1
.end method

.method private updateRowsH()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, -0x2

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 1608
    sget-boolean v8, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v8, :cond_0

    .line 1609
    sget-object v8, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "updateRowsH"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    :cond_0
    sget-boolean v8, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-nez v8, :cond_1

    .line 1611
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->trimObsoleteH()V

    .line 1613
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    if-nez v8, :cond_2

    .line 1614
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1617
    :cond_2
    iget v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRowHeight:I

    if-eqz v8, :cond_3

    iget v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRowHeight:I

    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v10}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    if-eq v8, v10, :cond_4

    .line 1618
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRowHeight:I

    .line 1621
    :cond_4
    const/4 v6, 0x0

    .line 1623
    .local v6, "visibleIndex":I
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "row$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1624
    .local v3, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    if-ne v3, v8, :cond_d

    const/4 v0, 0x1

    .line 1625
    .local v0, "isActive":Z
    :goto_1
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v8

    const/16 v10, 0xa

    if-ne v8, v10, :cond_6

    if-eqz v0, :cond_e

    .line 1631
    :cond_6
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v8

    const/16 v10, 0xb

    if-ne v8, v10, :cond_7

    if-eqz v0, :cond_10

    .line 1638
    :cond_7
    :goto_2
    invoke-direct {p0, v3, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->isVisibleH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z

    move-result v5

    .line 1639
    .local v5, "visible":Z
    if-eqz v0, :cond_12

    .line 1640
    iput v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVisibleRowIndex:I

    .line 1644
    :cond_8
    :goto_3
    sget-boolean v8, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStreamChanged:Z

    if-eqz v8, :cond_9

    .line 1645
    invoke-direct {p0, v3, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateVolumeRowFocusable(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)V

    .line 1648
    :cond_9
    iget-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-nez v8, :cond_a

    sget-boolean v8, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-eqz v8, :cond_a

    sget-boolean v8, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStreamChanged:Z

    if-eqz v8, :cond_b

    .line 1649
    :cond_a
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 1650
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v10

    if-eqz v5, :cond_13

    iget-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    :goto_4
    invoke-static {v10, v8}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 1651
    if-eqz v0, :cond_b

    .line 1652
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/view/View;->setAlpha(F)V

    .line 1653
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 1654
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/view/View;->setAlpha(F)V

    .line 1659
    :cond_b
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->updateVolumeRowHeaderVisibleH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 1660
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1661
    iget-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v8, :cond_5

    if-eqz v5, :cond_5

    .line 1662
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 1663
    iget v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAfterHeight:I

    iget v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRowHeight:I

    add-int/2addr v8, v10

    iput v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAfterHeight:I

    .line 1665
    :cond_c
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 1666
    iget v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAfterHeight:I

    .line 1667
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 1668
    const v11, 0x7f0d02d5

    .line 1667
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 1666
    add-int/2addr v8, v10

    iput v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAfterHeight:I

    goto/16 :goto_0

    .line 1624
    .end local v0    # "isActive":Z
    .end local v5    # "visible":Z
    :cond_d
    const/4 v0, 0x0

    .restart local v0    # "isActive":Z
    goto/16 :goto_1

    .line 1626
    :cond_e
    sget-boolean v8, Lcom/android/systemui/volume/VolumeDialogController;->mIsSupportTvVolumeControl:Z

    if-eqz v8, :cond_f

    .line 1627
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v8

    invoke-direct {p0, v8, v14}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamImportantH(IZ)V

    goto/16 :goto_2

    .line 1629
    :cond_f
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v8

    invoke-direct {p0, v8, v9}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamImportantH(IZ)V

    goto/16 :goto_2

    .line 1632
    :cond_10
    iget v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPinDevice:I

    if-eqz v8, :cond_11

    .line 1633
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v8

    invoke-direct {p0, v8, v14}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamImportantH(IZ)V

    goto/16 :goto_2

    .line 1635
    :cond_11
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v8

    invoke-direct {p0, v8, v9}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamImportantH(IZ)V

    goto/16 :goto_2

    .line 1641
    .restart local v5    # "visible":Z
    :cond_12
    if-eqz v5, :cond_8

    .line 1642
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_13
    move v8, v9

    .line 1650
    goto/16 :goto_4

    .line 1673
    .end local v0    # "isActive":Z
    .end local v3    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .end local v5    # "visible":Z
    :cond_14
    iget-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-nez v8, :cond_16

    .line 1674
    iget v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRowHeight:I

    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v10

    add-int/2addr v8, v10

    .line 1675
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v10

    .line 1674
    add-int/2addr v8, v10

    iput v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAfterHeight:I

    .line 1676
    sget-boolean v8, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-nez v8, :cond_15

    .line 1677
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1678
    const/4 v8, -0x1

    .line 1677
    invoke-direct {v2, v8, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1679
    .local v2, "parms":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1680
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->invalidate()V

    .line 1682
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v8}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 1683
    .local v7, "window":Landroid/view/Window;
    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1685
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iput v13, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1686
    invoke-virtual {v7, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1692
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "parms":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7    # "window":Landroid/view/Window;
    :cond_15
    :goto_5
    sput-boolean v9, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStreamChanged:Z

    .line 1607
    return-void

    .line 1689
    :cond_16
    iget v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAfterHeight:I

    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v10

    add-int/2addr v8, v10

    .line 1690
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v10

    .line 1689
    add-int/2addr v8, v10

    iput v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAfterHeight:I

    goto :goto_5
.end method

.method private updateTintColor()V
    .locals 7

    .prologue
    const v6, 0x1080a9b

    const/4 v5, 0x0

    .line 3160
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3161
    .local v0, "res":Landroid/content/res/Resources;
    sget-object v3, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateTintColor()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3162
    const v3, 0x7f0b0112

    invoke-virtual {v0, v3, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconActiveColor:Landroid/content/res/ColorStateList;

    .line 3163
    const v3, 0x7f0b0118

    invoke-virtual {v0, v3, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeTitleColor:Landroid/content/res/ColorStateList;

    .line 3164
    const v3, 0x7f0b0119

    invoke-virtual {v0, v3, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumePanelBgColor:Landroid/content/res/ColorStateList;

    .line 3166
    const v3, 0x1060125

    .line 3165
    invoke-virtual {v0, v3, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbColor:Landroid/content/res/ColorStateList;

    .line 3168
    const v3, 0x1060126

    .line 3167
    invoke-virtual {v0, v3, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbDisabledColor:Landroid/content/res/ColorStateList;

    .line 3170
    const v3, 0x106011d

    .line 3169
    invoke-virtual {v0, v3, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressColor:Landroid/content/res/ColorStateList;

    .line 3172
    const v3, 0x106011c

    .line 3171
    invoke-virtual {v0, v3, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgColor:Landroid/content/res/ColorStateList;

    .line 3173
    const v3, 0x7f0b0113

    invoke-virtual {v0, v3, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconMutedColor:Landroid/content/res/ColorStateList;

    .line 3174
    const v3, 0x7f0b0114

    invoke-virtual {v0, v3, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconEarShockColor:Landroid/content/res/ColorStateList;

    .line 3175
    const v3, 0x7f0b0115

    invoke-virtual {v0, v3, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonColor:Landroid/content/res/ColorStateList;

    .line 3177
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "row$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 3178
    .local v1, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    .line 3179
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v0, v6, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3182
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v0, v6, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3188
    .end local v1    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3159
    return-void
.end method

.method private updateVolumeRowFocusable(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)V
    .locals 4
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p2, "isActive"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2021
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAccessibility:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->-get0(Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2022
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v0, :cond_1

    .line 2023
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 2024
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setFocusableInTouchMode(Z)V

    .line 2025
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->requestFocus()Z

    .line 2020
    :cond_0
    :goto_0
    return-void

    .line 2027
    :cond_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 2028
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setFocusableInTouchMode(Z)V

    .line 2029
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->clearFocus()V

    goto :goto_0
.end method

.method private updateVolumeRowH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 39
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 1795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v34, v0

    if-nez v34, :cond_0

    .line 1796
    return-void

    .line 1797
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    move-object/from16 v34, v0

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .line 1798
    .local v30, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    if-nez v30, :cond_1

    .line 1799
    return-void

    .line 1800
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Lcom/android/systemui/volume/VolumeDialogController$StreamState;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .line 1801
    sget-boolean v34, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v34, :cond_2

    .line 1802
    sget-object v34, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "updateVolumeRowH s="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, ", ss.level : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    .line 1803
    const-string/jumbo v36, ", row.lastAudibleLevel : "

    .line 1802
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    .line 1803
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get13(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v36

    .line 1802
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    .line 1803
    const-string/jumbo v36, ", row.ss.muted : "

    .line 1802
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    .line 1804
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v36

    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    move/from16 v36, v0

    .line 1802
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    :cond_2
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v34, v0

    if-lez v34, :cond_3

    .line 1806
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v34, v0

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set13(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 1808
    :cond_3
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v34, v0

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_4

    .line 1809
    const/16 v34, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set14(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 1811
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v34

    const/16 v35, 0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_11

    const/16 v21, 0x1

    .line 1812
    .local v21, "isRingStream":Z
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v34

    const/16 v35, 0x5

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_12

    const/16 v17, 0x1

    .line 1813
    .local v17, "isNotificationStream":Z
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v34

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_13

    const/16 v25, 0x1

    .line 1814
    .local v25, "isSystemStream":Z
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v34

    const/16 v35, 0x4

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_14

    const/4 v12, 0x1

    .line 1815
    .local v12, "isAlarmStream":Z
    :goto_3
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v34

    const/16 v35, 0x3

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_15

    const/4 v15, 0x1

    .line 1816
    .local v15, "isMusicStream":Z
    :goto_4
    if-eqz v21, :cond_17

    .line 1817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_16

    const/16 v22, 0x1

    .line 1818
    .local v22, "isRingVibrate":Z
    :goto_5
    if-eqz v17, :cond_19

    .line 1819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_18

    const/16 v18, 0x1

    .line 1820
    .local v18, "isNotificationVibrate":Z
    :goto_6
    if-eqz v25, :cond_1b

    .line 1821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_1a

    const/16 v26, 0x1

    .line 1822
    .local v26, "isSystemVibrate":Z
    :goto_7
    if-eqz v21, :cond_1d

    .line 1823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v34, v0

    if-nez v34, :cond_1c

    const/16 v20, 0x1

    .line 1824
    .local v20, "isRingSilent":Z
    :goto_8
    if-eqz v17, :cond_1f

    .line 1825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v34, v0

    if-nez v34, :cond_1e

    const/16 v16, 0x1

    .line 1826
    .local v16, "isNotificationSilent":Z
    :goto_9
    if-eqz v25, :cond_21

    .line 1827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v34, v0

    if-nez v34, :cond_20

    const/16 v24, 0x1

    .line 1828
    .local v24, "isSystemSilent":Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    move/from16 v34, v0

    const/16 v35, 0x3

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_22

    const/16 v27, 0x1

    .line 1829
    .local v27, "isZenAlarms":Z
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    move/from16 v34, v0

    const/16 v35, 0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_23

    const/16 v28, 0x1

    .line 1830
    .local v28, "isZenNone":Z
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    move/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_24

    const/16 v29, 0x1

    .line 1831
    .local v29, "isZenPriority":Z
    :goto_d
    if-nez v21, :cond_5

    if-eqz v25, :cond_25

    :cond_5
    move/from16 v23, v28

    .line 1832
    :goto_e
    if-eqz v21, :cond_26

    move/from16 v19, v29

    .line 1838
    :goto_f
    const/16 v33, 0x0

    .line 1839
    .local v33, "zenMuted":Z
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v34

    if-eqz v34, :cond_27

    .line 1840
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v34

    const/16 v35, 0x6

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_28

    const/4 v13, 0x1

    .line 1841
    .local v13, "isCallOrBTSco":Z
    :goto_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mVoiceCapable:Z

    move/from16 v34, v0

    if-eqz v34, :cond_2a

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v34

    const/16 v35, 0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_29

    const/4 v14, 0x1

    .line 1845
    .local v14, "isMainStream":Z
    :goto_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    move/from16 v34, v0

    const/16 v35, 0x4

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_6

    .line 1846
    sget-object v34, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v35, "expandbutton gets invisible!"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    move-object/from16 v34, v0

    const/16 v35, 0x8

    invoke-virtual/range {v34 .. v35}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1851
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog;->updateVolumeRowHeaderVisibleH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 1854
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 1856
    .local v31, "text":Ljava/lang/String;
    if-eqz v15, :cond_2c

    .line 1857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/media/AudioManager;->semIsSafeMediaVolumeDeviceOn()Z

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOn:Z

    .line 1858
    sget-object v34, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "mIsSafeMediaVolumeDeviceOn : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOn:Z

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->routedToBluetooth:Z

    move/from16 v34, v0

    if-eqz v34, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v34, v0

    if-eqz v34, :cond_8

    .line 1860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/bluetooth/BluetoothA2dp;->semGetActiveStreamDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    .line 1861
    .local v6, "dev":Landroid/bluetooth/BluetoothDevice;
    if-eqz v6, :cond_7

    .line 1862
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumeDialog;->mBTDeviceName:Ljava/lang/String;

    .line 1864
    :cond_7
    sget-object v34, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "mBTDeviceName = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mBTDeviceName:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mBTDeviceName:Ljava/lang/String;

    move-object/from16 v34, v0

    if-eqz v34, :cond_8

    .line 1866
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, " ("

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mBTDeviceName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, ")"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1895
    .end local v6    # "dev":Landroid/bluetooth/BluetoothDevice;
    :cond_8
    :goto_12
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 1898
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mAutomute:Z

    move/from16 v34, v0

    if-nez v34, :cond_9

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muteSupported:Z

    move/from16 v34, v0

    if-eqz v34, :cond_31

    :cond_9
    const/4 v10, 0x1

    .line 1899
    .local v10, "iconEnabled":Z
    :goto_13
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1900
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v35

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v34

    if-eqz v34, :cond_a

    .line 1901
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v34

    const/16 v36, 0x6

    move/from16 v0, v34

    move/from16 v1, v36

    if-ne v0, v1, :cond_33

    :cond_a
    if-eqz v10, :cond_32

    const/16 v34, 0x0

    .line 1900
    :goto_14
    move-object/from16 v0, v35

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1902
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v35

    if-eqz v10, :cond_34

    const/high16 v34, 0x3f800000    # 1.0f

    :goto_15
    move-object/from16 v0, v35

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 1903
    if-nez v22, :cond_b

    if-eqz v18, :cond_35

    :cond_b
    const v11, 0x1080a1a

    .line 1908
    .local v11, "iconRes":I
    :goto_16
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get2(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v34

    move/from16 v0, v34

    if-eq v11, v0, :cond_c

    .line 1909
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set2(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 1910
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1915
    :cond_c
    const v34, 0x1080a1a

    move/from16 v0, v34

    if-ne v11, v0, :cond_3a

    const/16 v34, 0x3

    :goto_17
    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set11(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 1919
    if-eqz v10, :cond_44

    .line 1920
    if-eqz v21, :cond_41

    .line 1921
    if-eqz v22, :cond_3f

    .line 1922
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    .line 1923
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aput-object v37, v36, v38

    const v37, 0x7f0f04d7

    .line 1922
    move-object/from16 v0, v35

    move/from16 v1, v37

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1947
    :goto_18
    if-eqz v18, :cond_45

    .line 1948
    :cond_d
    move v9, v14

    .line 1949
    :goto_19
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v34

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    move/from16 v34, v0

    if-eqz v34, :cond_46

    .line 1950
    if-nez v20, :cond_e

    if-nez v22, :cond_e

    if-nez v21, :cond_46

    :cond_e
    const/16 v32, 0x0

    .line 1953
    .local v32, "vlevel":I
    :goto_1a
    if-nez v9, :cond_48

    .line 1954
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v34

    const v35, 0x3ecccccd    # 0.4f

    invoke-virtual/range {v34 .. v35}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 1955
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v34

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 1962
    :cond_f
    :goto_1b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/volume/SecVolumeDialog;->refreshIconTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)V

    .line 1964
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v32

    invoke-direct {v0, v1, v9, v2}, Lcom/android/systemui/volume/SecVolumeDialog;->updateVolumeRowSliderH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;ZI)V

    .line 1965
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/systemui/volume/SecVolumeDialog;->isValidZenMode(I)Z

    move-result v34

    if-eqz v34, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    move/from16 v34, v0

    if-eqz v34, :cond_10

    .line 1966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f0f066b

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 1967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDndView:Landroid/view/ViewGroup;

    move-object/from16 v34, v0

    const v35, 0x7f13041e

    invoke-virtual/range {v34 .. v35}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 1968
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog;->updateVolumeRowforZenModeH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 1794
    :cond_10
    return-void

    .line 1811
    .end local v10    # "iconEnabled":Z
    .end local v11    # "iconRes":I
    .end local v12    # "isAlarmStream":Z
    .end local v13    # "isCallOrBTSco":Z
    .end local v14    # "isMainStream":Z
    .end local v15    # "isMusicStream":Z
    .end local v16    # "isNotificationSilent":Z
    .end local v17    # "isNotificationStream":Z
    .end local v18    # "isNotificationVibrate":Z
    .end local v20    # "isRingSilent":Z
    .end local v21    # "isRingStream":Z
    .end local v22    # "isRingVibrate":Z
    .end local v24    # "isSystemSilent":Z
    .end local v25    # "isSystemStream":Z
    .end local v26    # "isSystemVibrate":Z
    .end local v27    # "isZenAlarms":Z
    .end local v28    # "isZenNone":Z
    .end local v29    # "isZenPriority":Z
    .end local v31    # "text":Ljava/lang/String;
    .end local v32    # "vlevel":I
    .end local v33    # "zenMuted":Z
    :cond_11
    const/16 v21, 0x0

    .restart local v21    # "isRingStream":Z
    goto/16 :goto_0

    .line 1812
    :cond_12
    const/16 v17, 0x0

    .restart local v17    # "isNotificationStream":Z
    goto/16 :goto_1

    .line 1813
    :cond_13
    const/16 v25, 0x0

    .restart local v25    # "isSystemStream":Z
    goto/16 :goto_2

    .line 1814
    :cond_14
    const/4 v12, 0x0

    .restart local v12    # "isAlarmStream":Z
    goto/16 :goto_3

    .line 1815
    :cond_15
    const/4 v15, 0x0

    .restart local v15    # "isMusicStream":Z
    goto/16 :goto_4

    .line 1817
    :cond_16
    const/16 v22, 0x0

    .restart local v22    # "isRingVibrate":Z
    goto/16 :goto_5

    .line 1816
    .end local v22    # "isRingVibrate":Z
    :cond_17
    const/16 v22, 0x0

    .restart local v22    # "isRingVibrate":Z
    goto/16 :goto_5

    .line 1819
    :cond_18
    const/16 v18, 0x0

    .restart local v18    # "isNotificationVibrate":Z
    goto/16 :goto_6

    .line 1818
    .end local v18    # "isNotificationVibrate":Z
    :cond_19
    const/16 v18, 0x0

    .restart local v18    # "isNotificationVibrate":Z
    goto/16 :goto_6

    .line 1821
    :cond_1a
    const/16 v26, 0x0

    .restart local v26    # "isSystemVibrate":Z
    goto/16 :goto_7

    .line 1820
    .end local v26    # "isSystemVibrate":Z
    :cond_1b
    const/16 v26, 0x0

    .restart local v26    # "isSystemVibrate":Z
    goto/16 :goto_7

    .line 1823
    :cond_1c
    const/16 v20, 0x0

    .restart local v20    # "isRingSilent":Z
    goto/16 :goto_8

    .line 1822
    .end local v20    # "isRingSilent":Z
    :cond_1d
    const/16 v20, 0x0

    .restart local v20    # "isRingSilent":Z
    goto/16 :goto_8

    .line 1825
    :cond_1e
    const/16 v16, 0x0

    .restart local v16    # "isNotificationSilent":Z
    goto/16 :goto_9

    .line 1824
    .end local v16    # "isNotificationSilent":Z
    :cond_1f
    const/16 v16, 0x0

    .restart local v16    # "isNotificationSilent":Z
    goto/16 :goto_9

    .line 1827
    :cond_20
    const/16 v24, 0x0

    .restart local v24    # "isSystemSilent":Z
    goto/16 :goto_a

    .line 1826
    .end local v24    # "isSystemSilent":Z
    :cond_21
    const/16 v24, 0x0

    .restart local v24    # "isSystemSilent":Z
    goto/16 :goto_a

    .line 1828
    :cond_22
    const/16 v27, 0x0

    .restart local v27    # "isZenAlarms":Z
    goto/16 :goto_b

    .line 1829
    :cond_23
    const/16 v28, 0x0

    .restart local v28    # "isZenNone":Z
    goto/16 :goto_c

    .line 1830
    :cond_24
    const/16 v29, 0x0

    .restart local v29    # "isZenPriority":Z
    goto/16 :goto_d

    .line 1831
    :cond_25
    const/16 v23, 0x0

    .local v23, "isRingZenNone":Z
    goto/16 :goto_e

    .line 1832
    .end local v23    # "isRingZenNone":Z
    :cond_26
    const/16 v19, 0x0

    .local v19, "isRingLimited":Z
    goto/16 :goto_f

    .line 1839
    .end local v19    # "isRingLimited":Z
    .restart local v33    # "zenMuted":Z
    :cond_27
    const/4 v13, 0x1

    .restart local v13    # "isCallOrBTSco":Z
    goto/16 :goto_10

    .line 1840
    .end local v13    # "isCallOrBTSco":Z
    :cond_28
    const/4 v13, 0x0

    .restart local v13    # "isCallOrBTSco":Z
    goto/16 :goto_10

    .line 1841
    :cond_29
    const/4 v14, 0x0

    .restart local v14    # "isMainStream":Z
    goto/16 :goto_11

    .line 1842
    .end local v14    # "isMainStream":Z
    :cond_2a
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v34

    const/16 v35, 0x5

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_2b

    const/4 v14, 0x1

    .restart local v14    # "isMainStream":Z
    goto/16 :goto_11

    .end local v14    # "isMainStream":Z
    :cond_2b
    const/4 v14, 0x0

    .restart local v14    # "isMainStream":Z
    goto/16 :goto_11

    .line 1869
    .restart local v31    # "text":Ljava/lang/String;
    :cond_2c
    sget-boolean v34, Lcom/android/systemui/volume/VolumeDialogController;->mIsSupportTvVolumeControl:Z

    if-eqz v34, :cond_2d

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v34

    const/16 v35, 0xa

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_2d

    .line 1870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/hardware/display/SemWifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_12

    .line 1871
    :cond_2d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mPinDevice:I

    move/from16 v34, v0

    if-eqz v34, :cond_2e

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v34

    const/16 v35, 0xb

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_2e

    .line 1872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mPinDevice:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Landroid/media/AudioManager;->isSafeMediaVolumeDeviceOn(I)Z

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    .line 1873
    sget-object v34, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "mIsSafeMediaVolumeDeviceOnForMultiSound : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mPinDevice:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Landroid/media/AudioManager;->getPinDeviceName(I)Ljava/lang/String;

    move-result-object v7

    .line 1875
    .local v7, "deviceName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mPinDevice:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Landroid/media/AudioManager;->getPinAppName(I)Ljava/lang/String;

    move-result-object v3

    .line 1876
    .local v3, "appName":Ljava/lang/String;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, " ("

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, ")"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_12

    .line 1877
    .end local v3    # "appName":Ljava/lang/String;
    .end local v7    # "deviceName":Ljava/lang/String;
    :cond_2e
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v34

    const/16 v35, 0x6

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_8

    .line 1878
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getVisibility()I

    move-result v34

    if-nez v34, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mHfp:Landroid/bluetooth/BluetoothHeadset;

    move-object/from16 v34, v0

    if-eqz v34, :cond_8

    .line 1879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mHfp:Landroid/bluetooth/BluetoothHeadset;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v8

    .line 1880
    .local v8, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "conDevice$iterator":Ljava/util/Iterator;
    :cond_2f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_30

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 1881
    .local v4, "conDevice":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mHfp:Landroid/bluetooth/BluetoothHeadset;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v34

    if-eqz v34, :cond_2f

    .line 1882
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mBtScoDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1886
    .end local v4    # "conDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mBtScoDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v34, v0

    if-eqz v34, :cond_8

    .line 1887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mBtScoDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumeDialog;->mBTScoDeviceName:Ljava/lang/String;

    .line 1888
    sget-object v34, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "mBTScoDeviceName = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mBTScoDeviceName:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mBTScoDeviceName:Ljava/lang/String;

    move-object/from16 v34, v0

    if-eqz v34, :cond_8

    .line 1890
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, " ("

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mBTScoDeviceName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, ")"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_12

    .line 1898
    .end local v5    # "conDevice$iterator":Ljava/util/Iterator;
    .end local v8    # "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_31
    const/4 v10, 0x0

    .restart local v10    # "iconEnabled":Z
    goto/16 :goto_13

    .line 1901
    :cond_32
    const/16 v34, 0x1

    goto/16 :goto_14

    :cond_33
    move/from16 v34, v10

    goto/16 :goto_14

    .line 1902
    :cond_34
    const/high16 v34, 0x3f000000    # 0.5f

    goto/16 :goto_15

    .line 1904
    :cond_35
    if-nez v20, :cond_36

    if-nez v16, :cond_36

    .line 1905
    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->routedToBluetooth:Z

    move/from16 v34, v0

    if-eqz v34, :cond_37

    const v11, 0x10809fb

    .restart local v11    # "iconRes":I
    goto/16 :goto_16

    .line 1904
    .end local v11    # "iconRes":I
    :cond_36
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get9(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v11

    .restart local v11    # "iconRes":I
    goto/16 :goto_16

    .line 1906
    .end local v11    # "iconRes":I
    :cond_37
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mAutomute:Z

    move/from16 v34, v0

    if-eqz v34, :cond_38

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v34, v0

    if-nez v34, :cond_38

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get9(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v11

    .restart local v11    # "iconRes":I
    goto/16 :goto_16

    .line 1907
    .end local v11    # "iconRes":I
    :cond_38
    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    move/from16 v34, v0

    if-eqz v34, :cond_39

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get9(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v11

    .restart local v11    # "iconRes":I
    goto/16 :goto_16

    .end local v11    # "iconRes":I
    :cond_39
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get10(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v11

    .restart local v11    # "iconRes":I
    goto/16 :goto_16

    .line 1916
    :cond_3a
    const v34, 0x10809ff

    move/from16 v0, v34

    if-eq v11, v0, :cond_3b

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get9(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v34

    move/from16 v0, v34

    if-ne v11, v0, :cond_3c

    :cond_3b
    const/16 v34, 0x2

    goto/16 :goto_17

    .line 1917
    :cond_3c
    const v34, 0x10809fb

    move/from16 v0, v34

    if-eq v11, v0, :cond_3d

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get10(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v34

    move/from16 v0, v34

    if-ne v11, v0, :cond_3e

    :cond_3d
    const/16 v34, 0x1

    goto/16 :goto_17

    .line 1918
    :cond_3e
    const/16 v34, 0x0

    goto/16 :goto_17

    .line 1925
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/systemui/volume/VolumeDialogController;->hasVibrator()Z

    move-result v34

    if-eqz v34, :cond_40

    .line 1926
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    .line 1927
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aput-object v37, v36, v38

    const v37, 0x7f0f04d8

    .line 1926
    move-object/from16 v0, v35

    move/from16 v1, v37

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_18

    .line 1929
    :cond_40
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    .line 1930
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aput-object v37, v36, v38

    const v37, 0x7f0f04d9

    .line 1929
    move-object/from16 v0, v35

    move/from16 v1, v37

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_18

    .line 1934
    :cond_41
    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    move/from16 v34, v0

    if-nez v34, :cond_42

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mAutomute:Z

    move/from16 v34, v0

    if-eqz v34, :cond_43

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v34, v0

    if-nez v34, :cond_43

    .line 1935
    :cond_42
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    .line 1936
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aput-object v37, v36, v38

    const v37, 0x7f0f04d7

    .line 1935
    move-object/from16 v0, v35

    move/from16 v1, v37

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_18

    .line 1938
    :cond_43
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    .line 1939
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aput-object v37, v36, v38

    const v37, 0x7f0f04d9

    .line 1938
    move-object/from16 v0, v35

    move/from16 v1, v37

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_18

    .line 1943
    :cond_44
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v34

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_18

    .line 1947
    :cond_45
    if-nez v16, :cond_d

    .line 1948
    if-nez v26, :cond_d

    if-nez v24, :cond_d

    .line 1947
    const/4 v9, 0x1

    .local v9, "enableSlider":Z
    goto/16 :goto_19

    .line 1951
    .end local v9    # "enableSlider":Z
    :cond_46
    if-eqz v13, :cond_47

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v34

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v34, v0

    add-int/lit8 v32, v34, 0x1

    .restart local v32    # "vlevel":I
    goto/16 :goto_1a

    .end local v32    # "vlevel":I
    :cond_47
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v34

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v32, v0

    .restart local v32    # "vlevel":I
    goto/16 :goto_1a

    .line 1957
    :cond_48
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/ImageButton;->isClickable()Z

    move-result v34

    if-nez v34, :cond_f

    .line 1958
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v34

    const/16 v35, 0x1

    invoke-virtual/range {v34 .. v35}, Landroid/widget/ImageButton;->setClickable(Z)V

    goto/16 :goto_1b
.end method

.method private updateVolumeRowHeaderVisibleH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 3
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 2012
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    iget-boolean v0, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->dynamic:Z

    .line 2013
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowHeaders:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v2, :cond_3

    move v1, v0

    .line 2014
    :goto_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get3(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Z

    move-result v2

    if-eq v2, v1, :cond_0

    .line 2015
    invoke-static {p1, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set3(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z

    .line 2016
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 2011
    :cond_0
    return-void

    .line 2012
    :cond_1
    const/4 v0, 0x0

    .local v0, "dynamic":Z
    goto :goto_0

    .line 2013
    .end local v0    # "dynamic":Z
    :cond_2
    const/4 v1, 0x1

    .local v1, "showHeaders":Z
    goto :goto_1

    .end local v1    # "showHeaders":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "showHeaders":Z
    goto :goto_1
.end method

.method private updateVolumeRowSliderH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;ZI)V
    .locals 12
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p2, "enable"    # Z
    .param p3, "vlevel"    # I

    .prologue
    .line 2035
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    if-ne p1, v6, :cond_3

    const/4 v1, 0x1

    .line 2036
    .local v1, "isActive":Z
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/volume/SecVolumeDialog;->isVisibleH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z

    move-result v5

    .line 2038
    .local v5, "rowVisible":Z
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 2039
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    const/16 v7, 0xb

    if-ne v6, v7, :cond_4

    .line 2040
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->setDualColorSeekbar(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 2049
    :cond_1
    :goto_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    if-nez v6, :cond_2

    if-eqz v5, :cond_2

    .line 2050
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->isExtraButtonOn()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2051
    sget-object v6, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Call setMode(ProgressBar.MODE_WARNING)"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->semSetMode(I)V

    .line 2058
    :cond_2
    :goto_2
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get19(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2059
    return-void

    .line 2035
    .end local v1    # "isActive":Z
    .end local v5    # "rowVisible":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 2041
    .restart local v1    # "isActive":Z
    .restart local v5    # "rowVisible":Z
    :cond_4
    iget v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_5

    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v6, :cond_1

    .line 2042
    :cond_5
    if-nez p2, :cond_6

    .line 2043
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbDisabledColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 2045
    :cond_6
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 2054
    :cond_7
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->semSetMode(I)V

    goto :goto_2

    .line 2061
    :cond_8
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    .line 2063
    .local v4, "progress":I
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_a

    .line 2064
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->getImpliedMediaVolumeLevel(I)I

    move-result v2

    .line 2071
    .local v2, "level":I
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get20(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    cmp-long v6, v6, v8

    if-gez v6, :cond_c

    const/4 v0, 0x1

    .line 2072
    .local v0, "inGracePeriod":Z
    :goto_4
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, p1}, Lcom/android/systemui/volume/SecVolumeDialog$H;->removeMessages(ILjava/lang/Object;)V

    .line 2073
    sget-boolean v6, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-eqz v6, :cond_d

    if-eqz v5, :cond_d

    if-eqz v0, :cond_d

    .line 2074
    sget-boolean v6, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v6, :cond_9

    .line 2075
    sget-object v6, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "inGracePeriod"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    :cond_9
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    const/4 v8, 0x3

    invoke-virtual {v7, v8, p1}, Lcom/android/systemui/volume/SecVolumeDialog$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get20(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)J

    move-result-wide v8

    .line 2077
    const-wide/16 v10, 0x3e8

    .line 2076
    add-long/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/systemui/volume/SecVolumeDialog$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2078
    return-void

    .line 2065
    .end local v0    # "inGracePeriod":Z
    .end local v2    # "level":I
    :cond_a
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_b

    .line 2066
    move v2, v4

    .restart local v2    # "level":I
    goto :goto_3

    .line 2068
    .end local v2    # "level":I
    :cond_b
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/android/systemui/volume/SecVolumeDialog;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v2

    .restart local v2    # "level":I
    goto :goto_3

    .line 2071
    :cond_c
    const/4 v0, 0x0

    .restart local v0    # "inGracePeriod":Z
    goto :goto_4

    .line 2080
    :cond_d
    if-ne p3, v2, :cond_e

    .line 2081
    sget-boolean v6, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-eqz v6, :cond_e

    if-eqz v5, :cond_e

    .line 2082
    return-void

    .line 2086
    :cond_e
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_10

    .line 2088
    :cond_f
    move v3, p3

    .line 2103
    .local v3, "newProgress":I
    :goto_5
    if-eq v4, v3, :cond_17

    .line 2104
    sget-boolean v6, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-eqz v6, :cond_19

    if-eqz v5, :cond_19

    .line 2106
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get0(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-eqz v6, :cond_16

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get0(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 2107
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get1(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    if-ne v6, v3, :cond_16

    .line 2108
    return-void

    .line 2087
    .end local v3    # "newProgress":I
    :cond_10
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    const/16 v7, 0xa

    if-eq v6, v7, :cond_f

    .line 2090
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_11

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    const/16 v7, 0xb

    if-ne v6, v7, :cond_15

    .line 2091
    :cond_11
    iget v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLimit:I

    add-int/lit8 v6, v6, -0x1

    if-ne p3, v6, :cond_15

    .line 2092
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_12

    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOn:Z

    if-nez v6, :cond_13

    .line 2093
    :cond_12
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    const/16 v7, 0xb

    if-ne v6, v7, :cond_14

    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    .line 2092
    if-eqz v6, :cond_14

    .line 2094
    :cond_13
    mul-int/lit8 v3, p3, 0x6a

    .restart local v3    # "newProgress":I
    goto :goto_5

    .line 2096
    .end local v3    # "newProgress":I
    :cond_14
    mul-int/lit8 v3, p3, 0x64

    .restart local v3    # "newProgress":I
    goto :goto_5

    .line 2099
    .end local v3    # "newProgress":I
    :cond_15
    mul-int/lit8 v3, p3, 0x64

    .restart local v3    # "newProgress":I
    goto :goto_5

    .line 2111
    :cond_16
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get0(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-nez v6, :cond_18

    .line 2112
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    const-string/jumbo v7, "progress"

    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v4, v8, v9

    const/4 v9, 0x1

    aput v3, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set0(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 2113
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get0(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2118
    :goto_6
    invoke-static {p1, v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set1(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 2119
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get0(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x50

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2120
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get0(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    .line 2034
    :cond_17
    :goto_7
    return-void

    .line 2115
    :cond_18
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get0(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2116
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get0(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v4, v7, v8

    const/4 v8, 0x1

    aput v3, v7, v8

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    goto :goto_6

    .line 2123
    :cond_19
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get0(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-eqz v6, :cond_1a

    .line 2124
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get0(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2126
    :cond_1a
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_7
.end method

.method private updateVolumeRowforZenModeH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 2
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 2164
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    packed-switch v0, :pswitch_data_0

    .line 2163
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2173
    :pswitch_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 2174
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->setRowDisableMode(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    goto :goto_0

    .line 2164
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateWindowWidthH()V
    .locals 7

    .prologue
    const v6, 0x7f0d0340

    .line 869
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 870
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 871
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 873
    .local v3, "w":I
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 874
    const v5, 0x7f0d01e1

    .line 873
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 876
    .local v2, "max":I
    if-le v3, v2, :cond_0

    .line 877
    move v3, v2

    .line 879
    :cond_0
    sget-boolean v4, Lcom/android/systemui/volume/SecVolumeDialog;->M_LATTE:Z

    if-eqz v4, :cond_3

    .line 880
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 881
    const v5, 0x7f0d033f

    .line 880
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 900
    :goto_0
    sget-boolean v4, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v4, :cond_1

    .line 901
    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateWindowWidth lp.width="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mCurrentWindowWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 902
    iget v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCurrentWindowWidth:I

    .line 901
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :cond_1
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCurrentWindowWidth:I

    if-eq v4, v5, :cond_2

    .line 904
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 905
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCurrentWindowWidth:I

    .line 868
    :cond_2
    return-void

    .line 882
    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v4, :cond_5

    .line 883
    sget-boolean v4, Lcom/android/systemui/volume/SecVolumeDialog;->mIsKnoxDesktopMode:Z

    if-nez v4, :cond_4

    .line 884
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v3, v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 887
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v3, v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 891
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v4

    iput v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    .line 892
    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_6

    .line 893
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 894
    const v5, 0x7f0d0341

    .line 893
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v3, v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_0

    .line 896
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 897
    const v5, 0x7f0d0342

    .line 896
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v3, v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_0
.end method


# virtual methods
.method public ZenModeChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1300
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    .line 1301
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Dnd mode Changed to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->isValidZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1304
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    if-nez v0, :cond_1

    .line 1308
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDndView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1299
    :cond_0
    :goto_0
    return-void

    .line 1310
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDndView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method protected dismissH(I)V
    .locals 9
    .param p1, "reason"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1418
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dismissH reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHardwareAccelerated:Z

    if-nez v0, :cond_0

    .line 1421
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPrevSystemRendererDisabled:Z

    sput-boolean v0, Landroid/view/ThreadedRenderer;->sSystemRendererDisabled:Z

    .line 1424
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1425
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v0, :cond_2

    if-eq p1, v4, :cond_2

    .line 1426
    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    .line 1427
    if-ne p1, v3, :cond_5

    .line 1428
    :cond_1
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_2

    .line 1429
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "SafetyWarning dismiss cancelled"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v1

    .line 1438
    const/16 v0, 0x9

    if-eq p1, v0, :cond_3

    .line 1439
    if-ne p1, v3, :cond_7

    .line 1440
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1441
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1444
    :cond_4
    const/4 v0, 0x7

    if-ne p1, v0, :cond_8

    .line 1445
    return-void

    .line 1431
    :cond_5
    :try_start_1
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_6

    .line 1432
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "SafetyWarning dismissed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    :cond_6
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafetyWarningShowing:Z

    .line 1434
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SafetyWarningDialog;->dismiss()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1424
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1439
    :cond_7
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    goto :goto_1

    .line 1447
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1448
    return-void

    .line 1450
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/SecVolumeDialog$H;->removeMessages(I)V

    .line 1451
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    invoke-virtual {v0, v8}, Lcom/android/systemui/volume/SecVolumeDialog$H;->removeMessages(I)V

    .line 1452
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dismissH : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-nez v0, :cond_a

    .line 1454
    return-void

    .line 1455
    :cond_a
    sput-boolean v7, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    .line 1457
    if-eq p1, v4, :cond_b

    const/16 v0, 0x9

    if-ne p1, v0, :cond_f

    .line 1458
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->dismiss()V

    .line 1459
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->onDismissLockScreenDialog()V

    .line 1460
    invoke-direct {p0, v7}, Lcom/android/systemui/volume/SecVolumeDialog;->setExpandedH(Z)V

    .line 1476
    :goto_2
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 1477
    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 1476
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1478
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    if-nez v0, :cond_c

    .line 1479
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1481
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamTypeForLogging(I)V

    .line 1482
    const-string/jumbo v1, "com.android.systemui.volume"

    const-string/jumbo v2, "FWVP"

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExtraForRingerMode:Ljava/lang/String;

    .line 1483
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogController;->isChangedFromKey()J

    move-result-wide v4

    move-object v0, p0

    .line 1482
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/SecVolumeDialog;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1485
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1487
    const/16 v0, 0x20

    .line 1486
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v6

    .line 1488
    .local v6, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1489
    const-class v0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1490
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 1491
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0f04db

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1490
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1492
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v6}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1494
    .end local v6    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v8, v1}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1495
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v0, v7}, Lcom/android/systemui/volume/VolumeDialogController;->notifyVisible(Z)V

    .line 1417
    return-void

    .line 1462
    :cond_f
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->onDismissLockScreenDialog()V

    .line 1463
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsKnoxDesktopMode:Z

    if-eqz v0, :cond_12

    .line 1464
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->dismiss()V

    .line 1465
    invoke-direct {p0, v7}, Lcom/android/systemui/volume/SecVolumeDialog;->setExpandedH(Z)V

    goto/16 :goto_2

    .line 1467
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    new-instance v1, Lcom/android/systemui/volume/SecVolumeDialog$13;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/SecVolumeDialog$13;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->startDismiss(Ljava/lang/Runnable;)V

    goto/16 :goto_2
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 1041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1042
    const-string/jumbo v0, "  mShowing: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1043
    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1044
    const-string/jumbo v0, "  mExpanded: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1045
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1046
    const-string/jumbo v0, "  mExpandButtonAnimationRunning: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1047
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationRunning:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1048
    const-string/jumbo v0, "  mActiveStream: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1049
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1050
    const-string/jumbo v0, "  mDynamic: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1051
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1052
    const-string/jumbo v0, "  mShowHeaders: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1053
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowHeaders:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1054
    const-string/jumbo v0, "  mAutomute: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1055
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAutomute:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1056
    const-string/jumbo v0, "  mSilentMode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1057
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSilentMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1058
    const-string/jumbo v0, "  mCollapseTime: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1059
    iget-wide v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCollapseTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 1060
    const-string/jumbo v0, "  mAccessibility.mFeedbackEnabled: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1061
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAccessibility:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->-get1(Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1040
    return-void
.end method

.method public isExtraButtonOn()Z
    .locals 6

    .prologue
    .line 3259
    const/4 v2, 0x0

    .line 3261
    .local v2, "rtvalue":Z
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v4, "extraVolume"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3262
    .local v0, "extraButtonOn":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v4, "audioParam;extraVolume"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3264
    .local v1, "extraButtonOnDevice":Ljava/lang/String;
    sget-object v3, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isExtraButtonOn : extraButtonOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3265
    sget-object v3, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isExtraButtonOn : extraButtonOnDevice = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3267
    const-string/jumbo v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3268
    const/4 v2, 0x1

    .line 3273
    :goto_0
    sget-object v3, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isExtraButtonOn : rtvalue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3274
    return v2

    .line 3270
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 859
    const-string/jumbo v1, "sysui_show_full_zen"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 860
    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowFullZen:Z

    .line 858
    :cond_1
    return-void
.end method

.method public playSoundH()V
    .locals 7

    .prologue
    .line 1249
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->isValidZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1250
    :cond_0
    return-void

    .line 1251
    :cond_1
    monitor-enter p0

    .line 1252
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_3

    .line 1253
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    if-nez v0, :cond_2

    .line 1254
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1256
    :cond_2
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "playSoundH with stream : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->semSetStreamType(I)V

    .line 1260
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->makeSound()V

    .line 1261
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_4

    .line 1262
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundID:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    if-nez v0, :cond_4

    .line 1263
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->releaseSound()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    .line 1248
    return-void

    .line 1251
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected rescheduleTimeoutH()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 1394
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    invoke-virtual {v1, v5}, Lcom/android/systemui/volume/SecVolumeDialog$H;->removeMessages(I)V

    .line 1395
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->computeTimeoutH()I

    move-result v0

    .line 1396
    .local v0, "timeout":I
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    .line 1397
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/systemui/volume/SecVolumeDialog$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, v0

    .line 1396
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialog$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1398
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_0

    .line 1399
    sget-object v1, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rescheduleTimeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialogController;->userActivity()V

    .line 1393
    return-void
.end method

.method public setAutomute(Z)V
    .locals 2
    .param p1, "automute"    # Z

    .prologue
    .line 941
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAutomute:Z

    if-ne v0, p1, :cond_0

    .line 942
    return-void

    .line 943
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAutomute:Z

    .line 944
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$H;->sendEmptyMessage(I)Z

    .line 940
    return-void
.end method

.method public setRowDisableMode(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 3
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    const/4 v2, 0x0

    .line 956
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get9(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 957
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get9(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set2(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 958
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 959
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 960
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 961
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconMutedDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 964
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 965
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbDisabledColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 966
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbDisabledColor:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set5(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 967
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 968
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgColor:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set6(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 954
    return-void
.end method

.method public setShowHeaders(Z)V
    .locals 2
    .param p1, "showHeaders"    # Z

    .prologue
    .line 934
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowHeaders:Z

    if-ne p1, v0, :cond_0

    .line 935
    return-void

    .line 936
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowHeaders:Z

    .line 937
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$H;->sendEmptyMessage(I)Z

    .line 933
    return-void
.end method

.method public setSilentMode(Z)V
    .locals 2
    .param p1, "silentMode"    # Z

    .prologue
    .line 948
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSilentMode:Z

    if-ne v0, p1, :cond_0

    .line 949
    return-void

    .line 950
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSilentMode:Z

    .line 951
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$H;->sendEmptyMessage(I)Z

    .line 947
    return-void
.end method

.method public stopSoundH()V
    .locals 2

    .prologue
    .line 1277
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopSound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    return-void
.end method

.method public themeChanged()V
    .locals 4

    .prologue
    .line 1283
    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "themeChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateTintColor()V

    .line 1287
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "row$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1288
    .local v0, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->semSetFluidEnabled(Z)V

    goto :goto_0

    .line 1282
    .end local v0    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    :cond_0
    return-void
.end method
