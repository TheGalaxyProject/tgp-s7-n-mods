.class public Lcom/android/systemui/statusbar/phone/KeyguardServiceBoxPositionAlgorithm;
.super Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;
.source "KeyguardServiceBoxPositionAlgorithm.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;Z)V
    .locals 2
    .param p1, "result"    # Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;
    .param p2, "accessory"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 48
    const/4 v0, 0x0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    .line 49
    iput v1, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockScale:F

    .line 50
    iput v1, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    .line 56
    if-eqz p2, :cond_0

    .line 57
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardServiceBoxPositionAlgorithm;->mKeyguardStatusHeight:I

    int-to-float v0, v0

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 56
    :goto_0
    iput v0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    .line 47
    return-void

    .line 57
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardServiceBoxPositionAlgorithm;->mKeyguardStatusHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardServiceBoxPositionAlgorithm;->mAccessoryBottomMarginOffset:I

    add-int/2addr v0, v1

    goto :goto_0
.end method
