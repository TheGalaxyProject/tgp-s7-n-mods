.class public Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "IrisPreveiwStyleFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final irisPreviewImages:[I

.field mCheckViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mListView:Landroid/widget/LinearLayout;

.field mStyleNum:I

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mCheckViews:Ljava/util/ArrayList;

    .line 34
    const v0, 0x7f0202bb

    .line 35
    const v1, 0x7f0202bc

    .line 36
    const v2, 0x7f0202bd

    .line 37
    const v3, 0x7f0202be

    .line 38
    const v4, 0x7f0202bf

    .line 33
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->irisPreviewImages:[I

    .line 23
    return-void
.end method

.method private startAnimation()Landroid/view/View;
    .locals 15

    .prologue
    const v14, 0x7f050021

    .line 100
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 101
    .local v12, "vi":Landroid/view/LayoutInflater;
    const v0, 0x7f040138

    const/4 v1, 0x0

    invoke-virtual {v12, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 102
    .local v13, "view":Landroid/view/View;
    const v0, 0x7f1103e9

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 103
    .local v3, "right_ani_01":Landroid/widget/ImageView;
    const v0, 0x7f1103ea

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 105
    .local v4, "right_ani_02":Landroid/widget/ImageView;
    const v0, 0x7f1103e6

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 106
    .local v6, "left_ani_01":Landroid/widget/ImageView;
    const v0, 0x7f1103e7

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 107
    .local v8, "left_ani_02":Landroid/widget/ImageView;
    const v0, 0x7f1103e8

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 109
    .local v10, "left_ani_03":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v14}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 110
    .local v2, "ani_right_01":Landroid/view/animation/Animation;
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f050023

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    .line 112
    .local v5, "ani_right_02":Landroid/view/animation/Animation;
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v14}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    .line 113
    .local v7, "ani_left_01":Landroid/view/animation/Animation;
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f050022

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    .line 114
    .local v9, "ani_left_02":Landroid/view/animation/Animation;
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v14}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v11

    .line 116
    .local v11, "ani_left_03":Landroid/view/animation/Animation;
    new-instance v0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$1;-><init>(Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;Landroid/view/animation/Animation;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/animation/Animation;Landroid/widget/ImageView;Landroid/view/animation/Animation;Landroid/widget/ImageView;Landroid/view/animation/Animation;Landroid/widget/ImageView;Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 137
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 138
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 139
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 140
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 141
    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 143
    return-object v13
.end method

.method private viewInit()V
    .locals 12

    .prologue
    const v11, 0x7f1103eb

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 59
    const-string/jumbo v6, "IrisPreveiwStyleFragment"

    const-string/jumbo v7, "viewInit"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "iris_preview_style"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mStyleNum:I

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 63
    .local v4, "inflater":Landroid/view/LayoutInflater;
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mView:Landroid/view/View;

    const v7, 0x7f110400

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mListView:Landroid/widget/LinearLayout;

    .line 65
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->startAnimation()Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, "aniView":Landroid/view/View;
    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 67
    .local v1, "checkBox":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 69
    invoke-virtual {v0, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 70
    iget v6, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mStyleNum:I

    if-nez v6, :cond_0

    .line 71
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 76
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mCheckViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 79
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->irisPreviewImages:[I

    array-length v6, v6

    if-gt v2, v6, :cond_2

    .line 80
    const v6, 0x7f04013f

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 81
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 82
    const v6, 0x7f1103ff

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 83
    .local v3, "imageView":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->irisPreviewImages:[I

    add-int/lit8 v7, v2, -0x1

    aget v6, v6, v7

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 86
    invoke-virtual {v5, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 87
    iget v6, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mStyleNum:I

    if-ne v6, v2, :cond_1

    .line 88
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 92
    :goto_2
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mCheckViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 73
    .end local v2    # "i":I
    .end local v3    # "imageView":Landroid/widget/ImageView;
    .end local v5    # "view":Landroid/view/View;
    :cond_0
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 90
    .restart local v2    # "i":I
    .restart local v3    # "imageView":Landroid/widget/ImageView;
    .restart local v5    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 96
    .end local v3    # "imageView":Landroid/widget/ImageView;
    .end local v5    # "view":Landroid/view/View;
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mCheckViews:Ljava/util/ArrayList;

    iget v7, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mStyleNum:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 58
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 148
    const/16 v0, 0x270f

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 153
    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mCheckViews:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "layoutView$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 154
    .local v1, "layoutView":Landroid/view/View;
    const v3, 0x7f1103eb

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 155
    .local v0, "checkBox":Landroid/view/View;
    invoke-virtual {p1, v1}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 157
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "iris_preview_style"

    iget-object v5, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mCheckViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 159
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 162
    .end local v0    # "checkBox":Landroid/view/View;
    .end local v1    # "layoutView":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->onBackPressed()V

    .line 152
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    const v0, 0x7f040140

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mView:Landroid/view/View;

    .line 49
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->viewInit()V

    .line 50
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 168
    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mCheckViews:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "layoutView$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 169
    .local v1, "layoutView":Landroid/view/View;
    const v3, 0x7f1103eb

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 170
    .local v0, "checkBox":Landroid/view/View;
    invoke-virtual {p1, v1}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    if-eqz p2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 173
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 166
    .end local v0    # "checkBox":Landroid/view/View;
    .end local v1    # "layoutView":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 54
    return-void
.end method
