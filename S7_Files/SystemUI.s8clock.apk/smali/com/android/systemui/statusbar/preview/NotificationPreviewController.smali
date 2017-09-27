.class public Lcom/android/systemui/statusbar/preview/NotificationPreviewController;
.super Ljava/lang/Object;
.source "NotificationPreviewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/preview/NotificationPreviewController$1;,
        Lcom/android/systemui/statusbar/preview/NotificationPreviewController$2;,
        Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;
    }
.end annotation


# instance fields
.field private mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mChangePreview:Ljava/lang/Runnable;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mDragListener:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$PreviewIconCallback;

.field private mHandler:Landroid/os/Handler;

.field private mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

.field private mIsVisible:Z

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/preview/NotificationPreview;",
            ">;"
        }
    .end annotation
.end field

.field private mMoreText:Landroid/widget/TextView;

.field private mSwipeAnimator:Lcom/android/systemui/swipe/SwipeAnimator;

.field private mTimeOut:Ljava/lang/Runnable;

.field private mTopPadding:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mChangePreview:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mMoreText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mChangePreview:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;Landroid/view/View;)Lcom/android/systemui/statusbar/preview/NotificationPreview;
    .locals 1
    .param p1, "icon"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->findPreviewByIcon(Landroid/view/View;)Lcom/android/systemui/statusbar/preview/NotificationPreview;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->getIndexOfPreviewDisplayed()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V
    .locals 0
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "add"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->performAnim(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;Landroid/view/View;Z)V
    .locals 0
    .param p1, "icon"    # Landroid/view/View;
    .param p2, "upScale"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->performIconAnim(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;Lcom/android/systemui/statusbar/preview/NotificationPreview;)V
    .locals 0
    .param p1, "np"    # Lcom/android/systemui/statusbar/preview/NotificationPreview;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->reset(Lcom/android/systemui/statusbar/preview/NotificationPreview;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mList:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mHandler:Landroid/os/Handler;

    .line 58
    new-instance v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$1;-><init>(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mDragListener:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$PreviewIconCallback;

    .line 67
    new-instance v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$2;-><init>(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mTimeOut:Ljava/lang/Runnable;

    .line 82
    new-instance v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;-><init>(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mClickListener:Landroid/view/View$OnClickListener;

    .line 191
    iput-object p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mContext:Landroid/content/Context;

    .line 190
    return-void
.end method

.method private deleteFirstAddedPreview(Lcom/android/systemui/statusbar/preview/NotificationPreview;)V
    .locals 3
    .param p1, "np"    # Lcom/android/systemui/statusbar/preview/NotificationPreview;

    .prologue
    const/4 v2, 0x0

    .line 392
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->setIsClicked(Z)V

    .line 393
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->setIsFirstAdded(Z)V

    .line 395
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->getRow()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 396
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->getRow()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->performAnim(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V

    .line 391
    :cond_0
    return-void
.end method

.method private displayPreview(Lcom/android/systemui/statusbar/preview/NotificationPreview;)V
    .locals 8
    .param p1, "np"    # Lcom/android/systemui/statusbar/preview/NotificationPreview;

    .prologue
    const/4 v4, 0x1

    .line 290
    iget-object v3, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    .line 291
    return-void

    .line 294
    :cond_0
    move-object v2, p1

    .line 295
    .local v2, "newPreview":Lcom/android/systemui/statusbar/preview/NotificationPreview;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->getIndexOfPreviewDisplayed()I

    move-result v1

    .line 297
    .local v1, "indexOfPreview":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    .line 298
    new-instance v3, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$5;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$5;-><init>(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;Lcom/android/systemui/statusbar/preview/NotificationPreview;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mChangePreview:Ljava/lang/Runnable;

    .line 307
    iget-object v3, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/preview/NotificationPreview;

    .line 308
    .local v0, "displayedPreview":Lcom/android/systemui/statusbar/preview/NotificationPreview;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->isClicked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 309
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->reset(Lcom/android/systemui/statusbar/preview/NotificationPreview;)V

    .line 312
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mChangePreview:Ljava/lang/Runnable;

    const-wide/16 v6, 0xa6

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 318
    .end local v0    # "displayedPreview":Lcom/android/systemui/statusbar/preview/NotificationPreview;
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 319
    iget-object v3, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 321
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mTimeOut:Ljava/lang/Runnable;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 288
    return-void

    .line 314
    :cond_3
    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->setIsClicked(Z)V

    .line 315
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->getRow()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v3

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->performAnim(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V

    goto :goto_0
.end method

.method private findPreviewByIcon(Landroid/view/View;)Lcom/android/systemui/statusbar/preview/NotificationPreview;
    .locals 5
    .param p1, "icon"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 150
    iget-object v3, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 151
    iget-object v3, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 152
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 153
    iget-object v3, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/preview/NotificationPreview;

    .line 154
    .local v2, "np":Lcom/android/systemui/statusbar/preview/NotificationPreview;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->getPreviewIcon()Landroid/widget/ImageView;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 155
    return-object v2

    .line 152
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "np":Lcom/android/systemui/statusbar/preview/NotificationPreview;
    :cond_1
    return-object v4
.end method

.method private getIndexOfPreviewDisplayed()I
    .locals 3

    .prologue
    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 141
    iget-object v2, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/preview/NotificationPreview;

    .line 142
    .local v1, "np":Lcom/android/systemui/statusbar/preview/NotificationPreview;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->isClicked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    return v0

    .line 140
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    .end local v1    # "np":Lcom/android/systemui/statusbar/preview/NotificationPreview;
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private indexOfFirstAddedPreview()I
    .locals 3

    .prologue
    .line 380
    iget-object v2, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 381
    iget-object v2, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 382
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 383
    iget-object v2, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/preview/NotificationPreview;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->isFirstAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 384
    return v1

    .line 382
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 388
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private performAnim(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V
    .locals 2
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "add"    # Z

    .prologue
    .line 163
    if-eqz p2, :cond_0

    .line 164
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    .line 165
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->performAddAnim()V

    .line 176
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mSwipeAnimator:Lcom/android/systemui/swipe/SwipeAnimator;

    if-eqz v1, :cond_2

    .line 177
    iget-object v1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mChangePreview:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 178
    return-void

    .line 167
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$4;-><init>(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 173
    .local v0, "onFinishedRunnable":Ljava/lang/Runnable;
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->performRemoveAnim(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 180
    .end local v0    # "onFinishedRunnable":Ljava/lang/Runnable;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mSwipeAnimator:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-virtual {v1, p2}, Lcom/android/systemui/swipe/SwipeAnimator;->startPreviewFocusAnim(Z)V

    .line 162
    :cond_2
    return-void
.end method

.method private performIconAnim(Landroid/view/View;Z)V
    .locals 1
    .param p1, "icon"    # Landroid/view/View;
    .param p2, "upScale"    # Z

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->performIconScaleAnim(Landroid/view/View;Z)V

    .line 184
    :cond_0
    return-void
.end method

.method private reset(Lcom/android/systemui/statusbar/preview/NotificationPreview;)V
    .locals 3
    .param p1, "np"    # Lcom/android/systemui/statusbar/preview/NotificationPreview;

    .prologue
    const/4 v2, 0x0

    .line 363
    if-eqz p1, :cond_1

    .line 364
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->isFirstAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->deleteFirstAddedPreview(Lcom/android/systemui/statusbar/preview/NotificationPreview;)V

    .line 366
    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->updateNotificationPreviewList(Ljava/util/ArrayList;)V

    .line 367
    return-void

    .line 370
    :cond_0
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->setIsClicked(Z)V

    .line 371
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->getPreviewIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->performIconAnim(Landroid/view/View;Z)V

    .line 373
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->getRow()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 374
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->getRow()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->performAnim(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V

    .line 362
    :cond_1
    return-void
.end method


# virtual methods
.method public getTopPadding()I
    .locals 1

    .prologue
    .line 416
    iget v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mTopPadding:I

    return v0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->getIndexOfPreviewDisplayed()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->reset()V

    .line 426
    const/4 v0, 0x1

    return v0

    .line 428
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 6

    .prologue
    .line 336
    iget-object v4, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    if-eqz v4, :cond_4

    .line 337
    iget-object v4, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 338
    iget-object v4, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 341
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 342
    .local v0, "N":I
    const/4 v2, 0x0

    .line 343
    .local v2, "needToRefresh":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 344
    iget-object v4, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/preview/NotificationPreview;

    .line 345
    .local v3, "np":Lcom/android/systemui/statusbar/preview/NotificationPreview;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->isClicked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 346
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->isFirstAdded()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 347
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->deleteFirstAddedPreview(Lcom/android/systemui/statusbar/preview/NotificationPreview;)V

    .line 348
    const/4 v2, 0x1

    .line 343
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 351
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->reset(Lcom/android/systemui/statusbar/preview/NotificationPreview;)V

    goto :goto_1

    .line 355
    .end local v3    # "np":Lcom/android/systemui/statusbar/preview/NotificationPreview;
    :cond_3
    if-eqz v2, :cond_4

    .line 357
    iget-object v4, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->updateNotificationPreviewList(Ljava/util/ArrayList;)V

    .line 335
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "needToRefresh":Z
    :cond_4
    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 419
    return-void
.end method

.method public setIconContainer(Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;)V
    .locals 2
    .param p1, "npi"    # Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    .line 402
    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->setOnClickEvent(Landroid/view/View$OnClickListener;)V

    .line 403
    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mDragListener:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$PreviewIconCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->setCallback(Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$PreviewIconCallback;)V

    .line 400
    return-void
.end method

.method public setSwipeAnimator(Lcom/android/systemui/swipe/SwipeAnimator;)V
    .locals 0
    .param p1, "animator"    # Lcom/android/systemui/swipe/SwipeAnimator;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mSwipeAnimator:Lcom/android/systemui/swipe/SwipeAnimator;

    .line 431
    return-void
.end method

.method public setTopPadding(I)V
    .locals 3
    .param p1, "padding"    # I

    .prologue
    const/4 v2, 0x0

    .line 407
    iput p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mTopPadding:I

    .line 409
    iget-object v1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 410
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mTopPadding:I

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 411
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 412
    iget-object v1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    return-void
.end method

.method public updateIconContainerVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIsVisible:Z

    if-eq v0, p1, :cond_0

    .line 326
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIsVisible:Z

    .line 327
    iget-object v1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->setVisibility(I)V

    .line 329
    if-eqz p1, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->reset()V

    .line 324
    :cond_0
    return-void

    .line 327
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateNotificationPreviewList(Ljava/util/ArrayList;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/preview/NotificationPreview;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/preview/NotificationPreview;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mList:Ljava/util/ArrayList;

    .line 196
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 197
    .local v2, "N":I
    const/4 v13, 0x0

    .line 199
    .local v13, "toShowCount":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v12, "toShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v11, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v2, :cond_1

    .line 203
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/statusbar/preview/NotificationPreview;

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->isFirstAdded()Z

    move-result v16

    if-nez v16, :cond_0

    .line 204
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/statusbar/preview/NotificationPreview;

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->getPreviewIcon()Landroid/widget/ImageView;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 209
    const/4 v7, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getChildCount()I

    move-result v16

    move/from16 v0, v16

    if-ge v7, v0, :cond_3

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 211
    .local v14, "v":Landroid/view/View;
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    instance-of v0, v14, Landroid/widget/ImageView;

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 209
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 212
    :cond_2
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 216
    .end local v14    # "v":Landroid/view/View;
    :cond_3
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "v$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    .line 217
    .restart local v14    # "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->removeView(Landroid/view/View;)V

    goto :goto_3

    .line 220
    .end local v14    # "v":Landroid/view/View;
    :cond_4
    if-lez v13, :cond_e

    .line 221
    const/16 v16, 0x4

    move/from16 v0, v16

    if-gt v13, v0, :cond_8

    .line 222
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v13, :cond_6

    .line 223
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 224
    .local v8, "imgView":Landroid/widget/ImageView;
    invoke-virtual {v8}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    if-nez v16, :cond_5

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->addView(Landroid/view/View;)V

    .line 222
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 230
    .end local v8    # "imgView":Landroid/widget/ImageView;
    :cond_6
    const/4 v7, 0x0

    :goto_5
    if-ge v7, v13, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getChildCount()I

    move-result v16

    move/from16 v0, v16

    if-ge v7, v0, :cond_e

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 232
    .local v3, "actual":Landroid/view/View;
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 233
    .local v5, "expected":Landroid/view/View;
    if-ne v3, v5, :cond_7

    .line 230
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 236
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->removeView(Landroid/view/View;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v7}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->addView(Landroid/view/View;I)V

    goto :goto_6

    .line 240
    .end local v3    # "actual":Landroid/view/View;
    .end local v5    # "expected":Landroid/view/View;
    :cond_8
    const/4 v7, 0x0

    :goto_7
    if-ge v7, v13, :cond_a

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ge v7, v0, :cond_a

    .line 241
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 242
    .restart local v8    # "imgView":Landroid/widget/ImageView;
    invoke-virtual {v8}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    if-nez v16, :cond_9

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->addView(Landroid/view/View;)V

    .line 240
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 248
    .end local v8    # "imgView":Landroid/widget/ImageView;
    :cond_a
    const/4 v7, 0x0

    :goto_8
    const/16 v16, 0x3

    move/from16 v0, v16

    if-ge v7, v0, :cond_c

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 250
    .restart local v3    # "actual":Landroid/view/View;
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 251
    .restart local v5    # "expected":Landroid/view/View;
    if-ne v3, v5, :cond_b

    .line 248
    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 254
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->removeView(Landroid/view/View;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v7}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->addView(Landroid/view/View;I)V

    goto :goto_9

    .line 258
    .end local v3    # "actual":Landroid/view/View;
    .end local v5    # "expected":Landroid/view/View;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getChildCount()I

    move-result v16

    add-int/lit8 v7, v16, -0x1

    :goto_a
    const/16 v16, 0x3

    move/from16 v0, v16

    if-lt v7, v0, :cond_d

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->removeView(Landroid/view/View;)V

    .line 258
    add-int/lit8 v7, v7, -0x1

    goto :goto_a

    .line 262
    :cond_d
    add-int/lit8 v9, v13, -0x3

    .line 263
    .local v9, "moreCount":I
    new-instance v16, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mMoreText:Landroid/widget/TextView;

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mMoreText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const v17, 0x7f100234

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mMoreText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x11

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setGravity(I)V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mMoreText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "+"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mMoreText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->addView(Landroid/view/View;)V

    .line 271
    .end local v9    # "moreCount":I
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->indexOfFirstAddedPreview()I

    move-result v6

    .line 272
    .local v6, "firstAddedPreview":I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v6, v0, :cond_f

    .line 273
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/preview/NotificationPreview;

    .line 275
    .local v10, "preview":Lcom/android/systemui/statusbar/preview/NotificationPreview;
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->isClicked()Z

    move-result v16

    if-nez v16, :cond_f

    .line 276
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->displayPreview(Lcom/android/systemui/statusbar/preview/NotificationPreview;)V

    .line 280
    .end local v10    # "preview":Lcom/android/systemui/statusbar/preview/NotificationPreview;
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->getIndexOfPreviewDisplayed()I

    move-result v4

    .line 281
    .local v4, "displayedPreview":I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v4, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mChangePreview:Ljava/lang/Runnable;

    move-object/from16 v16, v0

    if-nez v16, :cond_10

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mSwipeAnimator:Lcom/android/systemui/swipe/SwipeAnimator;

    move-object/from16 v16, v0

    if-eqz v16, :cond_10

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mSwipeAnimator:Lcom/android/systemui/swipe/SwipeAnimator;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/android/systemui/swipe/SwipeAnimator;->startPreviewFocusAnim(Z)V

    .line 194
    :cond_10
    return-void
.end method
