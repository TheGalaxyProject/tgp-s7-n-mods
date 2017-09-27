.class Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$StateUpdateAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DcmTrustDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateUpdateAnimatorListener"
.end annotation


# instance fields
.field mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$StateUpdateAnimatorListener;->this$0:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$StateUpdateAnimatorListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$StateUpdateAnimatorListener;-><init>(Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$StateUpdateAnimatorListener;->mCancelled:Z

    .line 289
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$StateUpdateAnimatorListener;->mCancelled:Z

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$StateUpdateAnimatorListener;->this$0:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->-wrap0(Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;Z)V

    .line 294
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$StateUpdateAnimatorListener;->mCancelled:Z

    .line 284
    return-void
.end method
