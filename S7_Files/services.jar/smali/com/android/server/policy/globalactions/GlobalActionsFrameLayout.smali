.class public Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;
.super Landroid/widget/LinearLayout;
.source "GlobalActionsFrameLayout.java"


# static fields
.field private static final MESSAGE_SHOW_CONFIRM_LANDSCAPE:I = 0x7

.field private static final MESSAGE_SHOW_CONFIRM_PORTRAIT:I = 0x6

.field private static final TAG_BG:Ljava/lang/String; = "globalactions_bg"


# instance fields
.field bg:Landroid/widget/LinearLayout;

.field bg_land:Landroid/widget/LinearLayout;

.field childcnt:I

.field childindex:[I

.field hsv:Landroid/widget/HorizontalScrollView;

.field mConfirmLandscape:Z

.field mConfirmPortrait:Z

.field mHandler:Landroid/os/Handler;

.field sv:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    iput v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->childcnt:I

    .line 46
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->childindex:[I

    .line 47
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg:Landroid/widget/LinearLayout;

    .line 48
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg_land:Landroid/widget/LinearLayout;

    .line 49
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->sv:Landroid/widget/ScrollView;

    .line 50
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->hsv:Landroid/widget/HorizontalScrollView;

    .line 52
    iput-boolean v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mConfirmPortrait:Z

    .line 53
    iput-boolean v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mConfirmLandscape:Z

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "childcount"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 65
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    iput v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->childcnt:I

    .line 46
    iput-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->childindex:[I

    .line 47
    iput-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg:Landroid/widget/LinearLayout;

    .line 48
    iput-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg_land:Landroid/widget/LinearLayout;

    .line 49
    iput-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->sv:Landroid/widget/ScrollView;

    .line 50
    iput-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->hsv:Landroid/widget/HorizontalScrollView;

    .line 52
    iput-boolean v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mConfirmPortrait:Z

    .line 53
    iput-boolean v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mConfirmLandscape:Z

    .line 66
    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 67
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x1090066

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 68
    .local v1, "view":Landroid/view/View;
    iput p2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->childcnt:I

    .line 69
    iget v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->childcnt:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->childindex:[I

    .line 70
    const v2, 0x10203c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->sv:Landroid/widget/ScrollView;

    .line 71
    const v2, 0x10203c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/HorizontalScrollView;

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->hsv:Landroid/widget/HorizontalScrollView;

    .line 72
    const v2, 0x10203c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg:Landroid/widget/LinearLayout;

    .line 73
    const v2, 0x10203ca

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg_land:Landroid/widget/LinearLayout;

    .line 74
    invoke-virtual {p0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->addView(Landroid/view/View;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Handler;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "childcount"    # I
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 78
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    iput v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->childcnt:I

    .line 46
    iput-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->childindex:[I

    .line 47
    iput-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg:Landroid/widget/LinearLayout;

    .line 48
    iput-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg_land:Landroid/widget/LinearLayout;

    .line 49
    iput-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->sv:Landroid/widget/ScrollView;

    .line 50
    iput-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->hsv:Landroid/widget/HorizontalScrollView;

    .line 52
    iput-boolean v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mConfirmPortrait:Z

    .line 53
    iput-boolean v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mConfirmLandscape:Z

    .line 79
    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 80
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x1090066

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 81
    .local v1, "view":Landroid/view/View;
    iput p2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->childcnt:I

    .line 82
    iget v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->childcnt:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->childindex:[I

    .line 83
    const v2, 0x10203c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->sv:Landroid/widget/ScrollView;

    .line 84
    const v2, 0x10203c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/HorizontalScrollView;

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->hsv:Landroid/widget/HorizontalScrollView;

    .line 85
    const v2, 0x10203c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg:Landroid/widget/LinearLayout;

    .line 86
    const v2, 0x10203ca

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg_land:Landroid/widget/LinearLayout;

    .line 87
    iput-object p3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mHandler:Landroid/os/Handler;

    .line 88
    invoke-virtual {p0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->addView(Landroid/view/View;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->childcnt:I

    .line 46
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->childindex:[I

    .line 47
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg:Landroid/widget/LinearLayout;

    .line 48
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg_land:Landroid/widget/LinearLayout;

    .line 49
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->sv:Landroid/widget/ScrollView;

    .line 50
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->hsv:Landroid/widget/HorizontalScrollView;

    .line 52
    iput-boolean v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mConfirmPortrait:Z

    .line 53
    iput-boolean v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mConfirmLandscape:Z

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->childcnt:I

    .line 46
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->childindex:[I

    .line 47
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg:Landroid/widget/LinearLayout;

    .line 48
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg_land:Landroid/widget/LinearLayout;

    .line 49
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->sv:Landroid/widget/ScrollView;

    .line 50
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->hsv:Landroid/widget/HorizontalScrollView;

    .line 52
    iput-boolean v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mConfirmPortrait:Z

    .line 53
    iput-boolean v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mConfirmLandscape:Z

    .line 95
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

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    iput v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->childcnt:I

    .line 46
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->childindex:[I

    .line 47
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg:Landroid/widget/LinearLayout;

    .line 48
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg_land:Landroid/widget/LinearLayout;

    .line 49
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->sv:Landroid/widget/ScrollView;

    .line 50
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->hsv:Landroid/widget/HorizontalScrollView;

    .line 52
    iput-boolean v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mConfirmPortrait:Z

    .line 53
    iput-boolean v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mConfirmLandscape:Z

    .line 99
    return-void
.end method


# virtual methods
.method public checkOrientation(Ljava/lang/String;)V
    .locals 3
    .param p1, "orientation"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 188
    const-string/jumbo v0, "ConfirmPortrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iput-boolean v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mConfirmPortrait:Z

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    const-string/jumbo v0, "ConfirmLandscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    iput-boolean v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mConfirmLandscape:Z

    goto :goto_0

    .line 192
    :cond_2
    const-string/jumbo v0, "HideConfirmPortrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 193
    iput-boolean v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mConfirmPortrait:Z

    goto :goto_0

    .line 194
    :cond_3
    const-string/jumbo v0, "HideConfirmLandscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iput-boolean v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mConfirmLandscape:Z

    goto :goto_0
.end method

.method public hideAllView(Landroid/view/View;)V
    .locals 9
    .param p1, "selectedView"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 104
    const/4 v3, 0x0

    .line 105
    .local v3, "view":Landroid/view/View;
    const/4 v0, 0x0

    .end local v3    # "view":Landroid/view/View;
    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 106
    iget-object v4, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 107
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p1, v3}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 105
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    move-object v2, v3

    .line 109
    .local v2, "tempView":Landroid/view/View;
    const v4, 0x10203d9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 110
    .local v1, "imageFrameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 111
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 112
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 113
    const/4 v5, 0x0

    .line 112
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 114
    const-wide/16 v6, 0xc8

    .line 112
    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 115
    new-instance v5, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout$1;

    invoke-direct {v5, p0, v3}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout$1;-><init>(Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;Landroid/view/View;)V

    .line 112
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 103
    .end local v1    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .end local v2    # "tempView":Landroid/view/View;
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public hideAllViewForLand(Landroid/view/View;)V
    .locals 9
    .param p1, "selectedView"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 146
    const/4 v3, 0x0

    .line 147
    .local v3, "view":Landroid/view/View;
    const/4 v0, 0x0

    .end local v3    # "view":Landroid/view/View;
    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg_land:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 148
    iget-object v4, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg_land:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 149
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p1, v3}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 147
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_0
    move-object v2, v3

    .line 151
    .local v2, "tempView":Landroid/view/View;
    const v4, 0x10203d9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 152
    .local v1, "imageFrameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 153
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 154
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 155
    const/4 v5, 0x0

    .line 154
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 156
    const-wide/16 v6, 0xc8

    .line 154
    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 157
    new-instance v5, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout$3;

    invoke-direct {v5, p0, v3}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout$3;-><init>(Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;Landroid/view/View;)V

    .line 154
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 145
    .end local v1    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .end local v2    # "tempView":Landroid/view/View;
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 202
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 203
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 204
    invoke-virtual {p0, v0}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->getChildAt(I)Landroid/view/View;

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 208
    iget-object v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->sv:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 209
    iget-object v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->hsv:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1, v4}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 211
    iget-boolean v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mConfirmLandscape:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mConfirmPortrait:Z

    if-eqz v1, :cond_2

    .line 200
    :cond_1
    :goto_1
    return-void

    .line 212
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 214
    :cond_3
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 215
    iget-object v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->sv:Landroid/widget/ScrollView;

    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 216
    iget-object v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->hsv:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1, v3}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 218
    iget-boolean v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mConfirmPortrait:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mConfirmLandscape:Z

    if-nez v1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 227
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public showAllView(Landroid/view/View;)V
    .locals 6
    .param p1, "selectedView"    # Landroid/view/View;

    .prologue
    .line 127
    const/4 v2, 0x0

    .line 128
    .local v2, "view":Landroid/view/View;
    const/4 v0, 0x0

    .end local v2    # "view":Landroid/view/View;
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 129
    iget-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 130
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p1, v2}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    move-object v1, v2

    .line 132
    .local v1, "tempView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 133
    const/high16 v4, 0x3f800000    # 1.0f

    .line 132
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 134
    const-wide/16 v4, 0xc8

    .line 132
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 135
    new-instance v4, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout$2;

    invoke-direct {v4, p0, v2}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout$2;-><init>(Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;Landroid/view/View;)V

    .line 132
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 126
    .end local v1    # "tempView":Landroid/view/View;
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public showAllViewForLand(Landroid/view/View;)V
    .locals 6
    .param p1, "selectedView"    # Landroid/view/View;

    .prologue
    .line 170
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg_land:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 171
    iget-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg_land:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 172
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p1, v2}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_0
    move-object v1, v2

    .line 174
    .local v1, "tempView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 175
    const/high16 v4, 0x3f800000    # 1.0f

    .line 174
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 176
    const-wide/16 v4, 0xc8

    .line 174
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 177
    new-instance v4, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout$4;

    invoke-direct {v4, p0, v2}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout$4;-><init>(Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;Landroid/view/View;)V

    .line 174
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 168
    .end local v1    # "tempView":Landroid/view/View;
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method
