.class public Lcom/android/systemui/tv/pip/PipControlsView;
.super Landroid/widget/LinearLayout;
.source "PipControlsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tv/pip/PipControlsView$1;,
        Lcom/android/systemui/tv/pip/PipControlsView$2;,
        Lcom/android/systemui/tv/pip/PipControlsView$3;,
        Lcom/android/systemui/tv/pip/PipControlsView$Listener;
    }
.end annotation


# instance fields
.field private mCloseButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

.field private final mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mFullButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

.field private mHasFocus:Z

.field mListener:Lcom/android/systemui/tv/pip/PipControlsView$Listener;

.field private mMediaController:Landroid/media/session/MediaController;

.field private mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

.field private mOnChildFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field final mPipManager:Lcom/android/systemui/tv/pip/PipManager;

.field private final mPipMediaListener:Lcom/android/systemui/tv/pip/PipManager$MediaListener;

.field private mPlayPauseButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/tv/pip/PipControlsView;)Landroid/media/session/MediaController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mMediaController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/tv/pip/PipControlsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/tv/pip/PipControlsView;->onChildViewFocusChanged()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/tv/pip/PipControlsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/tv/pip/PipControlsView;->updateMediaController()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/tv/pip/PipControlsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/tv/pip/PipControlsView;->updatePlayPauseView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/systemui/tv/pip/PipControlsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/systemui/tv/pip/PipControlsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/tv/pip/PipControlsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 57
    invoke-static {}, Lcom/android/systemui/tv/pip/PipManager;->getInstance()Lcom/android/systemui/tv/pip/PipManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    .line 67
    new-instance v1, Lcom/android/systemui/tv/pip/PipControlsView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/tv/pip/PipControlsView$1;-><init>(Lcom/android/systemui/tv/pip/PipControlsView;)V

    iput-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

    .line 74
    new-instance v1, Lcom/android/systemui/tv/pip/PipControlsView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/tv/pip/PipControlsView$2;-><init>(Lcom/android/systemui/tv/pip/PipControlsView;)V

    iput-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mPipMediaListener:Lcom/android/systemui/tv/pip/PipManager$MediaListener;

    .line 81
    new-instance v1, Lcom/android/systemui/tv/pip/PipControlsView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/tv/pip/PipControlsView$3;-><init>(Lcom/android/systemui/tv/pip/PipControlsView;)V

    iput-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/tv/pip/PipControlsView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 103
    const-string/jumbo v2, "layout_inflater"

    .line 102
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 104
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f04016c

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 106
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/tv/pip/PipControlsView;->setOrientation(I)V

    .line 107
    const/16 v1, 0x31

    invoke-virtual {p0, v1}, Lcom/android/systemui/tv/pip/PipControlsView;->setGravity(I)V

    .line 100
    return-void
.end method

.method private onChildViewFocusChanged()V
    .locals 4

    .prologue
    .line 211
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mFullButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mFullButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

    invoke-virtual {v1}, Lcom/android/systemui/tv/pip/PipControlButtonView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_3

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

    invoke-virtual {v1}, Lcom/android/systemui/tv/pip/PipControlButtonView;->isFocused()Z

    move-result v1

    .line 211
    if-nez v1, :cond_3

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mCloseButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mCloseButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

    invoke-virtual {v1}, Lcom/android/systemui/tv/pip/PipControlButtonView;->isFocused()Z

    move-result v0

    .line 214
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mHasFocus:Z

    if-eq v1, v0, :cond_2

    .line 215
    iput-boolean v0, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mHasFocus:Z

    .line 216
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mOnChildFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    if-eqz v1, :cond_2

    .line 217
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mOnChildFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p0}, Lcom/android/systemui/tv/pip/PipControlsView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mHasFocus:Z

    invoke-interface {v1, v2, v3}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 209
    :cond_2
    return-void

    .line 211
    :cond_3
    const/4 v0, 0x1

    .local v0, "hasFocus":Z
    goto :goto_0

    .line 213
    .end local v0    # "hasFocus":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "hasFocus":Z
    goto :goto_0
.end method

