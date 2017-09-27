.class public abstract Lcom/android/systemui/statusbar/phone/PanelBar;
.super Landroid/widget/FrameLayout;
.source "PanelBar.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field private mState:I

.field private mStatusBarState:I

.field private mTracking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    .line 52
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mStatusBarState:I

    .line 63
    return-void
.end method


# virtual methods
.method public collapsePanel(ZZF)V
    .locals 4
    .param p1, "animate"    # Z
    .param p2, "delayed"    # Z
    .param p3, "speedUpFactor"    # F

    .prologue
    const/4 v3, 0x0

    .line 167
    const/4 v1, 0x0

    .line 168
    .local v1, "waiting":Z
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 169
    .local v0, "pv":Lcom/android/systemui/statusbar/phone/PanelView;
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 173
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->resetViews()V

    .line 174
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedFraction(F)V

    .line 175
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    .line 178
    :goto_0
    if-nez v1, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-eqz v2, :cond_1

    .line 181
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 182
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelCollapsed()V

    .line 166
    :cond_1
    return-void

    .line 170
    :cond_2
    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/statusbar/phone/PanelView;->collapse(ZF)V

    .line 171
    const/4 v1, 0x1

    .line 169
    goto :goto_0
.end method

.method public go(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/PanelStateNotifier;->notify(Landroid/content/Context;I)V

    .line 54
    return-void
.end method

.method public onClosingFinished()V
    .locals 1

    .prologue
    .line 224
    const-string/jumbo v0, "onClosingFinished"

    invoke-static {v0}, Lcom/android/systemui/statusbar/DebugLogUtils;->addPanelBarTraceDebugLogs(Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public onExpandingFinished()V
    .locals 1

    .prologue
    .line 218
    const-string/jumbo v0, "onExpandingFinished"

    invoke-static {v0}, Lcom/android/systemui/statusbar/DebugLogUtils;->addPanelBarTraceDebugLogs(Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 68
    return-void
.end method

.method public onPanelCollapsed()V
    .locals 1

    .prologue
    .line 194
    const-string/jumbo v0, "onPanelCollapsed"

    invoke-static {v0}, Lcom/android/systemui/statusbar/DebugLogUtils;->addPanelBarTraceDebugLogs(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public onPanelFullyOpened()V
    .locals 1

    .prologue
    .line 200
    const-string/jumbo v0, "onPanelFullyOpened"

    invoke-static {v0}, Lcom/android/systemui/statusbar/DebugLogUtils;->addPanelBarTraceDebugLogs(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public onPanelPeeked()V
    .locals 1

    .prologue
    .line 188
    const-string/jumbo v0, "onPanelPeeked"

    invoke-static {v0}, Lcom/android/systemui/statusbar/DebugLogUtils;->addPanelBarTraceDebugLogs(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 95
    sget-object v3, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onTouch: all panels disabled, ignoring touch at (%d,%d)"

    new-array v5, v8, [Ljava/lang/Object;

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 95
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    return v7

    .line 101
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 102
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 103
    .local v1, "panel":Lcom/android/systemui/statusbar/phone/PanelView;
    if-nez v1, :cond_2

    .line 105
    sget-object v3, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onTouch: no panel for touch at (%d,%d)"

    new-array v5, v8, [Ljava/lang/Object;

    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 105
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return v2

    .line 109
    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelView;->isEnabled()Z

    move-result v0

    .line 112
    .local v0, "enabled":Z
    if-nez v0, :cond_3

    .line 114
    sget-object v3, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    .line 115
    const-string/jumbo v4, "onTouch: panel (%s) is disabled, ignoring touch at (%d,%d)"

    .line 114
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 116
    aput-object v1, v5, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 114
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return v2

    .line 120
    .end local v0    # "enabled":Z
    .end local v1    # "panel":Lcom/android/systemui/statusbar/phone/PanelView;
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-eqz v3, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_4
    return v2
.end method

.method public onTrackingStarted()V
    .locals 1

    .prologue
    .line 206
    const-string/jumbo v0, "onTrackingStarted"

    invoke-static {v0}, Lcom/android/systemui/statusbar/DebugLogUtils;->addPanelBarTraceDebugLogs(Ljava/lang/String;)V

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    .line 204
    return-void
.end method

.method public onTrackingStopped(Z)V
    .locals 2
    .param p1, "expand"    # Z

    .prologue
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTrackingStopped("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/DebugLogUtils;->addPanelBarTraceDebugLogs(Ljava/lang/String;)V

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    .line 210
    return-void
.end method

.method public panelEnabled()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public panelExpansionChanged(FZ)V
    .locals 9
    .param p1, "frac"    # F
    .param p2, "expanded"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 131
    const/4 v0, 0x1

    .line 132
    .local v0, "fullyClosed":Z
    const/4 v1, 0x0

    .line 134
    .local v1, "fullyOpened":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 136
    .local v2, "pv":Lcom/android/systemui/statusbar/phone/PanelView;
    if-nez p2, :cond_8

    const/4 v5, 0x0

    cmpl-float v5, p1, v5

    if-nez v5, :cond_8

    .line 137
    iget v5, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mStatusBarState:I

    const/4 v8, 0x5

    if-eq v5, v8, :cond_0

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mStatusBarState:I

    const/16 v8, 0xa

    if-ne v5, v8, :cond_7

    :cond_0
    move v5, v6

    :goto_0
    move v3, v5

    .line 138
    .local v3, "shouldShow":Z
    :goto_1
    if-eqz v3, :cond_1

    .line 139
    sget-object v5, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "SHOULD SHOW"

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_1
    if-nez p2, :cond_2

    if-eqz v3, :cond_9

    :cond_2
    move v5, v7

    :goto_2
    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/phone/PanelView;->setVisibility(I)V

    .line 144
    if-eqz p2, :cond_4

    .line 145
    iget v5, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-nez v5, :cond_3

    .line 146
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelPeeked()V

    .line 149
    :cond_3
    const/4 v0, 0x0

    .line 150
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v4

    .line 152
    .local v4, "thisFrac":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_a

    const/4 v1, 0x1

    .line 154
    .end local v4    # "thisFrac":F
    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    if-eqz v5, :cond_b

    .line 157
    :cond_5
    if-eqz v0, :cond_6

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    if-eqz v5, :cond_c

    .line 130
    :cond_6
    :goto_4
    return-void

    .end local v3    # "shouldShow":Z
    :cond_7
    move v5, v7

    .line 137
    goto :goto_0

    :cond_8
    move v3, v7

    .line 136
    goto :goto_1

    .line 141
    .restart local v3    # "shouldShow":Z
    :cond_9
    const/4 v5, 0x4

    goto :goto_2

    .line 152
    .restart local v4    # "thisFrac":F
    :cond_a
    const/4 v1, 0x0

    goto :goto_3

    .line 155
    .end local v4    # "thisFrac":F
    :cond_b
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 156
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelFullyOpened()V

    goto :goto_4

    .line 157
    :cond_c
    iget v5, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-eqz v5, :cond_6

    .line 158
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 159
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelCollapsed()V

    goto :goto_4
.end method

.method public abstract panelScrimMinFractionChanged(F)V
.end method

.method public setBouncerShowing(Z)V
    .locals 2
    .param p1, "showing"    # Z

    .prologue
    .line 78
    if-eqz p1, :cond_1

    const/4 v0, 0x4

    .line 81
    .local v0, "important":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->setImportantForAccessibility(I)V

    .line 83
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setImportantForAccessibility(I)V

    .line 77
    :cond_0
    return-void

    .line 79
    .end local v0    # "important":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 0
    .param p1, "pv"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 74
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/PanelView;->setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V

    .line 72
    return-void
.end method

.method public setStatusBarState(I)V
    .locals 0
    .param p1, "statusBarState"    # I

    .prologue
    .line 229
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mStatusBarState:I

    .line 228
    return-void
.end method
