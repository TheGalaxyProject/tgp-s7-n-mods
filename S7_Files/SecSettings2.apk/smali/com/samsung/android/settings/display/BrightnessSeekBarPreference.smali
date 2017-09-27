.class public Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;
.super Lcom/samsung/android/settings/display/DisplayCustomPreference;
.source "BrightnessSeekBarPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;,
        Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$2;,
        Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$3;,
        Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$4;,
        Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$5;,
        Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$6;,
        Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$7;
    }
.end annotation


# static fields
.field private static isAlreadyShownBrightMaxDialog:Z


# instance fields
.field private mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

.field private mAutomaticMode:Z

.field private mBrightnessIconView:Lcom/samsung/android/settings/widget/BrightnessIconView;

.field private mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private mChangeType:I

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCheckBoxLayout:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCurBrightness:I

.field private mDialogForMaxBrightness:Landroid/app/AlertDialog;

.field private mHBMText:Landroid/widget/TextView;

.field private mHBM_PMS_EnterObserver:Landroid/database/ContentObserver;

.field private mInitFinish:Z

.field private mIsFocusable:Z

.field private mIsHBMOnOff:Z

.field mIsLessThanMaxValue:Z

.field private mMaxBrightness:I

.field private mMaxBrightnessDialogObserver:Landroid/database/ContentObserver;

.field mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mOverheatTextview:Landroid/widget/TextView;

.field private mPMSBrightnessMarkerObserver:Landroid/database/ContentObserver;

.field private mPmsBrightness:I

.field private mPower:Landroid/os/IPowerManager;

.field private final mScreenBrightnessMaximum:I

.field private final mScreenBrightnessMinimum:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSharedPreference:Landroid/content/SharedPreferences;

.field mSupportAutoBrightnessDetail:Z

.field private mTracking:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mHBMText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsHBMOnOff:Z

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPmsBrightness:I

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mTracking:Z

    return v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->isAlreadyShownBrightMaxDialog:Z

    return p0
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCurBrightness:I

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsHBMOnOff:Z

    return p1
.end method

