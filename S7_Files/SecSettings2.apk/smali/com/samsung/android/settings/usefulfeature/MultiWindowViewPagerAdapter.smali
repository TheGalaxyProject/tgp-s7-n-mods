.class public Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "MultiWindowViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mAnimationView:Landroid/widget/ImageView;

.field mDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    .line 62
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    .line 63
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 65
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->setDescriptions()V

    .line 60
    return-void
.end method

.method private setDescriptions()V
    .locals 5

    .prologue
    .line 141
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;-><init>()V

    .line 143
    .local v0, "description":Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "android.software.freeform_window_management"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    :cond_0
    :goto_0
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;

    .end local v0    # "description":Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;
    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;-><init>()V

    .line 154
    .restart local v0    # "description":Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;
    const-string/jumbo v2, "split_screen"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->key:Ljava/lang/String;

    .line 155
    const v2, 0x7f02036f

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->animation:I

    .line 156
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112006a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 157
    .local v1, "showHardkey":Z
    if-eqz v1, :cond_2

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    const v4, 0x7f0b0917

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    const v4, 0x7f0b0918

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->summary:Ljava/lang/String;

    .line 163
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    return-void

    .line 146
    .end local v1    # "showHardkey":Z
    :cond_1
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;

    .end local v0    # "description":Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;
    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;-><init>()V

    .line 147
    .restart local v0    # "description":Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;
    const-string/jumbo v2, "pop_up_gesture"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->key:Ljava/lang/String;

    .line 148
    const v2, 0x7f02036e

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->animation:I

    .line 149
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    const v3, 0x7f0b0911

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->summary:Ljava/lang/String;

    .line 150
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    .restart local v1    # "showHardkey":Z
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    const v4, 0x7f0b0915

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    const v4, 0x7f0b0916

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->summary:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    .line 118
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "pager":Landroid/view/View;
    check-cast p3, Landroid/view/View;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 117
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v3, -0x1

    move-object v1, p1

    .line 123
    check-cast v1, Ljava/lang/String;

    .line 125
    .local v1, "key":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 126
    return v3

    .line 129
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 130
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;

    iget-object v2, v2, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 131
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int v0, v2, v0

    .line 134
    :cond_1
    return v0

    .line 129
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_3
    return v3
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8
    .param p1, "pager"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 80
    const/4 v2, 0x0

    .line 82
    .local v2, "v":Landroid/view/View;
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0401b1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 83
    .local v2, "v":Landroid/view/View;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 84
    const v3, 0x7f1104ee

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 85
    .local v1, "mTitleView":Landroid/widget/TextView;
    const v3, 0x7f1104ef

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 86
    .local v0, "mSummaryView":Landroid/widget/TextView;
    const v3, 0x7f1104ed

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mAnimationView:Landroid/widget/ImageView;

    .line 87
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int p2, v3, p2

    .line 91
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;

    iget v3, v3, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->title:I

    if-nez v3, :cond_1

    .line 92
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;

    iget-object v3, v3, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->summary:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 99
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;

    iget v3, v3, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->animation:I

    if-nez v3, :cond_3

    .line 106
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    :goto_2
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "pager":Landroid/view/ViewGroup;
    invoke-virtual {p1, v2, v6}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 113
    return-object v2

    .line 94
    .restart local p1    # "pager":Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;

    iget v3, v3, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->title:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;

    iget-object v3, v3, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->summary:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 108
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mAnimationView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;

    iget v3, v3, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->animation:I

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 75
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
