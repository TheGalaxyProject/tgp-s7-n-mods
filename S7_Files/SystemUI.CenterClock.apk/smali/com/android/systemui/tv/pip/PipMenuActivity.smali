.class public Lcom/android/systemui/tv/pip/PipMenuActivity;
.super Landroid/app/Activity;
.source "PipMenuActivity.java"

# interfaces
.implements Lcom/android/systemui/tv/pip/PipManager$Listener;


# instance fields
.field private mFadeInAnimation:Landroid/animation/Animator;

.field private mFadeOutAnimation:Landroid/animation/Animator;

.field private mPipControlsView:Landroid/view/View;

.field private final mPipManager:Lcom/android/systemui/tv/pip/PipManager;

.field private mRestorePipSizeWhenClose:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    invoke-static {}, Lcom/android/systemui/tv/pip/PipManager;->getInstance()Lcom/android/systemui/tv/pip/PipManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipMenuActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    .line 31
    return-void
.end method

.method private restorePipAndFinish()V
    .locals 2

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/systemui/tv/pip/PipMenuActivity;->mRestorePipSizeWhenClose:Z

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipMenuActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipManager;->resizePinnedStack(I)V

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/tv/pip/PipMenuActivity;->finish()V

    .line 57
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/systemui/tv/pip/PipMenuActivity;->restorePipAndFinish()V

    .line 87
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f04016d

    invoke-virtual {p0, v0}, Lcom/android/systemui/tv/pip/PipMenuActivity;->setContentView(I)V

    .line 45
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipMenuActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tv/pip/PipManager;->addListener(Lcom/android/systemui/tv/pip/PipManager$Listener;)V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/tv/pip/PipMenuActivity;->mRestorePipSizeWhenClose:Z

    .line 48
    const v0, 0x7f130400

    invoke-virtual {p0, v0}, Lcom/android/systemui/tv/pip/PipMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tv/pip/PipControlsView;

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipMenuActivity;->mPipControlsView:Landroid/view/View;

    .line 50
    const v0, 0x7f0500d7

    .line 49
    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipMenuActivity;->mFadeInAnimation:Landroid/animation/Animator;

    .line 51
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipMenuActivity;->mFadeInAnimation:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipMenuActivity;->mPipControlsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 53
    const v0, 0x7f0500d8

    .line 52
    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipMenuActivity;->mFadeOutAnimation:Landroid/animation/Animator;

    .line 54
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipMenuActivity;->mFadeOutAnimation:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipMenuActivity;->mPipControlsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipMenuActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tv/pip/PipManager;->removeListener(Lcom/android/systemui/tv/pip/PipManager$Listener;)V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipMenuActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    .line 83
    const/4 v1, 0x1

    .line 82
    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipManager;->resumePipResizing(I)V

    .line 79
    return-void
.end method

.method public onMoveToFullscreen()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/tv/pip/PipMenuActivity;->mRestorePipSizeWhenClose:Z

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/tv/pip/PipMenuActivity;->finish()V

    .line 103
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipMenuActivity;->mFadeOutAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 75
    invoke-direct {p0}, Lcom/android/systemui/tv/pip/PipMenuActivity;->restorePipAndFinish()V

    .line 72
    return-void
.end method

.method public onPipActivityClosed()V
    .locals 0

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/tv/pip/PipMenuActivity;->finish()V

    .line 95
    return-void
.end method

.method public onPipEntered()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public onPipResizeAboutToStart()V
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/systemui/tv/pip/PipMenuActivity;->finish()V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipMenuActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    .line 114
    const/4 v1, 0x1

    .line 113
    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipManager;->suspendPipResizing(I)V

    .line 111
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 68
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipMenuActivity;->mFadeInAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 66
    return-void
.end method

.method public onShowPipMenu()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method
