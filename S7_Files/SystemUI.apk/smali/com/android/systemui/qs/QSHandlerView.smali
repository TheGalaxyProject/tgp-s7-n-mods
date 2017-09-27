.class public Lcom/android/systemui/qs/QSHandlerView;
.super Lcom/android/systemui/qs/QSBarItem;
.source "QSHandlerView.java"


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field private mBottomCueImage:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mCueAnimator:Landroid/animation/ValueAnimator;

.field private mCueLayout:Landroid/widget/FrameLayout;

.field private mHandlerView:Landroid/widget/ImageView;

.field private mHasBeenExpanded:Z

.field private mStatusBarState:I

.field private mTopCueImage:Landroid/widget/ImageView;

.field private pref:Landroid/content/SharedPreferences;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSHandlerView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSHandlerView;->mBottomCueImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSHandlerView;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSHandlerView;->mCueLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/QSHandlerView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSHandlerView;->mHandlerView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/QSHandlerView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSHandlerView;->mTopCueImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/QSHandlerView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSHandlerView;->mCueAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "barType"    # I

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSBarItem;-><init>(Landroid/content/Context;I)V

    .line 55
    iput-object p1, p0, Lcom/android/systemui/qs/QSHandlerView;->mContext:Landroid/content/Context;

    .line 56
    iget-object v0, p0, Lcom/android/systemui/qs/QSHandlerView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 57
    const v1, 0x7f040101

    const/4 v2, 0x1

    .line 56
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 58
    const v0, 0x7f1302e3

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSHandlerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSHandlerView;->mHandlerView:Landroid/widget/ImageView;

    .line 59
    const v0, 0x7f1302e4

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSHandlerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/QSHandlerView;->mCueLayout:Landroid/widget/FrameLayout;

    .line 60
    const v0, 0x7f1302e5

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSHandlerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSHandlerView;->mTopCueImage:Landroid/widget/ImageView;

    .line 61
    const v0, 0x7f1302e6

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSHandlerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSHandlerView;->mBottomCueImage:Landroid/widget/ImageView;

    .line 63
    iget-object v0, p0, Lcom/android/systemui/qs/QSHandlerView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "pref"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSHandlerView;->pref:Landroid/content/SharedPreferences;

    .line 64
    iget-object v0, p0, Lcom/android/systemui/qs/QSHandlerView;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSHandlerView;->editor:Landroid/content/SharedPreferences$Editor;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/qs/QSHandlerView;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "expanded"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSHandlerView;->mHasBeenExpanded:Z

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSHandlerView;->setHandlerViewImageVisibility()V

    .line 53
    return-void
.end method

.method private cancelCueAnimation()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/qs/QSHandlerView;->mCueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/systemui/qs/QSHandlerView;->mCueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 103
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSHandlerView;->mHasBeenExpanded:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSHandlerView;->setHandlerViewImageVisibility()V

    .line 99
    :cond_1
    return-void
.end method


# virtual methods
.method public getAnimator()Lcom/android/systemui/qs/TouchAnimator;
    .locals 1

    .prologue
    .line 161
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    return-object v0
.end method

.method public getBarHeight()I
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/systemui/qs/QSHandlerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d037b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getBarVisibility()Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public onExpandingFinished(F)V
    .locals 1
    .param p1, "expandedHeight"    # F

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSHandlerView;->mHasBeenExpanded:Z

    if-nez v0, :cond_0

    .line 178
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSHandlerView;->startCueAnimation()V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/QSHandlerView;->cancelCueAnimation()V

    goto :goto_0
.end method

