.class public abstract Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
.super Landroid/widget/FrameLayout;
.source "KeyguardServiceBoxPage.java"


# instance fields
.field private mCurrentOrientation:I

.field protected mDisplayMetrics:Landroid/util/DisplayMetrics;

.field protected mIsBigView:Z

.field protected mIsCovered:Z

.field protected mIsMKeyboardConnected:Z

.field private mIsRotationEnabled:Z

.field protected mRes:Landroid/content/res/Resources;

.field private mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

.field protected mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 33
    iput-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsRotationEnabled:Z

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mCurrentOrientation:I

    .line 35
    iput-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    .line 52
    iput-object v2, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mRes:Landroid/content/res/Resources;

    .line 76
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mWindowManager:Landroid/view/WindowManager;

    .line 78
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 79
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method protected final dismissServiceBox()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;->dismissServiceBox(Ljava/lang/String;)V

    .line 170
    :cond_0
    return-void
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method protected final isExpanded()Z
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    invoke-interface {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;->isContainerExpanded()Z

    .line 187
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 195
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardRune;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsRotationEnabled:Z

    .line 192
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 200
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 202
    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsRotationEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 203
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mCurrentOrientation:I

    .line 199
    :cond_0
    return-void
.end method

.method public abstract refreshViews()V
.end method

.method public setCoverState(Z)V
    .locals 0
    .param p1, "isCovered"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsCovered:Z

    .line 90
    return-void
.end method

.method public setMobileKeyboardState(Z)V
    .locals 0
    .param p1, "isConnected"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsMKeyboardConnected:Z

    .line 97
    return-void
.end method

.method public abstract setPageType(IZ)V
.end method

.method public final setServiceBoxController(Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;Z)V
    .locals 0
    .param p1, "controller"    # Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;
    .param p2, "isBigView"    # Z

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    .line 117
    iput-boolean p2, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    .line 115
    return-void
.end method

.method protected final showServiceBox()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;->showServiceBox(Ljava/lang/String;)V

    .line 161
    :cond_0
    return-void
.end method

.method public updateCMAS(Z)V
    .locals 0
    .param p1, "hasCmasNotification"    # Z

    .prologue
    .line 111
    return-void
.end method

.method public abstract updateChildViewsLook()V
.end method