.method private updateMediaController()V
    .locals 3

    .prologue
    .line 172
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v1}, Lcom/android/systemui/tv/pip/PipManager;->getMediaController()Landroid/media/session/MediaController;

    move-result-object v0

    .line 173
    .local v0, "newController":Landroid/media/session/MediaController;
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mMediaController:Landroid/media/session/MediaController;

    if-ne v1, v0, :cond_0

    .line 174
    return-void

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mMediaController:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 179
    :cond_1
    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mMediaController:Landroid/media/session/MediaController;

    .line 180
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_2

    .line 181
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mMediaController:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 183
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/tv/pip/PipControlsView;->updatePlayPauseView()V

    .line 171
    return-void
.end method

.method private updatePlayPauseView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 187
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v1}, Lcom/android/systemui/tv/pip/PipManager;->getPlaybackState()I

    move-result v0

    .line 188
    .local v0, "state":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/systemui/tv/pip/PipControlButtonView;->setVisibility(I)V

    .line 186
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/tv/pip/PipControlButtonView;->setVisibility(I)V

    .line 192
    if-nez v0, :cond_1

    .line 193
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

    const v2, 0x7f02019d

    invoke-virtual {v1, v2}, Lcom/android/systemui/tv/pip/PipControlButtonView;->setImageResource(I)V

    .line 194
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

    const v2, 0x7f0f06c0

    invoke-virtual {v1, v2}, Lcom/android/systemui/tv/pip/PipControlButtonView;->setText(I)V

    goto :goto_0

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

    const v2, 0x7f0201a1

    invoke-virtual {v1, v2}, Lcom/android/systemui/tv/pip/PipControlButtonView;->setImageResource(I)V

    .line 197
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

    const v2, 0x7f0f06bf

    invoke-virtual {v1, v2}, Lcom/android/systemui/tv/pip/PipControlButtonView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 157
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 158
    invoke-direct {p0}, Lcom/android/systemui/tv/pip/PipControlsView;->updateMediaController()V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mPipMediaListener:Lcom/android/systemui/tv/pip/PipManager$MediaListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipManager;->addMediaListener(Lcom/android/systemui/tv/pip/PipManager$MediaListener;)V

    .line 156
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 164
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mPipMediaListener:Lcom/android/systemui/tv/pip/PipManager$MediaListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipManager;->removeMediaListener(Lcom/android/systemui/tv/pip/PipManager$MediaListener;)V

    .line 166
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mMediaController:Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 163
    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 114
    const v0, 0x7f1303fd

    invoke-virtual {p0, v0}, Lcom/android/systemui/tv/pip/PipControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tv/pip/PipControlButtonView;

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mFullButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

    .line 115
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mFullButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipControlButtonView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 116
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mFullButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

    new-instance v1, Lcom/android/systemui/tv/pip/PipControlsView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/tv/pip/PipControlsView$4;-><init>(Lcom/android/systemui/tv/pip/PipControlsView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipControlButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v0, 0x7f1303fe

    invoke-virtual {p0, v0}, Lcom/android/systemui/tv/pip/PipControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tv/pip/PipControlButtonView;

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mCloseButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

    .line 124
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mCloseButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipControlButtonView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 125
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mCloseButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

    new-instance v1, Lcom/android/systemui/tv/pip/PipControlsView$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/tv/pip/PipControlsView$5;-><init>(Lcom/android/systemui/tv/pip/PipControlsView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipControlButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const v0, 0x7f1303ff

    invoke-virtual {p0, v0}, Lcom/android/systemui/tv/pip/PipControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tv/pip/PipControlButtonView;

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

    .line 136
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipControlButtonView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 137
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/tv/pip/PipControlButtonView;

    new-instance v1, Lcom/android/systemui/tv/pip/PipControlsView$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/tv/pip/PipControlsView$6;-><init>(Lcom/android/systemui/tv/pip/PipControlsView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipControlButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-void
.end method

.method public setListener(Lcom/android/systemui/tv/pip/PipControlsView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/tv/pip/PipControlsView$Listener;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipControlsView;->mListener:Lcom/android/systemui/tv/pip/PipControlsView$Listener;

    .line 225
    return-void
.end method
