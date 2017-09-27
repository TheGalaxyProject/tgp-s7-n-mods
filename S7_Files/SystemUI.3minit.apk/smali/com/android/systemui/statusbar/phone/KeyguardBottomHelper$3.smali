.class Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$3;
.super Ljava/lang/Object;
.source "KeyguardBottomHelper.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->setCallbackForDummy(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelDAAffordance()V
    .locals 0

    .prologue
    .line 377
    return-void
.end method

.method public getAffordanceFalsingFactor()F
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x0

    return v0
.end method

.method public getCenterIcon()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLeftIcon()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLeftPreview()Landroid/view/View;
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxTranslationDistance()F
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method public getRightIcon()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRightPreview()Landroid/view/View;
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x0

    return-object v0
.end method

.method public needsAntiFalsing()Z
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimationToSideEnded()V
    .locals 0

    .prologue
    .line 356
    return-void
.end method

.method public onAnimationToSideStarted(ZFF)V
    .locals 0
    .param p1, "rightPage"    # Z
    .param p2, "translation"    # F
    .param p3, "vel"    # F

    .prologue
    .line 424
    return-void
.end method

.method public onAnimationToSideStarted(ZFFZZ)V
    .locals 0
    .param p1, "rightPage"    # Z
    .param p2, "translation"    # F
    .param p3, "vel"    # F
    .param p4, "inSecure"    # Z
    .param p5, "isUnBlockTouch"    # Z

    .prologue
    .line 352
    return-void
.end method

.method public onIconClicked(Z)Z
    .locals 1
    .param p1, "rightIcon"    # Z

    .prologue
    .line 386
    const/4 v0, 0x1

    return v0
.end method

.method public onSwipingAborted()V
    .locals 0

    .prologue
    .line 369
    return-void
.end method

.method public onSwipingStarted(Z)V
    .locals 0
    .param p1, "rightIcon"    # Z

    .prologue
    .line 365
    return-void
.end method

.method public startPhoneLaunchAnimationInSecured()V
    .locals 0

    .prologue
    .line 381
    return-void
.end method

.method public userActivity()V
    .locals 0

    .prologue
    .line 415
    return-void
.end method