.method static synthetic -set4(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPmsBrightness:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->isFolderClose()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setValue(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->isAlreadyShownBrightMaxDialog:Z

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v8, -0x1

    const/4 v3, 0x0

    .line 181
    const v5, 0x7f040200

    const v6, 0x7f110563

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/display/DisplayCustomPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIII)V

    .line 87
    iput v8, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCurBrightness:I

    .line 90
    iput-boolean v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSupportAutoBrightnessDetail:Z

    .line 94
    iput v8, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightness:I

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    .line 108
    iput-boolean v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsLessThanMaxValue:Z

    .line 110
    iput-boolean v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsHBMOnOff:Z

    .line 111
    iput-boolean v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsFocusable:Z

    .line 115
    new-instance v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPMSBrightnessMarkerObserver:Landroid/database/ContentObserver;

    .line 129
    new-instance v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$2;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 142
    new-instance v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$3;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    .line 149
    new-instance v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$4;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    .line 160
    new-instance v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$5;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mHBM_PMS_EnterObserver:Landroid/database/ContentObserver;

    .line 168
    new-instance v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$6;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightnessDialogObserver:Landroid/database/ContentObserver;

    .line 429
    new-instance v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$7;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 773
    iput-boolean v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mInitFinish:Z

    .line 182
    iput-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    .line 183
    const-string/jumbo v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPower:Landroid/os/IPowerManager;

    .line 184
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 185
    .local v7, "pm":Landroid/os/PowerManager;
    invoke-virtual {v7}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    .line 186
    invoke-virtual {v7}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    .line 187
    const-string/jumbo v0, "BrightnessSeekBarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "min Brightness : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->isSupportAutoBrightnessDetail()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSupportAutoBrightnessDetail:Z

    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "high_brightness_mode_pms_enter"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    iput-boolean v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsHBMOnOff:Z

    .line 192
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBrightnessIcon(Z)V

    .line 180
    :cond_1
    return-void
.end method

.method private getBrightness()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x64

    .line 380
    const/4 v0, 0x0

    .line 382
    .local v0, "brightness":F
    iget v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCurBrightness:I

    if-gez v2, :cond_3

    .line 383
    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 384
    iget-boolean v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v2, :cond_1

    .line 385
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "brightness_pms_marker_screen"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-float v0, v2

    .line 396
    :goto_0
    iget v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    .line 397
    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    iget v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 396
    div-float v0, v2, v3

    .line 398
    const v2, 0x461c4000    # 10000.0f

    mul-float/2addr v2, v0

    float-to-int v1, v2

    .line 400
    .local v1, "brightnessInt":I
    iget v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightness:I

    if-ge v1, v2, :cond_0

    .line 401
    iput-boolean v5, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsLessThanMaxValue:Z

    .line 403
    :cond_0
    return v1

    .line 387
    .end local v1    # "brightnessInt":I
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_brightness"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-float v0, v2

    goto :goto_0

    .line 390
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_brightness"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-float v0, v2

    goto :goto_0

    .line 393
    :cond_3
    iget v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCurBrightness:I

    int-to-float v0, v2

    goto :goto_0
.end method

.method private getBrightnessMode(I)I
    .locals 2
    .param p1, "defaultValue"    # I

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method private isFolderClose()Z
    .locals 4

    .prologue
    .line 442
    const/4 v1, 0x0

    .line 443
    .local v1, "ret":Z
    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 444
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 445
    const/4 v1, 0x1

    .line 447
    :cond_0
    return v1
.end method

.method private isSupportAutoBrightnessDetail()Z
    .locals 3

    .prologue
    .line 459
    const/4 v0, 0x1

    .line 461
    .local v0, "result":Z
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTOMATIC_BRIGHTNESS_DETAIL"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 462
    const/4 v0, 0x0

    .line 464
    :cond_0
    return v0
.end method

.method private setBrightness(I)V
    .locals 6
    .param p1, "brightness"    # I

    .prologue
    const v5, 0x461c4000    # 10000.0f

    .line 498
    :try_start_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 499
    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    iget v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    sub-int v1, v3, v4

    .line 500
    .local v1, "range":I
    mul-int v3, p1, v1

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    add-int p1, v3, v4

    .line 501
    iget-boolean v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v3, :cond_0

    .line 502
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v3, p1}, Landroid/os/IPowerManager;->setTemporaryMarkerScreenBrightnessSettingOverride(I)V

    .line 494
    .end local v1    # "range":I
    :goto_0
    return-void

    .line 504
    .restart local v1    # "range":I
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v3, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    goto :goto_0

    .line 516
    .end local v1    # "range":I
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 506
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-boolean v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v3, :cond_2

    .line 507
    int-to-float v3, p1

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v2, v3, v4

    .line 508
    .local v2, "valf":F
    const-string/jumbo v3, "BrightnessSeekBarPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "valf : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v3, v2}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V

    goto :goto_0

    .line 511
    .end local v2    # "valf":F
    :cond_2
    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    iget v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    sub-int v1, v3, v4

    .line 512
    .restart local v1    # "range":I
    mul-int v3, p1, v1

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    add-int p1, v3, v4

    .line 513
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v3, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private setBrightnessByValue(I)V
    .locals 6
    .param p1, "brightness"    # I

    .prologue
    .line 522
    :try_start_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 523
    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    add-int/2addr p1, v3

    .line 524
    iget-boolean v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v3, :cond_0

    .line 525
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v3, p1}, Landroid/os/IPowerManager;->setTemporaryMarkerScreenBrightnessSettingOverride(I)V

    .line 520
    :goto_0
    return-void

    .line 527
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v3, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    goto :goto_0

    .line 539
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 529
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-boolean v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v3, :cond_2

    .line 530
    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    iget v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    sub-int v1, v3, v4

    .line 531
    .local v1, "range":I
    int-to-float v3, p1

    int-to-float v4, v1

    div-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v2, v3, v4

    .line 532
    .local v2, "valf":F
    const-string/jumbo v3, "BrightnessSeekBarPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "valf : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v3, v2}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V

    goto :goto_0

    .line 535
    .end local v1    # "range":I
    .end local v2    # "valf":F
    :cond_2
    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    add-int/2addr p1, v3

    .line 536
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v3, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 544
    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    .line 545
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 543
    return-void

    .line 544
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setValue(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    .line 723
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBrightnessByValue(I)V

    .line 724
    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    .line 725
    .local v0, "max":I
    mul-int v2, v0, p1

    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    iget v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    sub-int/2addr v3, v4

    div-int p1, v2, v3

    .line 726
    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 727
    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateBrightness()V

    .line 728
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 729
    .local v1, "pm":Landroid/os/PowerManager;
    iget-boolean v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 730
    const-string/jumbo v2, "BrightnessSeekBarPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onFocusChange() mCheckBox.isChecked()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-boolean v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v2, :cond_0

    .line 732
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->setMarkerBrightness(I)V

    .line 722
    :cond_0
    return-void
.end method

.method private showBrightnessAlertDialog()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 737
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 738
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 739
    iput-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    .line 742
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 743
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b053d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 744
    const v2, 0x1080027

    .line 743
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 745
    new-instance v2, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$9;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$9;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)V

    const v3, 0x104000a

    .line 743
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 755
    new-instance v2, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$10;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$10;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)V

    const/high16 v3, 0x1040000

    .line 743
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 760
    new-instance v2, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$11;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$11;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)V

    .line 743
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 766
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    .line 767
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 769
    return-void
