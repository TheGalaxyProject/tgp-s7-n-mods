.class public Lcom/android/systemui/recents/desktop/RecentsWindow;
.super Landroid/app/Dialog;
.source "RecentsWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/recents/desktop/views/RecentsWindowView$RecentsWindowViewCallbacks;
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDownScrollButton:Landroid/view/View;

.field mEmptyView:Landroid/view/View;

.field mEmptyViewStub:Landroid/view/ViewStub;

.field private mRecentsCloseAllButton:Landroid/view/View;

.field mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

.field mStack:Lcom/android/systemui/recents/model/TaskStack;

.field private mUpScrollButton:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const v0, 0x7f1001da

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 80
    iput-object p1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f02044d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->requestWindowFeature(I)Z

    .line 78
    return-void
.end method

.method private getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .prologue
    const/4 v1, -0x1

    .line 150
    iget-object v2, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 151
    const v3, 0x7f0d0251

    .line 150
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 153
    .local v6, "WindowHeight":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 156
    const/16 v3, 0x82f

    .line 157
    const/16 v4, 0x100

    .line 158
    const/4 v5, -0x3

    move v2, v1

    .line 153
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 162
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 163
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 164
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 167
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 168
    const-string/jumbo v1, "RecentsWindow"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 169
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 170
    const v1, 0x7f1001db

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 171
    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 248
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 245
    return-void
.end method