.method protected setAlphaToImages(F)V
    .locals 7
    .param p1, "t"    # F

    .prologue
    const/high16 v6, 0x447d0000    # 1012.0f

    const v5, 0x4404c000    # 531.0f

    const/high16 v4, 0x42480000    # 50.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, 0x43050000    # 133.0f

    .line 107
    cmpl-float v0, p1, v4

    if-ltz v0, :cond_0

    const/high16 v0, 0x43370000    # 183.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/systemui/qs/QSHandlerView;->mTopCueImage:Landroid/widget/ImageView;

    sub-float v1, p1, v4

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 109
    iget-object v0, p0, Lcom/android/systemui/qs/QSHandlerView;->mBottomCueImage:Landroid/widget/ImageView;

    sub-float v1, p1, v4

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 111
    :cond_0
    const/high16 v0, 0x43580000    # 216.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    const v0, 0x43ae8000    # 349.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/android/systemui/qs/QSHandlerView;->mTopCueImage:Landroid/widget/ImageView;

    const/high16 v1, 0x43580000    # 216.0f

    sub-float v1, p1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 114
    :cond_1
    const v0, 0x43958000    # 299.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2

    const/high16 v0, 0x43d80000    # 432.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/android/systemui/qs/QSHandlerView;->mBottomCueImage:Landroid/widget/ImageView;

    const v1, 0x43958000    # 299.0f

    sub-float v1, p1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 117
    :cond_2
    cmpl-float v0, p1, v5

    if-ltz v0, :cond_3

    const/high16 v0, 0x44260000    # 664.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_3

    .line 118
    iget-object v0, p0, Lcom/android/systemui/qs/QSHandlerView;->mTopCueImage:Landroid/widget/ImageView;

    sub-float v1, p1, v5

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/qs/QSHandlerView;->mBottomCueImage:Landroid/widget/ImageView;

    sub-float v1, p1, v5

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 121
    :cond_3
    const v0, 0x442e4000    # 697.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_4

    const v0, 0x444f8000    # 830.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_4

    .line 122
    iget-object v0, p0, Lcom/android/systemui/qs/QSHandlerView;->mTopCueImage:Landroid/widget/ImageView;

    const v1, 0x442e4000    # 697.0f

    sub-float v1, p1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 124
    :cond_4
    const/high16 v0, 0x44430000    # 780.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_5

    const v0, 0x44644000    # 913.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_5

    .line 125
    iget-object v0, p0, Lcom/android/systemui/qs/QSHandlerView;->mBottomCueImage:Landroid/widget/ImageView;

    const v1, 0x443ac000    # 747.0f

    sub-float v1, p1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 127
    :cond_5
    cmpl-float v0, p1, v6

    if-ltz v0, :cond_6

    const v0, 0x448f2000    # 1145.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_6

    .line 128
    iget-object v0, p0, Lcom/android/systemui/qs/QSHandlerView;->mTopCueImage:Landroid/widget/ImageView;

    sub-float v1, p1, v6

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 129
    iget-object v0, p0, Lcom/android/systemui/qs/QSHandlerView;->mBottomCueImage:Landroid/widget/ImageView;

    sub-float v1, p1, v6

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 131
    :cond_6
    const v0, 0x448f2000    # 1145.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_7

    const v0, 0x44ac4000    # 1378.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_7

    .line 132
    iget-object v0, p0, Lcom/android/systemui/qs/QSHandlerView;->mCueLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/android/systemui/qs/QSHandlerView;->mHandlerView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/android/systemui/qs/QSHandlerView;->mHandlerView:Landroid/widget/ImageView;

    const v1, 0x448f2000    # 1145.0f

    sub-float v1, p1, v1

    const/high16 v2, 0x43690000    # 233.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 106
    :cond_7
    return-void
.end method

.method public setBarState(I)V
    .locals 1
    .param p1, "statusBarState"    # I

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSHandlerView;->mHasBeenExpanded:Z

    if-nez v0, :cond_0

    .line 189
    iput p1, p0, Lcom/android/systemui/qs/QSHandlerView;->mStatusBarState:I

    .line 190
    invoke-direct {p0}, Lcom/android/systemui/qs/QSHandlerView;->cancelCueAnimation()V

    .line 187
    :cond_0
    return-void
.end method

.method public setHandlerViewImageVisibility()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 140
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSHandlerView;->mHasBeenExpanded:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/QSHandlerView;->mStatusBarState:I

    if-eqz v0, :cond_1

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSHandlerView;->mHandlerView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/android/systemui/qs/QSHandlerView;->mCueLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 139
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSHandlerView;->mHandlerView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/android/systemui/qs/QSHandlerView;->mCueLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPosition(F)V
    .locals 3
    .param p1, "fraction"    # F

    .prologue
    const/4 v2, 0x1

    .line 166
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSHandlerView;->mHasBeenExpanded:Z

    if-eqz v0, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget v0, p0, Lcom/android/systemui/qs/QSHandlerView;->mStatusBarState:I

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/systemui/qs/QSHandlerView;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "expanded"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 168
    iget-object v0, p0, Lcom/android/systemui/qs/QSHandlerView;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 169
    iput-boolean v2, p0, Lcom/android/systemui/qs/QSHandlerView;->mHasBeenExpanded:Z

    .line 170
    invoke-direct {p0}, Lcom/android/systemui/qs/QSHandlerView;->cancelCueAnimation()V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/qs/QSHandlerView;->mCueLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSHandlerView;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public startCueAnimation()V
    .locals 4

    .prologue
    .line 71
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 72
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 73
    new-instance v1, Lcom/android/systemui/qs/QSHandlerView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSHandlerView$1;-><init>(Lcom/android/systemui/qs/QSHandlerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 79
    new-instance v1, Lcom/android/systemui/qs/QSHandlerView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSHandlerView$2;-><init>(Lcom/android/systemui/qs/QSHandlerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 95
    iput-object v0, p0, Lcom/android/systemui/qs/QSHandlerView;->mCueAnimator:Landroid/animation/ValueAnimator;

    .line 96
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 70
    return-void

    .line 71
    nop

    :array_0
    .array-data 4
        0x0
        0x44ac4000    # 1378.0f
    .end array-data
.end method
