.class public Lcom/android/systemui/tv/pip/PipOnboardingActivity;
.super Landroid/app/Activity;
.source "PipOnboardingActivity.java"

# interfaces
.implements Lcom/android/systemui/tv/pip/PipManager$Listener;


# instance fields
.field private mEnterAnimator:Landroid/animation/AnimatorSet;

.field private final mPipManager:Lcom/android/systemui/tv/pip/PipManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    invoke-static {}, Lcom/android/systemui/tv/pip/PipManager;->getInstance()Lcom/android/systemui/tv/pip/PipManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipOnboardingActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    .line 35
    return-void
.end method

.method private loadAnimator(II)Landroid/animation/Animator;
    .locals 2
    .param p1, "viewResId"    # I
    .param p2, "animResId"    # I

    .prologue
    .line 78
    invoke-static {p0, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 79
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {p0, p1}, Lcom/android/systemui/tv/pip/PipOnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 80
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f04016e

    invoke-virtual {p0, v0}, Lcom/android/systemui/tv/pip/PipOnboardingActivity;->setContentView(I)V

    .line 43
    const v0, 0x7f1301ee

    invoke-virtual {p0, v0}, Lcom/android/systemui/tv/pip/PipOnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/tv/pip/PipOnboardingActivity$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/tv/pip/PipOnboardingActivity$1;-><init>(Lcom/android/systemui/tv/pip/PipOnboardingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipOnboardingActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tv/pip/PipManager;->addListener(Lcom/android/systemui/tv/pip/PipManager$Listener;)V

    .line 40
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipOnboardingActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tv/pip/PipManager;->removeListener(Lcom/android/systemui/tv/pip/PipManager$Listener;)V

    .line 106
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipOnboardingActivity;->mEnterAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x1

    return v0

    .line 96
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipOnboardingActivity;->mEnterAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x1

    return v0

    .line 88
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onMoveToFullscreen()V
    .locals 0

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/systemui/tv/pip/PipOnboardingActivity;->finish()V

    .line 125
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/tv/pip/PipOnboardingActivity;->finish()V

    .line 100
    return-void
.end method

.method public onPipActivityClosed()V
    .locals 0

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/tv/pip/PipOnboardingActivity;->finish()V

    .line 115
    return-void
.end method

.method public onPipEntered()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public onPipResizeAboutToStart()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const v5, 0x7f0500dc

    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 56
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/tv/pip/PipOnboardingActivity;->mEnterAnimator:Landroid/animation/AnimatorSet;

    .line 57
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipOnboardingActivity;->mEnterAnimator:Landroid/animation/AnimatorSet;

    const/4 v2, 0x6

    new-array v2, v2, [Landroid/animation/Animator;

    .line 58
    const v3, 0x7f130245

    const v4, 0x7f0500d9

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/tv/pip/PipOnboardingActivity;->loadAnimator(II)Landroid/animation/Animator;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 59
    const v3, 0x7f130402

    invoke-direct {p0, v3, v5}, Lcom/android/systemui/tv/pip/PipOnboardingActivity;->loadAnimator(II)Landroid/animation/Animator;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 60
    const v3, 0x7f130403

    invoke-direct {p0, v3, v5}, Lcom/android/systemui/tv/pip/PipOnboardingActivity;->loadAnimator(II)Landroid/animation/Animator;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 61
    const v3, 0x7f130094

    const v4, 0x7f0500dd

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/tv/pip/PipOnboardingActivity;->loadAnimator(II)Landroid/animation/Animator;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 62
    const v3, 0x7f130228

    .line 63
    const v4, 0x7f0500db

    .line 62
    invoke-direct {p0, v3, v4}, Lcom/android/systemui/tv/pip/PipOnboardingActivity;->loadAnimator(II)Landroid/animation/Animator;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    .line 64
    const v3, 0x7f1301ee

    const v4, 0x7f0500da

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/tv/pip/PipOnboardingActivity;->loadAnimator(II)Landroid/animation/Animator;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    .line 57
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 65
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipOnboardingActivity;->mEnterAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/systemui/tv/pip/PipOnboardingActivity$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/tv/pip/PipOnboardingActivity$2;-><init>(Lcom/android/systemui/tv/pip/PipOnboardingActivity;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/tv/pip/PipOnboardingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 73
    .local v0, "delay":I
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipOnboardingActivity;->mEnterAnimator:Landroid/animation/AnimatorSet;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 74
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipOnboardingActivity;->mEnterAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 54
    return-void
.end method

.method public onShowPipMenu()V
    .locals 0

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/tv/pip/PipOnboardingActivity;->finish()V

    .line 120
    return-void
.end method