.method public handleMoveButtonsEnabled(ZZ)V
    .locals 5
    .param p1, "enableUp"    # Z
    .param p2, "enableDown"    # Z

    .prologue
    .line 323
    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "handleArrowButtonsEnabled(%b, %b)\n"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mUpScrollButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mUpScrollButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 327
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mUpScrollButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mDownScrollButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eq p2, v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mDownScrollButton:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 331
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mDownScrollButton:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setClickable(Z)V

    .line 322
    :cond_1
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 189
    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-super {p0}, Landroid/app/Dialog;->hide()V

    .line 188
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 253
    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 255
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 256
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 252
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 240
    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 239
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;

    .prologue
    .line 276
    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "onBusEvent(LaunchTaskFailedEvent)"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->dismiss()V

    .line 275
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->dismiss()V

    .line 271
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->dismiss()V

    .line 267
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 290
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 289
    :goto_0
    :pswitch_0
    return-void

    .line 292
    :pswitch_1
    const-string/jumbo v2, "Recents_Window"

    const-string/jumbo v3, "OnClickRemoveAllButton"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v2, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v1

    .line 296
    .local v1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 298
    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableRecentsAppLock:Z

    if-eqz v2, :cond_1

    .line 299
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/model/Task;->isTaskLocked(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 300
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    invoke-direct {v4, v2}, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 296
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 304
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    invoke-direct {v4, v2}, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_2

    .line 307
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->dismiss()V

    goto :goto_0

    .line 311
    .end local v0    # "i":I
    .end local v1    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->scrollUpVisibleLine()V

    goto :goto_0

    .line 315
    :pswitch_3
    iget-object v2, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->scrollDownVisibleLine()V

    goto :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x7f130347
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 126
    const-string/jumbo v1, "Recents_Window"

    const-string/jumbo v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const v1, 0x7f04012d

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->setContentView(I)V

    .line 130
    const v1, 0x7f130345

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    iput-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    .line 131
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v1, p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->setCallback(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$RecentsWindowViewCallbacks;)V

    .line 132
    const v1, 0x7f130347

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsCloseAllButton:Landroid/view/View;

    .line 133
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsCloseAllButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const v1, 0x7f130349

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mUpScrollButton:Landroid/view/View;

    .line 136
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mUpScrollButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v1, 0x7f13034a

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mDownScrollButton:Landroid/view/View;

    .line 138
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mDownScrollButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    const v1, 0x7f130346

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mEmptyViewStub:Landroid/view/ViewStub;

    .line 141
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mEmptyView:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mEmptyViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mEmptyView:Landroid/view/View;

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 144
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 146
    invoke-virtual {p0, p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 124
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 261
    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "onDetachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 263
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 264
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 260
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x1

    .line 201
    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "onKeyDown(%s)\n"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sparse-switch p1, :sswitch_data_0

    .line 235
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 204
    :sswitch_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;

    sget-object v2, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->LEFT:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 205
    return v5

    .line 208
    :sswitch_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;

    sget-object v2, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->RIGHT:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 209
    return v5

    .line 212
    :sswitch_2
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;

    sget-object v2, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->UP:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 213
    return v5

    .line 216
    :sswitch_3
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;

    sget-object v2, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->DOWN:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 217
    return v5

    .line 220
    :sswitch_4
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->launchFocusedTask()V

    .line 221
    return v5

    .line 224
    :sswitch_5
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;

    sget-object v2, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->RIGHT:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 225
    return v5

    .line 229
    :sswitch_6
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/focus/DismissFocusedTaskViewEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/ui/focus/DismissFocusedTaskViewEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 230
    return v5

    .line 202
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_5
        0x42 -> :sswitch_4
        0x43 -> :sswitch_6
        0x70 -> :sswitch_6
    .end sparse-switch
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 354
    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "onShow"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 176
    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 178
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->updateRecentsTasks()V

    .line 175
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 195
    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 194
    return-void
.end method

.method public onTaskCountChanged(I)V
    .locals 3
    .param p1, "taskCount"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 337
    const/16 v0, 0x8

    if-le p1, v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mUpScrollButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mDownScrollButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 345
    :goto_0
    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsCloseAllButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 336
    :goto_1
    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mUpScrollButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mDownScrollButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsCloseAllButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public show()V
    .locals 2

    .prologue
    .line 183
    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "show"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 182
    return-void
.end method

.method public updateEmptyViewVisibility(I)V
    .locals 2
    .param p1, "taskCount"    # I

    .prologue
    const/4 v1, 0x0

    .line 281
    if-lez p1, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 280
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateRecentsTasks()V
    .locals 11

    .prologue
    const/16 v8, 0x8

    .line 87
    const-string/jumbo v9, "Recents_Window"

    const-string/jumbo v10, "updateRecentsTasks is getting called"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v3

    .line 90
    .local v3, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-static {}, Lcom/android/systemui/recents/RecentsImpl;->consumeInstanceLoadPlan()Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v4

    .line 91
    .local v4, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    if-nez v4, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v4

    .line 95
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 96
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    .line 97
    .local v1, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    invoke-virtual {v4}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v9

    if-nez v9, :cond_1

    .line 98
    iget-boolean v9, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-eqz v9, :cond_3

    const/4 v9, 0x0

    :goto_0
    const/4 v10, -0x1

    invoke-virtual {v3, v4, v10, v9}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 100
    :cond_1
    invoke-virtual {v4}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    .line 104
    iget-object v9, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v7

    .line 105
    .local v7, "topTask":Lcom/android/systemui/recents/model/Task;
    if-eqz v7, :cond_2

    .line 106
    invoke-virtual {v3, v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->deleteTaskThumbnail(Lcom/android/systemui/recents/model/Task;)V

    .line 109
    :cond_2
    new-instance v2, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v2}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 110
    .local v2, "loadOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    iget v9, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    iput v9, v2, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 111
    iget-object v9, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v6

    .line 112
    .local v6, "taskTotalCount":I
    if-lt v6, v8, :cond_4

    .line 113
    .local v8, "visibleCount":I
    :goto_1
    iput v8, v2, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 114
    iput v8, v2, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 115
    iget-object v9, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9, v4, v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 116
    iget-object v9, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    iget-object v10, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v9, v10}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->reload(Lcom/android/systemui/recents/model/TaskStack;)V

    .line 118
    iget-object v9, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v5

    .line 119
    .local v5, "taskCount":I
    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/desktop/RecentsWindow;->onTaskCountChanged(I)V

    .line 120
    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/desktop/RecentsWindow;->updateEmptyViewVisibility(I)V

    .line 86
    return-void

    .line 98
    .end local v2    # "loadOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    .end local v5    # "taskCount":I
    .end local v6    # "taskTotalCount":I
    .end local v7    # "topTask":Lcom/android/systemui/recents/model/Task;
    .end local v8    # "visibleCount":I
    :cond_3
    const/4 v9, 0x1

    goto :goto_0

    .restart local v2    # "loadOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    .restart local v6    # "taskTotalCount":I
    .restart local v7    # "topTask":Lcom/android/systemui/recents/model/Task;
    :cond_4
    move v8, v6

    .line 112
    goto :goto_1
.end method
