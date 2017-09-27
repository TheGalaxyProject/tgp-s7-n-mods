.class public Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;
.super Landroid/widget/LinearLayout;
.source "GlobalActionsFrameLayoutSViewCover.java"


# instance fields
.field bg:Landroid/widget/LinearLayout;

.field childcnt:I

.field childindex:[I

.field mHandler:Landroid/os/Handler;

.field sv:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->childcnt:I

    .line 45
    iput-object v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->childindex:[I

    .line 46
    iput-object v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->bg:Landroid/widget/LinearLayout;

    .line 47
    iput-object v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->sv:Landroid/widget/ScrollView;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "childcount"    # I

    .prologue
    const/4 v3, 0x0

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->childcnt:I

    .line 45
    iput-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->childindex:[I

    .line 46
    iput-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->bg:Landroid/widget/LinearLayout;

    .line 47
    iput-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->sv:Landroid/widget/ScrollView;

    .line 56
    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 57
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x1090067

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 58
    .local v1, "view":Landroid/view/View;
    iput p2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->childcnt:I

    .line 59
    iget v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->childcnt:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->childindex:[I

    .line 60
    const v2, 0x10203c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->sv:Landroid/widget/ScrollView;

    .line 61
    const v2, 0x10203c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->bg:Landroid/widget/LinearLayout;

    .line 62
    invoke-virtual {p0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->addView(Landroid/view/View;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Handler;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "childcount"    # I
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v3, 0x0

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->childcnt:I

    .line 45
    iput-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->childindex:[I

    .line 46
    iput-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->bg:Landroid/widget/LinearLayout;

    .line 47
    iput-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->sv:Landroid/widget/ScrollView;

    .line 67
    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 68
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x1090067

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 69
    .local v1, "view":Landroid/view/View;
    iput p2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->childcnt:I

    .line 70
    iget v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->childcnt:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->childindex:[I

    .line 71
    const v2, 0x10203c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->sv:Landroid/widget/ScrollView;

    .line 72
    const v2, 0x10203c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->bg:Landroid/widget/LinearLayout;

    .line 73
    iput-object p3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->mHandler:Landroid/os/Handler;

    .line 74
    invoke-virtual {p0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->addView(Landroid/view/View;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->childcnt:I

    .line 45
    iput-object v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->childindex:[I

    .line 46
    iput-object v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->bg:Landroid/widget/LinearLayout;

    .line 47
    iput-object v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->sv:Landroid/widget/ScrollView;

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->childcnt:I

    .line 45
    iput-object v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->childindex:[I

    .line 46
    iput-object v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->bg:Landroid/widget/LinearLayout;

    .line 47
    iput-object v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->sv:Landroid/widget/ScrollView;

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->childcnt:I

    .line 45
    iput-object v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->childindex:[I

    .line 46
    iput-object v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->bg:Landroid/widget/LinearLayout;

    .line 47
    iput-object v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->sv:Landroid/widget/ScrollView;

    .line 85
    return-void
.end method


# virtual methods
.method public getChildIndex()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->childcnt:I

    return v0
.end method

.method public hideAllView(Landroid/view/View;)V
    .locals 9
    .param p1, "selectedView"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 90
    const/4 v3, 0x0

    .line 91
    .local v3, "view":Landroid/view/View;
    const/4 v0, 0x0

    .end local v3    # "view":Landroid/view/View;
    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->bg:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 92
    iget-object v4, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->bg:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 93
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p1, v3}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    move-object v2, v3

    .line 95
    .local v2, "tempView":Landroid/view/View;
    const v4, 0x10203d9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 96
    .local v1, "imageFrameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 97
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 98
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 99
    const/4 v5, 0x0

    .line 98
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 100
    const-wide/16 v6, 0xc8

    .line 98
    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 101
    new-instance v5, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover$1;

    invoke-direct {v5, p0, v3}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover$1;-><init>(Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;Landroid/view/View;)V

    .line 98
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 89
    .end local v1    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .end local v2    # "tempView":Landroid/view/View;
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public showAllView(Landroid/view/View;)V
    .locals 6
    .param p1, "selectedView"    # Landroid/view/View;

    .prologue
    .line 113
    const/4 v2, 0x0

    .line 114
    .local v2, "view":Landroid/view/View;
    const/4 v0, 0x0

    .end local v2    # "view":Landroid/view/View;
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->bg:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 115
    iget-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->bg:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 116
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p1, v2}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_0
    move-object v1, v2

    .line 118
    .local v1, "tempView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 119
    const/high16 v4, 0x3f800000    # 1.0f

    .line 118
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 120
    const-wide/16 v4, 0xc8

    .line 118
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 121
    new-instance v4, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover$2;

    invoke-direct {v4, p0, v2}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover$2;-><init>(Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;Landroid/view/View;)V

    .line 118
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 112
    .end local v1    # "tempView":Landroid/view/View;
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method