.end method

.method private updateBrightness()V
    .locals 5

    .prologue
    .line 673
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v3, :cond_0

    .line 674
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 675
    .local v0, "brightness":I
    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    iget v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    sub-int v1, v3, v4

    .line 676
    .local v1, "range":I
    mul-int v3, v0, v1

    int-to-float v3, v3

    const v4, 0x461c4000    # 10000.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    add-int v0, v3, v4

    .line 677
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 678
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "screen_brightness"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 672
    .end local v0    # "brightness":I
    .end local v1    # "range":I
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method private updateDualColorRange(Landroid/widget/SeekBar;)V
    .locals 5
    .param p1, "sb"    # Landroid/widget/SeekBar;

    .prologue
    .line 683
    if-nez p1, :cond_0

    .line 684
    return-void

    .line 685
    :cond_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    .line 686
    .local v2, "max":I
    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    iget v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    sub-int v0, v3, v4

    .line 687
    .local v0, "brightnessValue":I
    mul-int/lit8 v3, v0, 0x5a

    div-int/lit8 v3, v3, 0x64

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v3, v2

    div-int v1, v3, v0

    .line 688
    .local v1, "limit":I
    const-string/jumbo v3, "#f7c0bd"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#f1462f"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/widget/SeekBar;->setDualModeOverlapColor(II)V

    .line 689
    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    .line 682
    return-void
.end method


# virtual methods
.method public brightnessNotifyChange()V
    .locals 0

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->notifyHierarchyChanged()V

    .line 175
    return-void
.end method

