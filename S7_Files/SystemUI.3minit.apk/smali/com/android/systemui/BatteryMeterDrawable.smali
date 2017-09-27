.class public Lcom/android/systemui/BatteryMeterDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BatteryMeterDrawable.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/BatteryMeterDrawable$1;,
        Lcom/android/systemui/BatteryMeterDrawable$2;,
        Lcom/android/systemui/BatteryMeterDrawable$SettingObserver;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimOffset:I

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatteryHealth:I

.field private mBatteryOnline:I

.field private final mBatteryPaint:Landroid/graphics/Paint;

.field private mBatteryStatus:I

.field private mBlinkingNeeded:Z

.field private final mBoltFrame:Landroid/graphics/RectF;

.field private mBoltFrameHeight:F

.field private mBoltFrameTop:F

.field private final mBoltPaint:Landroid/graphics/Paint;

.field private final mBoltPath:Landroid/graphics/Path;

.field private final mBoltPoints:[F

.field private final mButtonFrame:Landroid/graphics/RectF;

.field private mButtonHeightFraction:F

.field private mChargeColor:I

.field private mCharging:Z

.field private final mClipPath:Landroid/graphics/Path;

.field private mColors:[I

.field private final mContext:Landroid/content/Context;

.field private final mCriticalLevel:I

.field private mDarkModeBackgroundColor:I

.field private mDarkModeBoltColor:I

.field private mDarkModeFillColor:I

.field private mDarkModePowerSupplyingColor:I

.field private final mFrame:Landroid/graphics/RectF;

.field private final mFramePaint:Landroid/graphics/Paint;

.field private final mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mIconTint:I

.field private final mIntrinsicHeight:I

.field private final mIntrinsicWidth:I

.field private mInvalidString:Ljava/lang/String;

.field private final mInvalidTextPaint:Landroid/graphics/Paint;

.field private final mInvalidate:Ljava/lang/Runnable;

.field private mIsShowBatteryIcon:Z

.field private mLevel:I

.field private mLightModeBackgroundColor:I

.field private mLightModeBoltColor:I

.field private mLightModeFillColor:I

.field private mLightModePowerSupplyingColor:I

.field private mListening:Z

.field private mOldDarkIntensity:F

.field private mPlugType:I

.field private mPluggedIn:Z

.field private final mPlusFrame:Landroid/graphics/RectF;

.field private final mPlusPaint:Landroid/graphics/Paint;

.field private final mPlusPath:Landroid/graphics/Path;

.field private final mPlusPoints:[F

.field private mPostInvalidateHandler:Landroid/os/Handler;

.field private mPowerSaveEnabled:Z

.field private mPowerSupply:Z

.field private mPowerSupplyFrameHeight:F

.field private mPowerSupplyFrameTop:F

.field private final mPowerSupplyingFrame:Landroid/graphics/RectF;

.field private final mPowerSupplyingPaint:Landroid/graphics/Paint;

.field private final mPowerSupplyingPath:Landroid/graphics/Path;

.field private final mPowerSupplyingPoints:[F

.field private final mSettingObserver:Lcom/android/systemui/BatteryMeterDrawable$SettingObserver;

.field private final mShapePath:Landroid/graphics/Path;

.field private mShowPercent:Z

.field private mSubpixelSmoothingLeft:F

.field private mSubpixelSmoothingRight:F

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mTextPath:Landroid/graphics/Path;

.field private mWarningString:Ljava/lang/String;

.field private mWarningTextHeight:F

.field private final mWarningTextPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/BatteryMeterDrawable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBlinkingNeeded:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/BatteryMeterDrawable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIsShowBatteryIcon:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/BatteryMeterDrawable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIsShowBatteryIcon:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/BatteryMeterDrawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterDrawable;->postInvalidate()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/BatteryMeterDrawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterDrawable;->updateShowPercent()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/android/systemui/BatteryMeterDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/BatteryMeterDrawable;->TAG:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "frameColor"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 166
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 69
    iput v7, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIconTint:I

    .line 70
    iput v11, p0, Lcom/android/systemui/BatteryMeterDrawable;->mOldDarkIntensity:F

    .line 78
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    .line 80
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    .line 82
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    .line 83
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    .line 84
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    .line 85
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    .line 87
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    .line 88
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    .line 89
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mTextPath:Landroid/graphics/Path;

    .line 100
    new-instance v6, Lcom/android/systemui/BatteryMeterDrawable$SettingObserver;

    invoke-direct {v6, p0}, Lcom/android/systemui/BatteryMeterDrawable$SettingObserver;-><init>(Lcom/android/systemui/BatteryMeterDrawable;)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mSettingObserver:Lcom/android/systemui/BatteryMeterDrawable$SettingObserver;

    .line 105
    iput v7, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLevel:I

    .line 114
    iput v10, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModeBoltColor:I

    .line 115
    iput v10, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModeBoltColor:I

    .line 126
    iput-boolean v9, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIsShowBatteryIcon:Z

    .line 127
    iput-boolean v10, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBlinkingNeeded:Z

    .line 129
    iput v9, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryStatus:I

    .line 130
    iput v9, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryHealth:I

    .line 137
    const-string/jumbo v6, "X"

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidString:Ljava/lang/String;

    .line 139
    iput v9, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryOnline:I

    .line 143
    iput v10, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPlugType:I

    .line 147
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    .line 148
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPath:Landroid/graphics/Path;

    .line 151
    iput-boolean v10, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupply:Z

    .line 153
    iput v10, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModePowerSupplyingColor:I

    .line 154
    iput v10, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModePowerSupplyingColor:I

    .line 159
    new-instance v6, Lcom/android/systemui/BatteryMeterDrawable$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/BatteryMeterDrawable$1;-><init>(Lcom/android/systemui/BatteryMeterDrawable;)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    .line 821
    new-instance v6, Lcom/android/systemui/BatteryMeterDrawable$2;

    invoke-direct {v6, p0}, Lcom/android/systemui/BatteryMeterDrawable$2;-><init>(Lcom/android/systemui/BatteryMeterDrawable;)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPostInvalidateHandler:Landroid/os/Handler;

    .line 167
    iput-object p1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    .line 168
    iput-object p2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 170
    .local v5, "res":Landroid/content/res/Resources;
    const v6, 0x7f110027

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 171
    .local v4, "levels":Landroid/content/res/TypedArray;
    const v6, 0x7f110028

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 174
    .local v1, "colors":Landroid/content/res/TypedArray;
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KnoxStateMonitor;->getBatteryLevelColourItem()Lcom/samsung/android/knox/custom/StatusbarIconItem;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterDrawable;->updateKnoxCustomStatusBarBatteryColours()V

    .line 184
    :cond_0
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 185
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 186
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterDrawable;->updateShowPercent()V

    .line 187
    const v6, 0x7f0f0467

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningString:Ljava/lang/String;

    .line 192
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 193
    const v7, 0x7f0c006a

    .line 192
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mCriticalLevel:I

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 195
    const v7, 0x7f0e000d

    .line 194
    invoke-virtual {v6, v7, v9, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonHeightFraction:F

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 197
    const v7, 0x7f0e000e

    .line 196
    invoke-virtual {v6, v7, v9, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 199
    const v7, 0x7f0e000f

    .line 198
    invoke-virtual {v6, v7, v9, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mSubpixelSmoothingRight:F

    .line 201
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    .line 202
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v6, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setDither(Z)V

    .line 204
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 205
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 207
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    .line 208
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setDither(Z)V

    .line 209
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 210
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 212
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    .line 213
    const-string/jumbo v6, "sans-serif-condensed"

    invoke-static {v6, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 214
    .local v2, "font":Landroid/graphics/Typeface;
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 215
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 217
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    .line 218
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    aget v7, v7, v9

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    const-string/jumbo v6, "sans-serif"

    invoke-static {v6, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 220
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 221
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 224
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    .line 225
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    const v7, -0x17cbf7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 226
    const-string/jumbo v6, "sans-serif"

    invoke-static {v6, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 227
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 228
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 231
    const v6, 0x7f0b0094

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mChargeColor:I

    .line 233
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    .line 234
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    const v7, 0x7f0b0095

    invoke-virtual {p1, v7}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    invoke-static {v5}, Lcom/android/systemui/BatteryMeterDrawable;->loadBoltPoints(Landroid/content/res/Resources;)[F

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPoints:[F

    .line 237
    new-instance v6, Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusPaint:Landroid/graphics/Paint;

    .line 238
    invoke-static {v5}, Lcom/android/systemui/BatteryMeterDrawable;->loadPlusPoints(Landroid/content/res/Resources;)[F

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusPoints:[F

    .line 241
    const v6, 0x7f0b00e3

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    .line 240
    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModeBackgroundColor:I

    .line 242
    const v6, 0x7f0b00e4

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModeFillColor:I

    .line 244
    const v6, 0x7f0b00e6

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    .line 243
    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModeBackgroundColor:I

    .line 245
    const v6, 0x7f0b00e7

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModeFillColor:I

    .line 249
    const v6, 0x7f0b0097

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    .line 248
    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModeBackgroundColor:I

    .line 251
    const v6, 0x7f0b0098

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    .line 250
    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModeBackgroundColor:I

    .line 253
    const v6, 0x7f0b0095

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModeBoltColor:I

    .line 254
    const v6, 0x7f0b0096

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModeBoltColor:I

    .line 258
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPaint:Landroid/graphics/Paint;

    .line 259
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPaint:Landroid/graphics/Paint;

    const v7, 0x7f0b0099

    invoke-virtual {p1, v7}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 260
    invoke-static {v5}, Lcom/android/systemui/BatteryMeterDrawable;->loadPowerSupplyingPoints(Landroid/content/res/Resources;)[F

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPoints:[F

    .line 262
    const v6, 0x7f0b0099

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModePowerSupplyingColor:I

    .line 263
    const v6, 0x7f0b009a

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModePowerSupplyingColor:I

    .line 266
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d02e4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIntrinsicWidth:I

    .line 267
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d02e3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIntrinsicHeight:I

    .line 166
    return-void

    .line 177
    .end local v2    # "font":Landroid/graphics/Typeface;
    :cond_1
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 178
    .local v0, "N":I
    mul-int/lit8 v6, v0, 0x2

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    .line 179
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 180
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    mul-int/lit8 v7, v3, 0x2

    invoke-virtual {v4, v3, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    aput v8, v6, v7

    .line 181
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v3, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    aput v8, v6, v7

    .line 179
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getBackgroundColor(F)I
    .locals 2
    .param p1, "darkIntensity"    # F

    .prologue
    .line 504
    iget v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModeBackgroundColor:I

    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModeBackgroundColor:I

    .line 503
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/BatteryMeterDrawable;->getColorForDarkIntensity(FII)I

    move-result v0

    return v0
.end method

.method private getColorForDarkIntensity(FII)I
    .locals 3
    .param p1, "darkIntensity"    # F
    .param p2, "lightColor"    # I
    .param p3, "darkColor"    # I

    .prologue
    .line 513
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private getColorForLevel(I)I
    .locals 5
    .param p1, "percent"    # I

    .prologue
    .line 465
    const/4 v0, 0x0

    .line 466
    .local v0, "color":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 467
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    aget v2, v3, v1

    .line 468
    .local v2, "thresh":I
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    add-int/lit8 v4, v1, 0x1

    aget v0, v3, v4

    .line 469
    if-gt p1, v2, :cond_1

    .line 472
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x2

    if-ne v1, v3, :cond_0

    .line 473
    iget v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIconTint:I

    return v3

    .line 475
    :cond_0
    return v0

    .line 466
    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 479
    .end local v2    # "thresh":I
    :cond_2
    return v0
.end method

.method private getFillColor(F)I
    .locals 2
    .param p1, "darkIntensity"    # F

    .prologue
    .line 509
    iget v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModeFillColor:I

    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModeFillColor:I

    .line 508
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/BatteryMeterDrawable;->getColorForDarkIntensity(FII)I

    move-result v0

    return v0
.end method

.method private static loadBoltPoints(Landroid/content/res/Resources;)[F
    .locals 8
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 392
    const v5, 0x7f110029

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 393
    .local v3, "pts":[I
    const/4 v1, 0x0

    .local v1, "maxX":I
    const/4 v2, 0x0

    .line 394
    .local v2, "maxY":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 395
    aget v5, v3, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 396
    add-int/lit8 v5, v0, 0x1

    aget v5, v3, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 394
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 398
    :cond_0
    array-length v5, v3

    new-array v4, v5, [F

    .line 399
    .local v4, "ptsF":[F
    const/4 v0, 0x0

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 400
    aget v5, v3, v0

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    aput v5, v4, v0

    .line 401
    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v0, 0x1

    aget v6, v3, v6

    int-to-float v6, v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    aput v6, v4, v5

    .line 399
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 403
    :cond_1
    return-object v4
.end method

.method private static loadPlusPoints(Landroid/content/res/Resources;)[F
    .locals 8
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 407
    const v5, 0x7f11002a

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 408
    .local v3, "pts":[I
    const/4 v1, 0x0

    .local v1, "maxX":I
    const/4 v2, 0x0

    .line 409
    .local v2, "maxY":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 410
    aget v5, v3, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 411
    add-int/lit8 v5, v0, 0x1

    aget v5, v3, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 409
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 413
    :cond_0
    array-length v5, v3

    new-array v4, v5, [F

    .line 414
    .local v4, "ptsF":[F
    const/4 v0, 0x0

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 415
    aget v5, v3, v0

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    aput v5, v4, v0

    .line 416
    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v0, 0x1

    aget v6, v3, v6

    int-to-float v6, v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    aput v6, v4, v5

    .line 414
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 418
    :cond_1
    return-object v4
.end method

.method private static loadPowerSupplyingPoints(Landroid/content/res/Resources;)[F
    .locals 8
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 423
    const v5, 0x7f11002b

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 424
    .local v3, "pts":[I
    const/4 v1, 0x0

    .local v1, "maxX":I
    const/4 v2, 0x0

    .line 425
    .local v2, "maxY":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 426
    aget v5, v3, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 427
    add-int/lit8 v5, v0, 0x1

    aget v5, v3, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 425
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 429
    :cond_0
    array-length v5, v3

    new-array v4, v5, [F

    .line 430
    .local v4, "ptsF":[F
    const/4 v0, 0x0

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 431
    aget v5, v3, v0

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    aput v5, v4, v0

    .line 432
    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v0, 0x1

    aget v6, v3, v6

    int-to-float v6, v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    aput v6, v4, v5

    .line 430
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 434
    :cond_1
    return-object v4
.end method

.method private postInvalidate()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 299
    return-void
.end method

.method private updateChargingAnimLevel()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 372
    iget v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLevel:I

    .line 373
    .local v0, "curLevel":I
    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mCharging:Z

    if-nez v1, :cond_0

    .line 374
    iput v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mAnimOffset:I

    .line 375
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 388
    :goto_0
    return v0

    .line 377
    :cond_0
    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mAnimOffset:I

    add-int/2addr v0, v1

    .line 378
    const/16 v1, 0x60

    if-lt v0, v1, :cond_1

    .line 379
    const/16 v0, 0x64

    .line 380
    iput v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mAnimOffset:I

    .line 385
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 386
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 382
    :cond_1
    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mAnimOffset:I

    add-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mAnimOffset:I

    goto :goto_1
.end method

.method private updateShowPercent()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 452
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 453
    const-string/jumbo v2, "status_bar_show_battery_percent"

    .line 452
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mShowPercent:Z

    .line 451
    return-void
.end method


# virtual methods
.method public disableShowPercent()V
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mShowPercent:Z

    .line 296
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterDrawable;->postInvalidate()V

    .line 294
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 37
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 519
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryStatus:I

    move/from16 v31, v0

    const/16 v32, 0x4

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_3

    .line 520
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryHealth:I

    move/from16 v31, v0

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_0

    .line 521
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryHealth:I

    move/from16 v31, v0

    const/16 v32, 0x7

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2

    .line 524
    :cond_0
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/BatteryMeterDrawable;->mBlinkingNeeded:Z

    .line 526
    sget-object v31, Lcom/android/systemui/BatteryMeterDrawable;->TAG:Ljava/lang/String;

    const-string/jumbo v32, "battery icon blink..."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPostInvalidateHandler:Landroid/os/Handler;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v31

    if-nez v31, :cond_1

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPostInvalidateHandler:Landroid/os/Handler;

    move-object/from16 v31, v0

    const-wide/16 v32, 0x3e8

    const/16 v34, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v34

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 530
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mIsShowBatteryIcon:Z

    move/from16 v31, v0

    if-nez v31, :cond_4

    .line 531
    return-void

    .line 522
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryHealth:I

    move/from16 v31, v0

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_0

    .line 523
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryHealth:I

    move/from16 v31, v0

    const/16 v32, 0x6

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_0

    .line 533
    :cond_3
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/BatteryMeterDrawable;->mBlinkingNeeded:Z

    .line 538
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f120021

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v27

    .line 539
    .local v27, "showChargingAnim":Z
    if-eqz v27, :cond_5

    .line 540
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterDrawable;->updateChargingAnimLevel()I

    move-result v15

    .line 543
    .local v15, "level":I
    :goto_0
    const/16 v31, -0x1

    move/from16 v0, v31

    if-ne v15, v0, :cond_6

    return-void

    .line 541
    .end local v15    # "level":I
    :cond_5
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/BatteryMeterDrawable;->mLevel:I

    goto :goto_0

    .line 545
    .restart local v15    # "level":I
    :cond_6
    int-to-float v0, v15

    move/from16 v31, v0

    const/high16 v32, 0x42c80000    # 100.0f

    div-float v12, v31, v32

    .line 546
    .local v12, "drawFrac":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/BatteryMeterDrawable;->mHeight:I

    .line 547
    .local v13, "height":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mHeight:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const v32, 0x3f27b961

    mul-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v28, v0

    .line 548
    .local v28, "width":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWidth:I

    move/from16 v31, v0

    sub-int v31, v31, v28

    div-int/lit8 v26, v31, 0x2

    .line 550
    .local v26, "px":I
    int-to-float v0, v13

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonHeightFraction:F

    move/from16 v32, v0

    mul-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v11, v0

    .line 552
    .local v11, "buttonHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v34, v0

    int-to-float v0, v13

    move/from16 v35, v0

    invoke-virtual/range {v31 .. v35}, Landroid/graphics/RectF;->set(FFFF)V

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/RectF;->offset(FF)V

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v33, v0

    const/high16 v34, 0x3e800000    # 0.25f

    mul-float v33, v33, v34

    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->round(F)I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v32, v32, v33

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v34, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v35, v0

    const/high16 v36, 0x3e800000    # 0.25f

    mul-float v35, v35, v36

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->round(F)I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    sub-float v34, v34, v35

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v35, v0

    int-to-float v0, v11

    move/from16 v36, v0

    add-float v35, v35, v36

    .line 556
    invoke-virtual/range {v31 .. v35}, Landroid/graphics/RectF;->set(FFFF)V

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    move/from16 v33, v0

    add-float v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    move/from16 v33, v0

    add-float v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mSubpixelSmoothingRight:F

    move/from16 v33, v0

    sub-float v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v32, v0

    int-to-float v0, v11

    move/from16 v33, v0

    add-float v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    move/from16 v33, v0

    add-float v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    move/from16 v33, v0

    add-float v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mSubpixelSmoothingRight:F

    move/from16 v33, v0

    sub-float v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mSubpixelSmoothingRight:F

    move/from16 v33, v0

    sub-float v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPluggedIn:Z

    move/from16 v31, v0

    if-eqz v31, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mChargeColor:I

    move/from16 v31, v0

    :goto_1
    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 576
    const/16 v31, 0x60

    move/from16 v0, v31

    if-lt v15, v0, :cond_9

    .line 577
    const/high16 v12, 0x3f800000    # 1.0f

    .line 582
    :cond_7
    :goto_2
    const/high16 v31, 0x3f800000    # 1.0f

    cmpl-float v31, v12, v31

    if-nez v31, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v16, v0

    .line 586
    .local v16, "levelTop":F
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Path;->reset()V

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->moveTo(FF)V

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->lineTo(FF)V

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->lineTo(FF)V

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->lineTo(FF)V

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v33, v0

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->lineTo(FF)V

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v33, v0

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->lineTo(FF)V

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->lineTo(FF)V

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->lineTo(FF)V

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->lineTo(FF)V

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 601
    sget-boolean v31, Lcom/android/systemui/SystemUIRune;->SUPPORT_INCOMPATIBLE_CHARGER_CHECK:Z

    if-eqz v31, :cond_b

    .line 602
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryOnline:I

    move/from16 v31, v0

    if-nez v31, :cond_b

    .line 603
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWidth:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const/high16 v32, 0x3f000000    # 0.5f

    mul-float v29, v31, v32

    .line 604
    .local v29, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mHeight:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextHeight:F

    move/from16 v32, v0

    add-float v31, v31, v32

    const v32, 0x3ef5c28f    # 0.48f

    mul-float v30, v31, v32

    .line 605
    .local v30, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidString:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move/from16 v2, v29

    move/from16 v3, v30

    move-object/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 606
    return-void

    .line 574
    .end local v16    # "levelTop":F
    .end local v29    # "x":F
    .end local v30    # "y":F
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/systemui/BatteryMeterDrawable;->getColorForLevel(I)I

    move-result v31

    goto/16 :goto_1

    .line 578
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mCriticalLevel:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-gt v15, v0, :cond_7

    .line 579
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 583
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/RectF;->height()F

    move-result v32

    const/high16 v33, 0x3f800000    # 1.0f

    sub-float v33, v33, v12

    mul-float v32, v32, v33

    add-float v16, v31, v32

    .restart local v16    # "levelTop":F
    goto/16 :goto_3

    .line 609
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrameTop:F

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/RectF;->height()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrameHeight:F

    .line 612
    sget-boolean v31, Lcom/android/systemui/SystemUIRune;->SUPPORT_USB_TYPE_C:Z

    if-eqz v31, :cond_c

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyFrameTop:F

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/RectF;->height()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyFrameHeight:F

    .line 618
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move/from16 v0, v16

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Path;->reset()V

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    sget-object v33, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    move-object/from16 v32, v0

    sget-object v33, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 625
    sget-boolean v31, Lcom/android/systemui/SystemUIRune;->SUPPORT_USB_TYPE_C:Z

    if-eqz v31, :cond_14

    .line 626
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupply:Z

    move/from16 v31, v0

    .line 625
    if-eqz v31, :cond_14

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/RectF;->width()F

    move-result v32

    const/high16 v33, 0x40900000    # 4.5f

    div-float v32, v32, v33

    add-float v23, v31, v32

    .line 629
    .local v23, "psl":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyFrameTop:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyFrameHeight:F

    move/from16 v32, v0

    const/high16 v33, 0x40c00000    # 6.0f

    div-float v32, v32, v33

    add-float v25, v31, v32

    .line 630
    .local v25, "pst":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/RectF;->width()F

    move-result v32

    const/high16 v33, 0x40e00000    # 7.0f

    div-float v32, v32, v33

    sub-float v24, v31, v32

    .line 632
    .local v24, "psr":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyFrameHeight:F

    move/from16 v32, v0

    const/high16 v33, 0x40a00000    # 5.0f

    div-float v32, v32, v33

    sub-float v22, v31, v32

    .line 634
    .local v22, "psb":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v31, v0

    cmpl-float v31, v31, v23

    if-nez v31, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v31, v0

    cmpl-float v31, v31, v25

    if-eqz v31, :cond_e

    .line 636
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v23

    move/from16 v2, v25

    move/from16 v3, v24

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Path;->reset()V

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPoints:[F

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aget v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/RectF;->width()F

    move-result v34

    mul-float v33, v33, v34

    add-float v32, v32, v33

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPoints:[F

    move-object/from16 v34, v0

    const/16 v35, 0x1

    aget v34, v34, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/RectF;->height()F

    move-result v35

    mul-float v34, v34, v35

    add-float v33, v33, v34

    .line 638
    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->moveTo(FF)V

    .line 641
    const/4 v14, 0x2

    .local v14, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPoints:[F

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v14, v0, :cond_12

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPoints:[F

    move-object/from16 v33, v0

    aget v33, v33, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/RectF;->width()F

    move-result v34

    mul-float v33, v33, v34

    add-float v32, v32, v33

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPoints:[F

    move-object/from16 v34, v0

    add-int/lit8 v35, v14, 0x1

    aget v34, v34, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/RectF;->height()F

    move-result v35

    mul-float v34, v34, v35

    add-float v33, v33, v34

    .line 642
    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->lineTo(FF)V

    .line 641
    add-int/lit8 v14, v14, 0x2

    goto :goto_4

    .line 635
    .end local v14    # "i":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v31, v0

    cmpl-float v31, v31, v24

    if-nez v31, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v31, v0

    cmpl-float v31, v31, v22

    if-nez v31, :cond_d

    .line 651
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v31, v0

    sub-float v31, v31, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    sub-float v32, v32, v33

    div-float v21, v31, v32

    .line 652
    .local v21, "powerSupplyingPct":F
    const/16 v31, 0x0

    move/from16 v0, v21

    move/from16 v1, v31

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v31

    const/high16 v32, 0x3f800000    # 1.0f

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(FF)F

    move-result v21

    .line 654
    const/high16 v31, 0x3f800000    # 1.0f

    cmpg-float v31, v21, v31

    if-gtz v31, :cond_13

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 742
    .end local v21    # "powerSupplyingPct":F
    .end local v22    # "psb":F
    .end local v23    # "psl":F
    .end local v24    # "psr":F
    .end local v25    # "pst":F
    :cond_f
    :goto_6
    const/16 v17, 0x0

    .line 743
    .local v17, "pctOpaque":Z
    const/16 v19, 0x0

    .local v19, "pctX":F
    const/16 v20, 0x0

    .line 744
    .local v20, "pctY":F
    const/16 v18, 0x0

    .line 780
    .local v18, "pctText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPluggedIn:Z

    move/from16 v31, v0

    if-nez v31, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSaveEnabled:Z

    move/from16 v31, v0

    if-eqz v31, :cond_10

    .line 781
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mCriticalLevel:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-gt v15, v0, :cond_1b

    .line 783
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWidth:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const/high16 v32, 0x3f000000    # 0.5f

    mul-float v29, v31, v32

    .line 784
    .restart local v29    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mHeight:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextHeight:F

    move/from16 v32, v0

    add-float v31, v31, v32

    const v32, 0x3ef5c28f    # 0.48f

    mul-float v30, v31, v32

    .line 785
    .restart local v30    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningString:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move/from16 v2, v29

    move/from16 v3, v30

    move-object/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 517
    .end local v29    # "x":F
    .end local v30    # "y":F
    :cond_11
    :goto_7
    return-void

    .line 646
    .end local v17    # "pctOpaque":Z
    .end local v18    # "pctText":Ljava/lang/String;
    .end local v19    # "pctX":F
    .end local v20    # "pctY":F
    .restart local v14    # "i":I
    .restart local v22    # "psb":F
    .restart local v23    # "psl":F
    .restart local v24    # "psr":F
    .restart local v25    # "pst":F
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPoints:[F

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aget v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/RectF;->width()F

    move-result v34

    mul-float v33, v33, v34

    add-float v32, v32, v33

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPoints:[F

    move-object/from16 v34, v0

    const/16 v35, 0x1

    aget v34, v34, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/RectF;->height()F

    move-result v35

    mul-float v34, v34, v35

    add-float v33, v33, v34

    .line 646
    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_5

    .line 659
    .end local v14    # "i":I
    .restart local v21    # "powerSupplyingPct":F
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPath:Landroid/graphics/Path;

    move-object/from16 v32, v0

    sget-object v33, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto/16 :goto_6

    .line 662
    .end local v21    # "powerSupplyingPct":F
    .end local v22    # "psb":F
    .end local v23    # "psl":F
    .end local v24    # "psr":F
    .end local v25    # "pst":F
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPluggedIn:Z

    move/from16 v31, v0

    if-eqz v31, :cond_1a

    .line 663
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mCharging:Z

    move/from16 v31, v0

    if-nez v31, :cond_15

    sget-boolean v31, Lcom/android/systemui/SystemUIRune;->IS_TABLET:Z

    if-eqz v31, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPlugType:I

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1a

    .line 665
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/RectF;->width()F

    move-result v32

    const/high16 v33, 0x40800000    # 4.0f

    div-float v32, v32, v33

    add-float v7, v31, v32

    .line 667
    .local v7, "bl":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrameTop:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrameHeight:F

    move/from16 v32, v0

    const/high16 v33, 0x40c00000    # 6.0f

    div-float v32, v32, v33

    add-float v10, v31, v32

    .line 668
    .local v10, "bt":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/RectF;->width()F

    move-result v32

    const/high16 v33, 0x40800000    # 4.0f

    div-float v32, v32, v33

    sub-float v9, v31, v32

    .line 670
    .local v9, "br":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrameHeight:F

    move/from16 v32, v0

    const/high16 v33, 0x41200000    # 10.0f

    div-float v32, v32, v33

    sub-float v6, v31, v32

    .line 671
    .local v6, "bb":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v31, v0

    cmpl-float v31, v31, v7

    if-nez v31, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v31, v0

    cmpl-float v31, v31, v10

    if-eqz v31, :cond_17

    .line 673
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v7, v10, v9, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Path;->reset()V

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPoints:[F

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aget v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/RectF;->width()F

    move-result v34

    mul-float v33, v33, v34

    add-float v32, v32, v33

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPoints:[F

    move-object/from16 v34, v0

    const/16 v35, 0x1

    aget v34, v34, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/RectF;->height()F

    move-result v35

    mul-float v34, v34, v35

    add-float v33, v33, v34

    .line 675
    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->moveTo(FF)V

    .line 678
    const/4 v14, 0x2

    .restart local v14    # "i":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPoints:[F

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v14, v0, :cond_18

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPoints:[F

    move-object/from16 v33, v0

    aget v33, v33, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/RectF;->width()F

    move-result v34

    mul-float v33, v33, v34

    add-float v32, v32, v33

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPoints:[F

    move-object/from16 v34, v0

    add-int/lit8 v35, v14, 0x1

    aget v34, v34, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/RectF;->height()F

    move-result v35

    mul-float v34, v34, v35

    add-float v33, v33, v34

    .line 679
    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->lineTo(FF)V

    .line 678
    add-int/lit8 v14, v14, 0x2

    goto :goto_8

    .line 672
    .end local v14    # "i":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v31, v0

    cmpl-float v31, v31, v9

    if-nez v31, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v31, v0

    cmpl-float v31, v31, v6

    if-nez v31, :cond_16

    .line 688
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v31, v0

    sub-float v31, v31, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    sub-float v32, v32, v33

    div-float v8, v31, v32

    .line 689
    .local v8, "boltPct":F
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-static {v8, v0}, Ljava/lang/Math;->max(FF)F

    move-result v31

    const/high16 v32, 0x3f800000    # 1.0f

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 690
    const/high16 v31, 0x3f800000    # 1.0f

    cmpg-float v31, v8, v31

    if-gtz v31, :cond_19

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 698
    :goto_a
    sget-boolean v31, Lcom/android/systemui/SystemUIRune;->SUPPORT_INCOMPATIBLE_CHARGER_CHECK:Z

    if-nez v31, :cond_f

    .line 699
    sget-boolean v31, Lcom/android/systemui/SystemUIRune;->IS_TABLET:Z

    .line 698
    if-eqz v31, :cond_f

    .line 699
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPlugType:I

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_f

    .line 700
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWidth:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const/high16 v32, 0x3f000000    # 0.5f

    mul-float v29, v31, v32

    .line 701
    .restart local v29    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mHeight:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextHeight:F

    move/from16 v32, v0

    add-float v31, v31, v32

    const v32, 0x3ef5c28f    # 0.48f

    mul-float v30, v31, v32

    .line 702
    .restart local v30    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidString:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move/from16 v2, v29

    move/from16 v3, v30

    move-object/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 683
    .end local v8    # "boltPct":F
    .end local v29    # "x":F
    .end local v30    # "y":F
    .restart local v14    # "i":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPoints:[F

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aget v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/RectF;->width()F

    move-result v34

    mul-float v33, v33, v34

    add-float v32, v32, v33

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPoints:[F

    move-object/from16 v34, v0

    const/16 v35, 0x1

    aget v34, v34, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/RectF;->height()F

    move-result v35

    mul-float v34, v34, v35

    add-float v33, v33, v34

    .line 683
    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_9

    .line 695
    .end local v14    # "i":I
    .restart local v8    # "boltPct":F
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v32, v0

    sget-object v33, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto/16 :goto_a

    .line 706
    .end local v6    # "bb":F
    .end local v7    # "bl":F
    .end local v8    # "boltPct":F
    .end local v9    # "br":F
    .end local v10    # "bt":F
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSaveEnabled:Z

    move/from16 v31, v0

    if-eqz v31, :cond_f

    goto/16 :goto_6

    .line 786
    .restart local v17    # "pctOpaque":Z
    .restart local v18    # "pctText":Ljava/lang/String;
    .restart local v19    # "pctX":F
    .restart local v20    # "pctY":F
    :cond_1b
    if-eqz v17, :cond_11

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_7
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIntrinsicWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 804
    const/4 v0, 0x0

    return v0
.end method

.method public onBatteryLevelChanged(IZZIIIIZ)V
    .locals 5
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z
    .param p4, "batteryStatus"    # I
    .param p5, "batteryHealth"    # I
    .param p6, "batteryOnline"    # I
    .param p7, "plugType"    # I
    .param p8, "powerSupply"    # Z

    .prologue
    const/4 v4, 0x1

    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, "isSomethingChanged":Z
    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLevel:I

    if-ne v1, p1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPluggedIn:Z

    if-eq v1, p2, :cond_9

    :cond_0
    const/4 v0, 0x1

    .line 320
    :goto_0
    if-eqz p3, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mCharging:Z

    if-eq p3, v1, :cond_1

    .line 321
    sget-object v1, Lcom/android/systemui/BatteryMeterDrawable;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Battery icon update - Charging"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_1
    iput p1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLevel:I

    .line 324
    iput-boolean p2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPluggedIn:Z

    .line 325
    iput-boolean p3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mCharging:Z

    .line 328
    if-nez v0, :cond_3

    .line 329
    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryStatus:I

    if-ne v1, p4, :cond_2

    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryHealth:I

    if-eq v1, p5, :cond_a

    :cond_2
    const/4 v0, 0x1

    .line 331
    :cond_3
    :goto_1
    iput p4, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryStatus:I

    .line 332
    iput p5, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryHealth:I

    .line 335
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_INCOMPATIBLE_CHARGER_CHECK:Z

    if-eqz v1, :cond_5

    .line 336
    if-nez v0, :cond_4

    .line 337
    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryOnline:I

    if-eq v1, p6, :cond_b

    const/4 v0, 0x1

    .line 339
    :cond_4
    :goto_2
    iput p6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryOnline:I

    .line 342
    :cond_5
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->IS_TABLET:Z

    if-eqz v1, :cond_7

    .line 343
    if-nez v0, :cond_6

    .line 344
    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPlugType:I

    if-eq v1, p7, :cond_c

    const/4 v0, 0x1

    .line 346
    :cond_6
    :goto_3
    iput p7, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPlugType:I

    .line 357
    :cond_7
    sget-object v1, Lcom/android/systemui/BatteryMeterDrawable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSomethingChanged - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    if-eqz v0, :cond_8

    .line 359
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPostInvalidateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 360
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPostInvalidateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 310
    :cond_8
    return-void

    .line 318
    :cond_9
    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mCharging:Z

    if-ne v1, p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 329
    :cond_a
    const/4 v0, 0x0

    goto :goto_1

    .line 337
    :cond_b
    const/4 v0, 0x0

    goto :goto_2

    .line 344
    :cond_c
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public onPowerSaveChanged(Z)V
    .locals 0
    .param p1, "isPowerSave"    # Z

    .prologue
    .line 367
    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSaveEnabled:Z

    .line 368
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterDrawable;->invalidateSelf()V

    .line 366
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 795
    return-void
.end method

.method public setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 1
    .param p1, "batteryController"    # Lcom/android/systemui/statusbar/policy/BatteryController;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 305
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSaveEnabled:Z

    .line 303
    return-void
.end method

.method public setBounds(IIII)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/high16 v2, 0x3f400000    # 0.75f

    .line 440
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 441
    sub-int v0, p4, p2

    iput v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mHeight:I

    .line 442
    sub-int v0, p3, p1

    iput v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mWidth:I

    .line 443
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 444
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextHeight:F

    .line 446
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_INCOMPATIBLE_CHARGER_CHECK:Z

    if-nez v0, :cond_0

    .line 447
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_TABLET:Z

    .line 446
    if-eqz v0, :cond_1

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 439
    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 799
    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 5
    .param p1, "darkIntensity"    # F

    .prologue
    .line 483
    iget v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mOldDarkIntensity:F

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    .line 484
    return-void

    .line 486
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/BatteryMeterDrawable;->getBackgroundColor(F)I

    move-result v0

    .line 487
    .local v0, "backgroundColor":I
    invoke-direct {p0, p1}, Lcom/android/systemui/BatteryMeterDrawable;->getFillColor(F)I

    move-result v1

    .line 488
    .local v1, "fillColor":I
    iput v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIconTint:I

    .line 489
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 490
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    .line 491
    iget v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModeBoltColor:I

    iget v4, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModeBoltColor:I

    invoke-direct {p0, p1, v3, v4}, Lcom/android/systemui/BatteryMeterDrawable;->getColorForDarkIntensity(FII)I

    move-result v3

    .line 490
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 493
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_USB_TYPE_C:Z

    if-eqz v2, :cond_1

    .line 494
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPaint:Landroid/graphics/Paint;

    .line 495
    iget v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModePowerSupplyingColor:I

    iget v4, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModePowerSupplyingColor:I

    invoke-direct {p0, p1, v3, v4}, Lcom/android/systemui/BatteryMeterDrawable;->getColorForDarkIntensity(FII)I

    move-result v3

    .line 494
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 497
    :cond_1
    iput v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mChargeColor:I

    .line 498
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterDrawable;->invalidateSelf()V

    .line 499
    iput p1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mOldDarkIntensity:F

    .line 482
    return-void
.end method

.method public startListening()V
    .locals 4

    .prologue
    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mListening:Z

    .line 282
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 283
    const-string/jumbo v1, "status_bar_show_battery_percent"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mSettingObserver:Lcom/android/systemui/BatteryMeterDrawable$SettingObserver;

    const/4 v3, 0x0

    .line 282
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 284
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterDrawable;->updateShowPercent()V

    .line 285
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 280
    return-void
.end method

.method public stopListening()V
    .locals 2

    .prologue
    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mListening:Z

    .line 290
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mSettingObserver:Lcom/android/systemui/BatteryMeterDrawable$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 291
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 288
    return-void
.end method

.method public updateBatteryColor()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 872
    iget-object v5, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 873
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x7f110027

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 874
    .local v3, "levels":Landroid/content/res/TypedArray;
    const v5, 0x7f110028

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 877
    .local v1, "colors":Landroid/content/res/TypedArray;
    iget-object v5, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KnoxStateMonitor;->getBatteryLevelColourItem()Lcom/samsung/android/knox/custom/StatusbarIconItem;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 878
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterDrawable;->updateKnoxCustomStatusBarBatteryColours()V

    .line 887
    :cond_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 888
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 871
    return-void

    .line 880
    :cond_1
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 881
    .local v0, "N":I
    mul-int/lit8 v5, v0, 0x2

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    .line 882
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 883
    iget-object v5, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    mul-int/lit8 v6, v2, 0x2

    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    aput v7, v5, v6

    .line 884
    iget-object v5, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    aput v7, v5, v6

    .line 882
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public updateKnoxCustomStatusBarBatteryColours()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 838
    const/4 v8, 0x0

    .line 839
    .local v8, "numLevels":I
    const/4 v7, 0x0

    .line 840
    .local v7, "knox_levels":[I
    const/4 v6, 0x0

    .line 841
    .local v6, "knox_colors":[I
    const/4 v5, 0x0

    .line 843
    .local v5, "knoxCustomBatteryColourItems":[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;
    iget-object v10, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/keyguard/KnoxStateMonitor;->getBatteryLevelColourItem()Lcom/samsung/android/knox/custom/StatusbarIconItem;

    move-result-object v1

    .line 844
    .local v1, "StatusbarIconItem":Lcom/samsung/android/knox/custom/StatusbarIconItem;
    if-eqz v1, :cond_1

    .line 845
    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/StatusbarIconItem;->getAttributeColourArray()[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    move-result-object v5

    .line 846
    .local v5, "knoxCustomBatteryColourItems":[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;
    if-eqz v5, :cond_2

    array-length v10, v5

    if-lez v10, :cond_2

    .line 847
    array-length v10, v5

    new-array v7, v10, [I

    .line 848
    .local v7, "knox_levels":[I
    array-length v10, v5

    new-array v6, v10, [I

    .line 849
    .local v6, "knox_colors":[I
    const/4 v4, 0x0

    .line 850
    .local v4, "j":I
    array-length v10, v5

    :goto_0
    if-ge v9, v10, :cond_0

    aget-object v3, v5, v9

    .line 851
    .local v3, "item":Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;
    invoke-virtual {v3}, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->getAttribute()I

    move-result v11

    aput v11, v7, v4

    .line 852
    invoke-virtual {v3}, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->getColour()I

    move-result v11

    aput v11, v6, v4

    .line 853
    add-int/lit8 v4, v4, 0x1

    .line 850
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 855
    .end local v3    # "item":Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;
    :cond_0
    array-length v8, v5

    .line 861
    .end local v4    # "j":I
    .end local v5    # "knoxCustomBatteryColourItems":[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;
    .end local v6    # "knox_colors":[I
    .end local v7    # "knox_levels":[I
    :cond_1
    :goto_1
    if-eqz v5, :cond_3

    .line 862
    move v0, v8

    .line 863
    .local v0, "N":I
    mul-int/lit8 v9, v8, 0x2

    new-array v9, v9, [I

    iput-object v9, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    .line 864
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 865
    iget-object v9, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    mul-int/lit8 v10, v2, 0x2

    aget v11, v7, v2

    aput v11, v9, v10

    .line 866
    iget-object v9, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    mul-int/lit8 v10, v2, 0x2

    add-int/lit8 v10, v10, 0x1

    aget v11, v6, v2

    aput v11, v9, v10

    .line 864
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 857
    .end local v0    # "N":I
    .end local v2    # "i":I
    .restart local v5    # "knoxCustomBatteryColourItems":[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;
    .local v6, "knox_colors":[I
    .local v7, "knox_levels":[I
    :cond_2
    const/4 v5, 0x0

    .local v5, "knoxCustomBatteryColourItems":[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;
    goto :goto_1

    .line 837
    .end local v5    # "knoxCustomBatteryColourItems":[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;
    .end local v6    # "knox_colors":[I
    .end local v7    # "knox_levels":[I
    :cond_3
    return-void
.end method
