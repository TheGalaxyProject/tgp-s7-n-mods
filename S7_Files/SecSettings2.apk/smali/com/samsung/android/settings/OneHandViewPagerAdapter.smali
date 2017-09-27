.class public Lcom/samsung/android/settings/OneHandViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "OneHandViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/OneHandViewPagerAdapter$Description;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field mDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/OneHandViewPagerAdapter$Description;",
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
    .line 58
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    .line 59
    iput-object p1, p0, Lcom/samsung/android/settings/OneHandViewPagerAdapter;->context:Landroid/content/Context;

    .line 60
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/OneHandViewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/settings/OneHandViewPagerAdapter;->setDescriptions()V

    .line 57
    return-void
.end method

.method private setDescriptions()V
    .locals 4

    .prologue
    .line 144
    new-instance v0, Lcom/samsung/android/settings/OneHandViewPagerAdapter$Description;

    invoke-direct {v0}, Lcom/samsung/android/settings/OneHandViewPagerAdapter$Description;-><init>()V

    .line 145
    .local v0, "description":Lcom/samsung/android/settings/OneHandViewPagerAdapter$Description;
    iget-object v2, p0, Lcom/samsung/android/settings/OneHandViewPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112006a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 147
    .local v1, "showHardkey":Z
    new-instance v0, Lcom/samsung/android/settings/OneHandViewPagerAdapter$Description;

    .end local v0    # "description":Lcom/samsung/android/settings/OneHandViewPagerAdapter$Description;
    invoke-direct {v0}, Lcom/samsung/android/settings/OneHandViewPagerAdapter$Description;-><init>()V

    .line 148
    .restart local v0    # "description":Lcom/samsung/android/settings/OneHandViewPagerAdapter$Description;
    const-string/jumbo v2, "gesture_type"

    iput-object v2, v0, Lcom/samsung/android/settings/OneHandViewPagerAdapter$Description;->key:Ljava/lang/String;

    .line 149
    const v2, 0x7f02037a

    iput v2, v0, Lcom/samsung/android/settings/OneHandViewPagerAdapter$Description;->animation:I

    .line 150
    const v2, 0x7f0b0b67

    iput v2, v0, Lcom/samsung/android/settings/OneHandViewPagerAdapter$Description;->summary:I

    .line 151
    iget-object v2, p0, Lcom/samsung/android/settings/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v0, Lcom/samsung/android/settings/OneHandViewPagerAdapter$Description;

    .end local v0    # "description":Lcom/samsung/android/settings/OneHandViewPagerAdapter$Description;
    invoke-direct {v0}, Lcom/samsung/android/settings/OneHandViewPagerAdapter$Description;-><init>()V

    .line 156
    .restart local v0    # "description":Lcom/samsung/android/settings/OneHandViewPagerAdapter$Description;
    const-string/jumbo v2, "button_type"

    iput-object v2, v0, Lcom/samsung/android/settings/OneHandViewPagerAdapter$Description;->key:Ljava/lang/String;

    .line 157
    const v2, 0x7f020379

    iput v2, v0, Lcom/samsung/android/settings/OneHandViewPagerAdapter$Description;->animation:I

    .line 158
    if-eqz v1, :cond_0

    .line 159
    const v2, 0x7f0b0b68

    iput v2, v0, Lcom/samsung/android/settings/OneHandViewPagerAdapter$Description;->summary:I

    .line 163
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    return-void

    .line 161
    :cond_0
    const v2, 0x7f0b0b69

    iput v2, v0, Lcom/samsung/android/settings/OneHandViewPagerAdapter$Description;->summary:I

    goto :goto_0
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    .line 121
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "pager":Landroid/view/View;
    check-cast p3, Landroid/view/View;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 120
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/android/settings/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

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

    .line 126
    check-cast v1, Ljava/lang/String;

    .line 128
    .local v1, "key":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 129
    return v3

    .line 132
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 133
    iget-object v2, p0, Lcom/samsung/android/settings/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/OneHandViewPagerAdapter$Description;

    iget-object v2, v2, Lcom/samsung/android/settings/OneHandViewPagerAdapter$Description;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 134
    iget-object v2, p0, Lcom/samsung/android/settings/OneHandViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    iget-object v2, p0, Lcom/samsung/android/settings/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int v0, v2, v0

    .line 137
    :cond_1
    return v0

    .line 132
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_3
    return v3
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 10
    .param p1, "pager"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 77
    const/4 v4, 0x0

    .line 79
    .local v4, "v":Landroid/view/View;
    iget-object v5, p0, Lcom/samsung/android/settings/OneHandViewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0401b1

    invoke-virtual {v5, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 80
    .local v4, "v":Landroid/view/View;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 81
    const v5, 0x7f1104ee

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 82
    .local v3, "mTitleView":Landroid/widget/TextView;
    const v5, 0x7f1104ef

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 83
    .local v2, "mSummaryView":Landroid/widget/TextView;
    const v5, 0x7f1104ed

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 84
    .local v1, "mAnimationView":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/samsung/android/settings/OneHandViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 85
    iget-object v5, p0, Lcom/samsung/android/settings/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    sub-int p2, v5, p2

    .line 88
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/OneHandViewPagerAdapter$Description;

    iget v5, v5, Lcom/samsung/android/settings/OneHandViewPagerAdapter$Description;->title:I

    if-nez v5, :cond_2

    .line 89
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/OneHandViewPagerAdapter$Description;

    iget v5, v5, Lcom/samsung/android/settings/OneHandViewPagerAdapter$Description;->summary:I

    if-nez v5, :cond_3

    .line 96
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/OneHandViewPagerAdapter$Description;

    iget v5, v5, Lcom/samsung/android/settings/OneHandViewPagerAdapter$Description;->animation:I

    if-nez v5, :cond_4

    .line 103
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    :cond_1
    :goto_2
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "pager":Landroid/view/ViewGroup;
    invoke-virtual {p1, v4, v7}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 116
    return-object v4

    .line 91
    .restart local p1    # "pager":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object v5, p0, Lcom/samsung/android/settings/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/OneHandViewPagerAdapter$Description;

    iget v5, v5, Lcom/samsung/android/settings/OneHandViewPagerAdapter$Description;->title:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 98
    :cond_3
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v5, p0, Lcom/samsung/android/settings/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/OneHandViewPagerAdapter$Description;

    iget v5, v5, Lcom/samsung/android/settings/OneHandViewPagerAdapter$Description;->summary:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 105
    :cond_4
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    iget-object v5, p0, Lcom/samsung/android/settings/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/OneHandViewPagerAdapter$Description;

    iget v5, v5, Lcom/samsung/android/settings/OneHandViewPagerAdapter$Description;->animation:I

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    iget-object v5, p0, Lcom/samsung/android/settings/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/OneHandViewPagerAdapter$Description;

    iget-object v5, v5, Lcom/samsung/android/settings/OneHandViewPagerAdapter$Description;->key:Ljava/lang/String;

    const-string/jumbo v6, "gesture_type"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 108
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 109
    .local v0, "ani":Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 72
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