.method public changeSeekbarColor(Z)V
    .locals 3
    .param p1, "isChecked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 368
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSupportAutoBrightnessDetail:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "AIO"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 369
    if-eqz p1, :cond_2

    .line 370
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0203d3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 371
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0129

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 367
    :cond_1
    :goto_0
    return-void

    .line 373
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 374
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public getInitFinish()Z
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 777
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mInitFinish:Z

    return v0

    .line 778
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v9, 0x8

    const/4 v8, -0x1

    const v7, 0x7f110564

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 199
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getBrightnessMode(I)I

    move-result v3

    if-ne v3, v4, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    .line 202
    invoke-super {p0, p1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->onBindView(Landroid/view/View;)V

    .line 203
    iput v8, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCurBrightness:I

    .line 205
    const v3, 0x7f110563

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    .line 207
    .local v2, "seekBar":Landroid/widget/SeekBar;
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-ne v2, v3, :cond_1

    return-void

    .end local v2    # "seekBar":Landroid/widget/SeekBar;
    :cond_0
    move v3, v5

    .line 199
    goto :goto_0

    .line 209
    .restart local v2    # "seekBar":Landroid/widget/SeekBar;
    :cond_1
    const v3, 0x7f110567

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mOverheatTextview:Landroid/widget/TextView;

    .line 210
    const v3, 0x7f110566

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mHBMText:Landroid/widget/TextView;

    .line 212
    iput-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 213
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 214
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setSoundEffectsEnabled(Z)V

    .line 215
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 216
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->semSetFluidEnabled(Z)V

    .line 218
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportLightSensor(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 219
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 220
    .local v1, "autoLinearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 241
    :goto_1
    const v3, 0x1020006

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/widget/BrightnessIconView;

    iput-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessIconView:Lcom/samsung/android/settings/widget/BrightnessIconView;

    .line 242
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessIconView:Lcom/samsung/android/settings/widget/BrightnessIconView;

    const/16 v6, 0x2710

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/widget/BrightnessIconView;->setMax(I)V

    .line 245
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v6, 0x2710

    invoke-virtual {v3, v6}, Landroid/widget/SeekBar;->setMax(I)V

    .line 248
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateDualColorRange(Landroid/widget/SeekBar;)V

    .line 250
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getBrightness()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 252
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "com.android.settings_preferences"

    const/4 v7, 0x4

    invoke-virtual {v3, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 253
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "pref_siop_brightness"

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightness:I

    .line 255
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "pref_siop_brightness_change_type"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mChangeType:I

    .line 257
    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightness:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->returnMaxBrightness(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightness:I

    .line 260
    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightness:I

    iget v6, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mChangeType:I

    invoke-virtual {p0, v3, v6}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setMaxBrightnessLimit(II)V

    .line 261
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 262
    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setFlipCloseStatus(I)V

    .line 264
    :cond_2
    const-string/jumbo v3, "BrightnessSeekBarPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onbindview Utils.isSupportPersonalAutoBrightness() :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mAutomaticMode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mIsHBMOnOff : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsHBMOnOff:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setInitFinish(Z)V

    .line 267
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "shown_max_brightness_dialog"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    sput-boolean v4, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->isAlreadyShownBrightMaxDialog:Z

    .line 198
    return-void

    .line 222
    .end local v1    # "autoLinearLayout":Landroid/widget/LinearLayout;
    :cond_3
    const v3, 0x7f110565

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 223
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0b0541

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 224
    .local v0, "autoBrightness":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v6, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 226
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 227
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v6, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$8;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$8;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)V

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 236
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBoxLayout:Landroid/widget/LinearLayout;

    .line 237
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 238
    .restart local v1    # "autoLinearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .end local v0    # "autoBrightness":Ljava/lang/String;
    :cond_4
    move v4, v5

    .line 267
    goto :goto_2
.end method

.method public onBrightnessChanged()V
    .locals 4

    .prologue
    .line 468
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_0

    .line 469
    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getBrightness()I

    move-result v0

    .line 470
    .local v0, "brightnessValue":I
    const-string/jumbo v1, "BrightnessSeekBarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBrightnessChanged()  brightnessValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 467
    .end local v0    # "brightnessValue":I
    :cond_0
    return-void
.end method

.method public onBrightnessModeChanged()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 480
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getBrightnessMode(I)I

    move-result v3

    if-ne v3, v1, :cond_2

    const/4 v0, 0x1

    .line 481
    .local v0, "checked":Z
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->isFolderClose()Z

    move-result v3

    :goto_1
    if-nez v3, :cond_0

    .line 482
    if-eqz v0, :cond_4

    :goto_2
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setMode(I)V

    .line 485
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_1

    .line 486
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 489
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateDualColorRange(Landroid/widget/SeekBar;)V

    .line 490
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getBrightness()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 479
    :cond_1
    return-void

    .line 480
    .end local v0    # "checked":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "checked":Z
    goto :goto_0

    :cond_3
    move v3, v2

    .line 481
    goto :goto_1

    :cond_4
    move v1, v2

    .line 482
    goto :goto_2
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 11
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/16 v10, 0x64

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 328
    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 329
    if-eqz p2, :cond_2

    .line 358
    :cond_0
    :goto_0
    if-eqz p2, :cond_6

    :goto_1
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setMode(I)V

    .line 360
    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 361
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->onBrightnessChanged()V

    .line 363
    :cond_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->changeSeekbarColor(Z)V

    .line 364
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBrightnessIcon(Z)V

    .line 327
    return-void

    .line 333
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "brightness_user_touch"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 334
    .local v1, "brightnessUserTouch":I
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v8

    if-eqz v8, :cond_5

    if-eq v1, v6, :cond_5

    .line 335
    const/16 v5, 0x27

    .line 336
    .local v5, "lDefaultNttHomeBrightness":I
    iget-object v8, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->getSamsungNTTHomeDefaultBrightness(Landroid/content/Context;)[I

    move-result-object v4

    .line 338
    .local v4, "homeBrightnessList":[I
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v8, "com.nttdocomo.android.dhome"

    const-string/jumbo v9, "com.nttdocomo.android.dhome.HomeActivity"

    invoke-direct {v0, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .local v0, "DcmLauncher":Landroid/content/ComponentName;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v3, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v8, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v2

    .line 342
    .local v2, "currentDefaultHome":Landroid/content/ComponentName;
    if-eqz v4, :cond_3

    array-length v8, v4

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 343
    aget v5, v4, v6

    .line 346
    :cond_3
    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 347
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "screen_brightness"

    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 349
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "brightness_pms_marker_screen"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPmsBrightness:I

    .line 350
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "screen_brightness"

    iget v10, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPmsBrightness:I

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 353
    .end local v0    # "DcmLauncher":Landroid/content/ComponentName;
    .end local v2    # "currentDefaultHome":Landroid/content/ComponentName;
    .end local v3    # "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "homeBrightnessList":[I
    .end local v5    # "lDefaultNttHomeBrightness":I
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "brightness_pms_marker_screen"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPmsBrightness:I

    .line 354
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "screen_brightness"

    iget v10, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPmsBrightness:I

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .end local v1    # "brightnessUserTouch":I
    :cond_6
    move v6, v7

    .line 358
    goto/16 :goto_1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isFocused"    # Z

    .prologue
    .line 632
    iput-boolean p2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsFocusable:Z

    .line 633
    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_1

    .line 634
    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 640
    .local v0, "brightness":I
    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateBrightness()V

    .line 642
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 643
    .local v1, "pm":Landroid/os/PowerManager;
    iget-boolean v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 644
    const-string/jumbo v2, "BrightnessSeekBarPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onFocusChange() mAutomaticMode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-boolean v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v2, :cond_0

    .line 646
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->setMarkerBrightness(I)V

    .line 649
    :cond_0
    const-string/jumbo v2, "BrightnessSeekBarPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "on stop tracking touch brightness DB input:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    .end local v0    # "brightness":I
    .end local v1    # "pm":Landroid/os/PowerManager;
    :cond_1
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 655
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 656
    packed-switch p2, :pswitch_data_0

    .line 669
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 659
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 660
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 661
    const-string/jumbo v1, "BrightnessSeekBarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "KEYCODE_DPAD_LEFT mAutomaticMode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-boolean v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v1, :cond_0

    .line 663
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->setMarkerBrightness(I)V

    goto :goto_0

    .line 656
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 280
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 282
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    .line 283
    .local v1, "max":I
    mul-int/lit8 v2, v1, 0x5a

    div-int/lit8 v0, v2, 0x64

    .line 284
    .local v0, "limit":I
    sget-boolean v2, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->isAlreadyShownBrightMaxDialog:Z

    if-eqz v2, :cond_0

    move v5, v4

    :goto_0
    if-le p2, v0, :cond_1

    move v2, v3

    :goto_1
    and-int/2addr v2, v5

    if-eqz v2, :cond_3

    if-eqz p3, :cond_3

    .line 285
    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    if-eqz v2, :cond_2

    .line 286
    return-void

    :cond_0
    move v5, v3

    .line 284
    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    .line 287
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->showBrightnessAlertDialog()V

    .line 288
    return-void

    .line 289
    :cond_3
    sget-boolean v2, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->isAlreadyShownBrightMaxDialog:Z

    if-nez v2, :cond_4

    if-gt p2, v0, :cond_5

    if-eqz p3, :cond_5

    .line 290
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    if-eqz v2, :cond_5

    .line 291
    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 294
    :cond_5
    iget v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightness:I

    if-ge v2, p2, :cond_7

    iget v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mChangeType:I

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mOverheatTextview:Landroid/widget/TextView;

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightness:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_7

    .line 295
    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mOverheatTextview:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_6

    .line 297
    iput-boolean v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsLessThanMaxValue:Z

    .line 306
    :cond_6
    :goto_2
    const-string/jumbo v2, "BrightnessSeekBarPreference"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    if-nez p3, :cond_a

    .line 308
    return-void

    .line 300
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mOverheatTextview:Landroid/widget/TextView;

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsLessThanMaxValue:Z

    if-eqz v2, :cond_9

    .line 303
    :cond_8
    :goto_3
    iput-boolean v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsLessThanMaxValue:Z

    goto :goto_2

    .line 301
    :cond_9
    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mOverheatTextview:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 310
    :cond_a
    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eq p1, v2, :cond_b

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_b

    .line 311
    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 313
    :cond_b
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBrightness(I)V

    .line 314
    iget-boolean v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsFocusable:Z

    if-eqz v2, :cond_c

    .line 315
    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateBrightness()V

    .line 279
    :cond_c
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v1, 0x0

    .line 588
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsFocusable:Z

    .line 589
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSupportAutoBrightnessDetail:Z

    if-eqz v0, :cond_2

    .line 593
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mHBMText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsHBMOnOff:Z

    if-eqz v0, :cond_1

    .line 594
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mHBMText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 587
    :cond_1
    return-void

    .line 590
    :cond_2
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setMode(I)V

    goto :goto_0
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 8
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 601
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 602
    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    iget v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x42b40000    # 90.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 603
    .local v1, "limit":I
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setValue(I)V

    .line 606
    .end local v1    # "limit":I
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100147

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 608
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 614
    .local v0, "brightness":I
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v3, :cond_3

    .line 618
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateBrightness()V

    .line 620
    const-string/jumbo v3, "BrightnessSeekBarPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onstoptracking isSupportPersonalAutoBrightness() :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mAutomaticMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 621
    const-string/jumbo v5, ", mIsHBMOnOff : "

    .line 620
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 621
    iget-boolean v5, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsHBMOnOff:Z

    .line 620
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 621
    const-string/jumbo v5, ", brightness : "

    .line 620
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 621
    const-string/jumbo v5, ", brightness_user_touch : "

    .line 620
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 621
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "brightness_user_touch"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 620
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 624
    .local v2, "pm":Landroid/os/PowerManager;
    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 625
    iget-boolean v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v3, :cond_2

    .line 626
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->setMarkerBrightness(I)V

    .line 599
    :cond_2
    return-void

    .line 615
    .end local v2    # "pm":Landroid/os/PowerManager;
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "brightness_user_touch"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public registerBrightnessObserver()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 563
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 564
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    const-string/jumbo v1, "brightness_pms_marker_screen"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPMSBrightnessMarkerObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 566
    const-string/jumbo v1, "high_brightness_mode_pms_enter"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mHBM_PMS_EnterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 568
    :cond_0
    const-string/jumbo v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 569
    const-string/jumbo v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 570
    const-string/jumbo v1, "auto_brightness_detail"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 571
    const-string/jumbo v1, "shown_max_brightness_dialog"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightnessDialogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 562
    return-void
.end method

.method public returnMaxBrightness(I)I
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 271
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 272
    return p1

    .line 274
    :cond_0
    const/16 v0, 0xff

    return v0
.end method

.method protected setAutoBrightness(Z)Z
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    const/4 v1, 0x1

    .line 807
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-nez v0, :cond_0

    .line 808
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setMode(I)V

    .line 809
    return v1

    .line 811
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected setBixbyBrightness(IZ)V
    .locals 3
    .param p1, "brightness"    # I
    .param p2, "isPercent"    # Z

    .prologue
    const/4 v1, 0x0

    .line 791
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setAutoBrightness(Z)Z

    .line 793
    if-eqz p2, :cond_2

    .line 794
    if-gez p1, :cond_0

    .line 795
    const/4 p1, 0x0

    .line 796
    :cond_0
    const/16 v1, 0x64

    if-le p1, v1, :cond_1

    .line 797
    const/16 p1, 0x64

    .line 798
    :cond_1
    int-to-float v1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float v0, v1, v2

    .line 799
    .local v0, "tempPrightness":F
    const v1, 0x461c4000    # 10000.0f

    mul-float/2addr v1, v0

    float-to-int p1, v1

    .line 801
    .end local v0    # "tempPrightness":F
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 802
    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateBrightness()V

    .line 789
    return-void
.end method

.method public setBrightnessIcon(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    .prologue
    .line 324
    const v0, 0x7f020454

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setIcon(I)V

    .line 323
    return-void
.end method

.method public setFlipCloseStatus(I)V
    .locals 3
    .param p1, "hardKeyboardState"    # I

    .prologue
    const/4 v2, 0x0

    .line 407
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBrightnessIcon(Z)V

    .line 409
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    packed-switch p1, :pswitch_data_0

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 412
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    .line 413
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBoxLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBoxLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 418
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_2

    .line 419
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 420
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBoxLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBoxLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 410
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setInitFinish(Z)V
    .locals 0
    .param p1, "isFinish"    # Z

    .prologue
    .line 782
    iput-boolean p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mInitFinish:Z

    .line 781
    return-void
.end method

.method public setMaxBrightnessLimit(II)V
    .locals 5
    .param p1, "maxbrightness"    # I
    .param p2, "change"    # I

    .prologue
    const v4, 0x461c4000    # 10000.0f

    .line 549
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->returnMaxBrightness(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightness:I

    .line 550
    iget v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightness:I

    int-to-float v0, v1

    .line 551
    .local v0, "maxBrightnessFloat":F
    iput p2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mChangeType:I

    .line 552
    iget v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 553
    mul-float v1, v0, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightness:I

    .line 555
    cmpg-float v1, v0, v4

    if-gez v1, :cond_0

    .line 556
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsLessThanMaxValue:Z

    .line 548
    :goto_0
    return-void

    .line 558
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsLessThanMaxValue:Z

    goto :goto_0
.end method

.method public unRregisterBrightnessObserver()V
    .locals 2

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 576
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 577
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPMSBrightnessMarkerObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 578
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mHBM_PMS_EnterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 580
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 581
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 582
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 583
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightnessDialogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 574
    return-void
.end method
