.class public Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;
.super Ljava/lang/Object;
.source "ComplexAnimation.java"


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mFestivalSpriteView:Lcom/android/keyguard/wallpaper/theme/xmlparser/Frame;

.field private mLockscreenCallback:Lcom/android/keyguard/wallpaper/theme/LockscreenCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 26
    iput-object v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->mFestivalSpriteView:Lcom/android/keyguard/wallpaper/theme/xmlparser/Frame;

    .line 27
    iput-object v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->mLockscreenCallback:Lcom/android/keyguard/wallpaper/theme/LockscreenCallback;

    .line 23
    return-void
.end method


# virtual methods
.method public addAnimation(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "element"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 29
    return-void
.end method

.method public addScene(Lcom/android/keyguard/wallpaper/theme/LockscreenCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/keyguard/wallpaper/theme/LockscreenCallback;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->mLockscreenCallback:Lcom/android/keyguard/wallpaper/theme/LockscreenCallback;

    .line 37
    return-void
.end method

.method public addSprite(Lcom/android/keyguard/wallpaper/theme/xmlparser/Frame;)V
    .locals 0
    .param p1, "view"    # Lcom/android/keyguard/wallpaper/theme/xmlparser/Frame;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->mFestivalSpriteView:Lcom/android/keyguard/wallpaper/theme/xmlparser/Frame;

    .line 41
    return-void
.end method

.method public playAnimation()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->mFestivalSpriteView:Lcom/android/keyguard/wallpaper/theme/xmlparser/Frame;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->mFestivalSpriteView:Lcom/android/keyguard/wallpaper/theme/xmlparser/Frame;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Frame;->screenTurnedOn()V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->mLockscreenCallback:Lcom/android/keyguard/wallpaper/theme/LockscreenCallback;

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->mLockscreenCallback:Lcom/android/keyguard/wallpaper/theme/LockscreenCallback;

    invoke-interface {v0}, Lcom/android/keyguard/wallpaper/theme/LockscreenCallback;->screenTurnedOn()V

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 45
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->mFestivalSpriteView:Lcom/android/keyguard/wallpaper/theme/xmlparser/Frame;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->mFestivalSpriteView:Lcom/android/keyguard/wallpaper/theme/xmlparser/Frame;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Frame;->screenTurnedOff()V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->mLockscreenCallback:Lcom/android/keyguard/wallpaper/theme/LockscreenCallback;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->mLockscreenCallback:Lcom/android/keyguard/wallpaper/theme/LockscreenCallback;

    invoke-interface {v0}, Lcom/android/keyguard/wallpaper/theme/LockscreenCallback;->screenTurnedOff()V

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 78
    return-void
.end method
