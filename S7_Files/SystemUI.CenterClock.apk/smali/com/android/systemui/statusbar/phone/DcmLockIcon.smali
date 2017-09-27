.class public Lcom/android/systemui/statusbar/phone/DcmLockIcon;
.super Lcom/android/systemui/statusbar/KeyguardAffordanceView;
.source "DcmLockIcon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/DcmLockIcon$1;
    }
.end annotation


# instance fields
.field private mForceExitCircleAnimation:Z

.field private mHandler:Landroid/os/Handler;

.field private mLastDeviceInteractive:Z

.field private mLastScreenOn:Z

.field private mLastState:I

.field private mScreenOn:Z

.field private final mTrustDrawable:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/DcmLockIcon;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->handleUpdate()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mLastState:I

    .line 52
    new-instance v0, Lcom/android/systemui/statusbar/phone/DcmLockIcon$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DcmLockIcon$1;-><init>(Lcom/android/systemui/statusbar/phone/DcmLockIcon;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mHandler:Landroid/os/Handler;

    .line 67
    new-instance v0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 69
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 65
    return-void
.end method

.method private getIconForState(I)I
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 147
    const-string/jumbo v0, "DcmKeyguardLockIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIconForState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    packed-switch p1, :pswitch_data_0

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 150
    :pswitch_0
    const v0, 0x7f02018b

    return v0

    .line 152
    :pswitch_1
    const v0, 0x7f020211

    return v0

    .line 154
    :pswitch_2
    const v0, 0x7f020201

    return v0

    .line 148
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getState()I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x1

    return v0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isFaceUnlockRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    const/4 v0, 0x2

    return v0

    .line 166
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private handleUpdate()V
    .locals 10

    .prologue
    .line 109
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v4

    .line 110
    .local v4, "isDeviceInteractive":Z
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->isShown()Z

    move-result v8

    if-eqz v8, :cond_4

    move v7, v4

    .line 111
    .local v7, "visible":Z
    :goto_0
    if-eqz v7, :cond_5

    .line 112
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->start()V

    .line 116
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->getState()I

    move-result v5

    .line 117
    .local v5, "state":I
    iget v8, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mLastState:I

    if-ne v5, v8, :cond_0

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mLastDeviceInteractive:Z

    if-eq v4, v8, :cond_6

    .line 119
    :cond_0
    :goto_2
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->getIconForState(I)I

    move-result v3

    .line 120
    .local v3, "iconRes":I
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 121
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    instance-of v8, v2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v8, :cond_7

    move-object v0, v2

    .line 122
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 123
    :goto_3
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->setRestingAlpha(F)V

    .line 126
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f02a1

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "contentDescription":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 128
    if-eqz v0, :cond_1

    .line 129
    const-string/jumbo v8, "DcmKeyguardLockIcon"

    const-string/jumbo v9, "animation not null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mScreenOn:Z

    if-eqz v8, :cond_8

    .line 131
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 135
    :cond_1
    :goto_4
    iput v5, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mLastState:I

    .line 136
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mLastDeviceInteractive:Z

    .line 137
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mScreenOn:Z

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mLastScreenOn:Z

    .line 140
    .end local v1    # "contentDescription":Ljava/lang/String;
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "iconRes":I
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mForceExitCircleAnimation:Z

    if-eqz v8, :cond_9

    :cond_3
    const/4 v6, 0x0

    .line 141
    .local v6, "trustManaged":Z
    :goto_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    invoke-virtual {v8, v6}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->setTrustManaged(Z)V

    .line 142
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->setClickable(Z)V

    .line 143
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->setLongClickable(Z)V

    .line 108
    return-void

    .line 110
    .end local v5    # "state":I
    .end local v6    # "trustManaged":Z
    .end local v7    # "visible":Z
    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    .line 114
    .restart local v7    # "visible":Z
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->stop()V

    goto :goto_1

    .line 118
    .restart local v5    # "state":I
    :cond_6
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mScreenOn:Z

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mLastScreenOn:Z

    if-eq v8, v9, :cond_2

    goto :goto_2

    .line 122
    .restart local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "iconRes":I
    :cond_7
    const/4 v0, 0x0

    .local v0, "animation":Landroid/graphics/drawable/AnimatedVectorDrawable;
    goto :goto_3

    .line 133
    .end local v0    # "animation":Landroid/graphics/drawable/AnimatedVectorDrawable;
    .restart local v1    # "contentDescription":Ljava/lang/String;
    :cond_8
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    goto :goto_4

    .line 140
    .end local v1    # "contentDescription":Ljava/lang/String;
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "iconRes":I
    :cond_9
    const/4 v6, 0x1

    .restart local v6    # "trustManaged":Z
    goto :goto_5
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->stop()V

    .line 85
    invoke-super {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onDetachedFromWindow()V

    .line 83
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->start()V

    .line 73
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->stop()V

    goto :goto_0
.end method

.method public setScreenOn(Z)V
    .locals 0
    .param p1, "screenOn"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mScreenOn:Z

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->update()V

    .line 88
    return-void
.end method

.method public update()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->update(ZI)V

    .line 93
    return-void
.end method

.method public update(ZI)V
    .locals 4
    .param p1, "forceExit"    # Z
    .param p2, "delay"    # I

    .prologue
    const/16 v1, 0x12cb

    .line 98
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mForceExitCircleAnimation:Z

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 101
    :cond_0
    if-lez p2, :cond_1

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 97
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
