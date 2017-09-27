.class public Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;
.super Ljava/lang/Object;
.source "PipRecentsOverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$1;,
        Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;

.field private mIsPipFocusedInRecent:Z

.field private mIsPipRecentsOverlayShown:Z

.field private mIsRecentsShown:Z

.field private final mOverlayView:Landroid/view/View;

.field private final mPipControlsView:Lcom/android/systemui/tv/pip/PipRecentsControlsView;

.field private mPipControlsViewListener:Lcom/android/systemui/tv/pip/PipRecentsControlsView$Listener;

.field private final mPipManager:Lcom/android/systemui/tv/pip/PipManager;

.field private final mPipRecentsControlsViewFocusedLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mPipRecentsControlsViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mRecentsView:Landroid/view/View;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;)Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mCallback:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;

    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0x7d8

    const/4 v5, -0x3

    const/4 v1, -0x1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Lcom/android/systemui/tv/pip/PipManager;->getInstance()Lcom/android/systemui/tv/pip/PipManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    .line 57
    new-instance v0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$1;-><init>(Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;)V

    .line 56
    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipControlsViewListener:Lcom/android/systemui/tv/pip/PipRecentsControlsView$Listener;

    .line 74
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mWindowManager:Landroid/view/WindowManager;

    .line 77
    const-string/jumbo v0, "layout_inflater"

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 78
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f040170

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mOverlayView:Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mOverlayView:Landroid/view/View;

    const v2, 0x7f130400

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tv/pip/PipRecentsControlsView;

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipControlsView:Lcom/android/systemui/tv/pip/PipRecentsControlsView;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mOverlayView:Landroid/view/View;

    const v2, 0x7f130406

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mRecentsView:Landroid/view/View;

    .line 81
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mRecentsView:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$2;-><init>(Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 90
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 93
    const/16 v4, 0x18

    move v2, v1

    .line 90
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipRecentsControlsViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 95
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 98
    const/4 v4, 0x0

    move v2, v1

    .line 95
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipRecentsControlsViewFocusedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 73
    return-void
.end method


# virtual methods
.method addPipRecentsOverlayView()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 107
    iget-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsPipRecentsOverlayShown:Z

    if-eqz v0, :cond_0

    .line 108
    return-void

    .line 110
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsPipRecentsOverlayShown:Z

    .line 111
    iput-boolean v1, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsPipFocusedInRecent:Z

    .line 112
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipControlsView:Lcom/android/systemui/tv/pip/PipRecentsControlsView;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->reset()V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mOverlayView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipRecentsControlsViewFocusedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    return-void
.end method

.method public clearFocus()V
    .locals 3

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsPipRecentsOverlayShown:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsRecentsShown:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsPipFocusedInRecent:Z

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipManager;->isPipShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mRecentsView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mRecentsView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 165
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsPipFocusedInRecent:Z

    .line 166
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipManager;->resizePinnedStack(I)V

    .line 167
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mOverlayView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipRecentsControlsViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipControlsView:Lcom/android/systemui/tv/pip/PipRecentsControlsView;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->startFocusLoseAnimation()V

    .line 169
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mCallback:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mCallback:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;

    invoke-interface {v0}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;->onRecentsFocused()V

    .line 156
    :cond_1
    return-void

    .line 159
    :cond_2
    return-void
.end method

.method isRecentsShown()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsRecentsShown:Z

    return v0
.end method

.method public onRecentsPaused()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 198
    iput-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsRecentsShown:Z

    .line 199
    iput-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsPipFocusedInRecent:Z

    .line 200
    invoke-virtual {p0}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->removePipRecentsOverlayView()V

    .line 202
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipManager;->isPipShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipManager;->resizePinnedStack(I)V

    .line 197
    :cond_0
    return-void
.end method

.method public onRecentsResumed()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 184
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipManager;->isPipShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    return-void

    .line 187
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsRecentsShown:Z

    .line 188
    iput-boolean v1, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsPipFocusedInRecent:Z

    .line 189
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipManager;->resizePinnedStack(I)V

    .line 183
    return-void
.end method

.method public removePipRecentsOverlayView()V
    .locals 2

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsPipRecentsOverlayShown:Z

    if-nez v0, :cond_0

    .line 122
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mOverlayView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsPipRecentsOverlayShown:Z

    .line 120
    return-void
.end method

.method public requestFocus(Z)V
    .locals 4
    .param p1, "allowRecentsFocusable"    # Z

    .prologue
    const/16 v1, 0x8

    .line 136
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mRecentsView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsPipRecentsOverlayShown:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsRecentsShown:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsPipFocusedInRecent:Z

    if-nez v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipManager;->isPipShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mIsPipFocusedInRecent:Z

    .line 142
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/systemui/tv/pip/PipManager;->resizePinnedStack(I)V

    .line 144
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mOverlayView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipRecentsControlsViewFocusedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipControlsView:Lcom/android/systemui/tv/pip/PipRecentsControlsView;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->requestFocus()Z

    .line 146
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipControlsView:Lcom/android/systemui/tv/pip/PipRecentsControlsView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->sendAccessibilityEvent(I)V

    .line 147
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipControlsView:Lcom/android/systemui/tv/pip/PipRecentsControlsView;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->startFocusGainAnimation()V

    .line 135
    return-void

    :cond_0
    move v0, v1

    .line 136
    goto :goto_0

    .line 139
    :cond_1
    return-void
.end method

.method public setCallback(Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;

    .prologue
    const/4 v0, 0x0

    .line 175
    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mCallback:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;

    .line 176
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipControlsView:Lcom/android/systemui/tv/pip/PipRecentsControlsView;

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mCallback:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->mPipControlsViewListener:Lcom/android/systemui/tv/pip/PipRecentsControlsView$Listener;

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/tv/pip/PipRecentsControlsView;->setListener(Lcom/android/systemui/tv/pip/PipRecentsControlsView$Listener;)V

    .line 174
    return-void
.end method
