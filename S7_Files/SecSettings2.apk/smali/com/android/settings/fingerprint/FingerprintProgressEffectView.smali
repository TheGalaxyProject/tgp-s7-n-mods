.class public Lcom/android/settings/fingerprint/FingerprintProgressEffectView;
.super Landroid/widget/FrameLayout;
.source "FingerprintProgressEffectView.java"


# static fields
.field private static strokeWidth:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private bShowError:Z

.field private mContext:Landroid/content/Context;

.field private mEffectHeight:I

.field private mEffectWidth:I

.field private mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

.field private mPercent:I

.field private mWarnEffect:Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->strokeWidth:I

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 18
    const-string/jumbo v0, "FpstFingerprintProgressEffectView"

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->TAG:Ljava/lang/String;

    .line 23
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:I

    .line 24
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    .line 25
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectWidth:I

    .line 26
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectHeight:I

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const-string/jumbo v0, "FpstFingerprintProgressEffectView"

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->TAG:Ljava/lang/String;

    .line 23
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:I

    .line 24
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    .line 25
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectWidth:I

    .line 26
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectHeight:I

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const-string/jumbo v0, "FpstFingerprintProgressEffectView"

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->TAG:Ljava/lang/String;

    .line 23
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:I

    .line 24
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    .line 25
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectWidth:I

    .line 26
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectHeight:I

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 120
    const-string/jumbo v1, "FpstFingerprintProgressEffectView"

    const-string/jumbo v2, "[init]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mContext:Landroid/content/Context;

    .line 124
    if-nez p2, :cond_0

    .line 125
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "attrs is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_0
    sget-object v1, Lcom/android/settings/R$styleable;->FingerprintEffectView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 134
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectWidth:I

    .line 135
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectHeight:I

    .line 137
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100357

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->strokeWidth:I

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->reset()V

    .line 119
    return-void
.end method


# virtual methods
.method public removeFingerMark()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 102
    const-string/jumbo v1, "FpstFingerprintProgressEffectView"

    const-string/jumbo v2, "[removeFingerMark]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    if-eqz v1, :cond_0

    .line 105
    iput-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    .line 107
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3e19999a    # 0.15f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 108
    .local v0, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 109
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 111
    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->setFingerStatus(I)V

    .line 112
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->showFinger()V

    .line 113
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    invoke-virtual {v1, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->startAnimation(Landroid/view/animation/Animation;)V

    .line 114
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:I

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->setPercent(I)V

    .line 115
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->setWarningStatus(I)V

    .line 101
    .end local v0    # "alpha":Landroid/view/animation/AlphaAnimation;
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 18

    .prologue
    .line 145
    const-string/jumbo v1, "FpstFingerprintProgressEffectView"

    const-string/jumbo v2, "[reset]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:I

    .line 148
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    .line 150
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    if-eqz v1, :cond_0

    .line 151
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->removeView(Landroid/view/View;)V

    .line 152
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    .line 154
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWarnEffect:Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;

    if-eqz v1, :cond_1

    .line 155
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWarnEffect:Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->removeView(Landroid/view/View;)V

    .line 156
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWarnEffect:Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;

    .line 159
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x7f02010e

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 160
    .local v17, "fingerDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 161
    .local v14, "drawingWidth":I
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 162
    .local v13, "drawingHeight":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectWidth:I

    sub-int/2addr v1, v14

    div-int/lit8 v15, v1, 0x2

    .line 163
    .local v15, "drawingX":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectHeight:I

    sub-int/2addr v1, v13

    div-int/lit8 v16, v1, 0x2

    .line 165
    .local v16, "drawingY":I
    new-instance v1, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectHeight:I

    .line 166
    sget v9, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->strokeWidth:I

    .line 165
    const v5, -0xfc4d15

    const v6, -0xff541d

    const v7, -0x1b1b1c

    .line 166
    const v8, -0xff2d5d

    const v10, 0x7f02010e

    const v11, 0x7f020107

    const v12, 0x7f020108

    .line 165
    invoke-direct/range {v1 .. v12}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;-><init>(Landroid/content/Context;IIIIIIIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    .line 168
    new-instance v1, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWarnEffect:Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;

    .line 169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWarnEffect:Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;

    int-to-float v2, v15

    invoke-virtual {v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->setX(F)V

    .line 170
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWarnEffect:Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;

    move/from16 v0, v16

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->setY(F)V

    .line 172
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectHeight:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->addView(Landroid/view/View;II)V

    .line 173
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWarnEffect:Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v14, v13}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->addView(Landroid/view/View;II)V

    .line 174
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->setLayoutDirection(I)V

    .line 144
    return-void
.end method

.method public setFingerStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    invoke-virtual {v0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->setFingerStatus(I)V

    .line 51
    :cond_0
    return-void
.end method

.method public setPercent(I)V
    .locals 3
    .param p1, "percent"    # I

    .prologue
    .line 67
    const-string/jumbo v0, "FpstFingerprintProgressEffectView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[setPercent] percent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:I

    if-le v0, p1, :cond_0

    .line 70
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->setPercent(F)V

    .line 78
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    if-nez v0, :cond_2

    .line 79
    iput p1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:I

    .line 66
    :cond_2
    return-void
.end method

.method public setWarningStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->hideFinger()V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWarnEffect:Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWarnEffect:Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;

    invoke-virtual {v0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->setWarningStatus(I)V

    .line 57
    :cond_1
    return-void
.end method

.method public showErrorEffect()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 84
    const-string/jumbo v2, "FpstFingerprintProgressEffectView"

    const-string/jumbo v3, "[showErrorEffect]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:I

    add-int/lit8 v1, v2, 0x5

    .line 87
    .local v1, "tmp_percent":I
    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    .line 88
    const/16 v1, 0x62

    .line 90
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e19999a    # 0.15f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 91
    .local v0, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 92
    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 94
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    if-eqz v2, :cond_2

    .line 83
    :cond_1
    :goto_0
    return-void

    .line 95
    :cond_2
    iput-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    .line 96
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    invoke-virtual {v2, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->startAnimation(Landroid/view/animation/Animation;)V

    .line 97
    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->setPercent(I)V

    goto :goto_0
.end method
