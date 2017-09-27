.class public Lcom/android/systemui/recents/views/RecentsAppListView;
.super Landroid/support/v7/widget/RecyclerView;
.source "RecentsAppListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/RecentsAppListView$1;,
        Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;
    }
.end annotation


# instance fields
.field mAdapter:Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

.field mAppContext:Landroid/content/Context;

.field mAutoHideRunnable:Ljava/lang/Runnable;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field mGoToTopBottomMargin:I

.field mGoToTopButton:Landroid/widget/Button;

.field mGoToTopScrollRequested:Z

.field mHandler:Landroid/os/Handler;

.field private mKioskId:I

.field mLayoutManager:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;

.field mScroller:Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;

.field private mSystemInsets:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/views/RecentsAppListView;)Landroid/widget/EdgeEffect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mKioskId:I

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mSystemInsets:Landroid/graphics/Rect;

    .line 49
    new-instance v0, Lcom/android/systemui/recents/views/RecentsAppListView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/RecentsAppListView$1;-><init>(Lcom/android/systemui/recents/views/RecentsAppListView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mAutoHideRunnable:Ljava/lang/Runnable;

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsAppListView;->init()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mKioskId:I

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mSystemInsets:Landroid/graphics/Rect;

    .line 49
    new-instance v0, Lcom/android/systemui/recents/views/RecentsAppListView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/RecentsAppListView$1;-><init>(Lcom/android/systemui/recents/views/RecentsAppListView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mAutoHideRunnable:Ljava/lang/Runnable;

    .line 63
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsAppListView;->init()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mKioskId:I

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mSystemInsets:Landroid/graphics/Rect;

    .line 49
    new-instance v0, Lcom/android/systemui/recents/views/RecentsAppListView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/RecentsAppListView$1;-><init>(Lcom/android/systemui/recents/views/RecentsAppListView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mAutoHideRunnable:Ljava/lang/Runnable;

    .line 58
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsAppListView;->init()V

    .line 56
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsAppListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mAppContext:Landroid/content/Context;

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mHandler:Landroid/os/Handler;

    .line 81
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsAppListView;->initRecyclerView()V

    .line 82
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getStableInsets(Landroid/graphics/Rect;)V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 85
    const v1, 0x7f0d03a8

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopBottomMargin:I

    .line 88
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getKioskId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mKioskId:I

    .line 78
    return-void
.end method

.method private initRecyclerView()V
    .locals 2

    .prologue
    .line 93
    new-instance v0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/RecentsAppListView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mLayoutManager:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;

    .line 94
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mLayoutManager:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsAppListView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 96
    new-instance v0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/RecentsAppListView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mAdapter:Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

    .line 97
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mAdapter:Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsAppListView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mLayoutManager:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mAdapter:Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->bindAdapter(Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;)V

    .line 101
    new-instance v0, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;-><init>(Lcom/android/systemui/recents/views/RecentsAppListView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mScroller:Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;

    .line 102
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mScroller:Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsAppListView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 104
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsAppListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 92
    return-void
.end method

.method private updateGoToTopButtonLayout()V
    .locals 4

    .prologue
    .line 169
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 171
    .local v1, "orientation":I
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 172
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 173
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mSystemInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 174
    iget v2, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopBottomMargin:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 179
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    .end local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1    # "orientation":I
    :cond_0
    return-void

    .line 176
    .restart local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v1    # "orientation":I
    :cond_1
    const/4 v2, 0x0

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 177
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mSystemInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopBottomMargin:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0
.end method


# virtual methods
.method public bindViews(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 108
    const v0, 0x7f130323

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopButton:Landroid/widget/Button;

    .line 109
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/recents/views/RecentsAppListView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/RecentsAppListView$2;-><init>(Lcom/android/systemui/recents/views/RecentsAppListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 285
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 298
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 287
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mAutoHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 289
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mScroller:Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;

    iget v1, v1, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;->mCurrentScrollY:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsAppListView;->handleGoToTopButton(Z)V

    goto :goto_0

    .line 294
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mAutoHideRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 273
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    .line 274
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsAppListView;->postInvalidateOnAnimation()V

    .line 272
    return-void

    .line 275
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 276
    .local v0, "restore":I
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsAppListView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsAppListView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 277
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 278
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method public fling(II)Z
    .locals 2
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    .line 190
    div-int/lit8 v0, p1, 0x2

    div-int/lit8 v1, p2, 0x2

    invoke-super {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView;->fling(II)Z

    move-result v0

    return v0
.end method

.method public handleButtonsContainer(Z)V
    .locals 2
    .param p1, "isTop"    # Z

    .prologue
    .line 184
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;

    invoke-direct {v1, p1}, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 183
    return-void
.end method

.method public handleGoToTopButton(Z)V
    .locals 3
    .param p1, "isTop"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 157
    if-eqz p1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 160
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 156
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 164
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsAppListView;->updateGoToTopButtonLayout()V

    .line 75
    return-object p1
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;

    .prologue
    .line 248
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDeviceOrientationChange:Z

    if-eqz v0, :cond_0

    .line 249
    invoke-static {}, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->getAttr()Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->reinitialize(Landroid/content/Context;)V

    .line 250
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsAppListView;->reload()V

    .line 247
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v3, 0x0

    .line 256
    invoke-static {}, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->getAttr()Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->onSizeChanged(II)V

    .line 257
    invoke-static {}, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->getAttr()Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;

    move-result-object v2

    iget v1, v2, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mOffsetEdge:I

    .line 258
    .local v1, "padding":I
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 259
    .local v0, "orientation":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 260
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mSystemInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v1, v3, v2, v3}, Lcom/android/systemui/recents/views/RecentsAppListView;->setPadding(IIII)V

    .line 264
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsAppListView;->updateGoToTopButtonLayout()V

    .line 265
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mAdapter:Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->notifyDataSetChanged()V

    .line 267
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1, p2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 268
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView;->onSizeChanged(IIII)V

    .line 255
    return-void

    .line 262
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mSystemInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v3, v1, v2}, Lcom/android/systemui/recents/views/RecentsAppListView;->setPadding(IIII)V

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 244
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 243
    return-void
.end method

.method public reload()V
    .locals 3

    .prologue
    .line 121
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getKioskId()I

    move-result v0

    .line 122
    .local v0, "mKnoxId":I
    iget v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mKioskId:I

    if-eq v1, v0, :cond_0

    .line 123
    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mKioskId:I

    .line 124
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsAppListLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->preload()V

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsAppListView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mAdapter:Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/RecentsAppListView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mLayoutManager:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->reload()V

    .line 134
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mAdapter:Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->reload()V

    .line 135
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsAppListView;->resetScroll()V

    .line 138
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setAlpha(F)V

    .line 139
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/RecentsAppListView;->handleGoToTopButton(Z)V

    .line 119
    return-void
.end method

.method public resetScroll()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mScroller:Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;->resetScroll()V

    .line 193
    return-void
.end method

.method public unload(Z)V
    .locals 2
    .param p1, "removeCompletely"    # Z

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/RecentsAppListView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 147
    if-eqz p1, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iput-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopButton:Landroid/widget/Button;

    .line 152
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mAdapter:Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 142
    :cond_1
    return-void
.end method
