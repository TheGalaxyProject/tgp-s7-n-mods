.class public Lcom/android/packageinstaller/TabsAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "TabsAdapter.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/TabsAdapter$DummyTabFactory;,
        Lcom/android/packageinstaller/TabsAdapter$TabInfo;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTabHost:Landroid/widget/TabHost;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/packageinstaller/TabsAdapter$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/TabHost;Landroid/support/v4/view/ViewPager;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "tabHost"    # Landroid/widget/TabHost;
    .param p3, "pager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/packageinstaller/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/packageinstaller/TabsAdapter;->mTempRect:Landroid/graphics/Rect;

    .line 77
    iput-object p1, p0, Lcom/android/packageinstaller/TabsAdapter;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/android/packageinstaller/TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    .line 79
    iput-object p3, p0, Lcom/android/packageinstaller/TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 80
    iget-object v0, p0, Lcom/android/packageinstaller/TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 81
    iget-object v0, p0, Lcom/android/packageinstaller/TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 82
    iget-object v0, p0, Lcom/android/packageinstaller/TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 76
    return-void
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;Landroid/view/View;)V
    .locals 4
    .param p1, "tabSpec"    # Landroid/widget/TabHost$TabSpec;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 86
    new-instance v2, Lcom/android/packageinstaller/TabsAdapter$DummyTabFactory;

    iget-object v3, p0, Lcom/android/packageinstaller/TabsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/packageinstaller/TabsAdapter$DummyTabFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 87
    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "tag":Ljava/lang/String;
    new-instance v0, Lcom/android/packageinstaller/TabsAdapter$TabInfo;

    invoke-direct {v0, v1, p2}, Lcom/android/packageinstaller/TabsAdapter$TabInfo;-><init>(Ljava/lang/String;Landroid/view/View;)V

    .line 90
    .local v0, "info":Lcom/android/packageinstaller/TabsAdapter$TabInfo;
    iget-object v2, p0, Lcom/android/packageinstaller/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v2, p0, Lcom/android/packageinstaller/TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, p1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/packageinstaller/TabsAdapter;->notifyDataSetChanged()V

    .line 85
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 109
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 108
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/packageinstaller/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 102
    iget-object v1, p0, Lcom/android/packageinstaller/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/packageinstaller/TabsAdapter$TabInfo;

    invoke-static {v1}, Lcom/android/packageinstaller/TabsAdapter$TabInfo;->-get0(Lcom/android/packageinstaller/TabsAdapter$TabInfo;)Landroid/view/View;

    move-result-object v0

    .line 103
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 104
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 114
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 153
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 124
    return-void
.end method

.method public onPageSelected(I)V
    .locals 9
    .param p1, "position"    # I

    .prologue
    .line 134
    iget-object v4, p0, Lcom/android/packageinstaller/TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    .line 135
    .local v3, "widget":Landroid/widget/TabWidget;
    invoke-virtual {v3}, Landroid/widget/TabWidget;->getDescendantFocusability()I

    move-result v1

    .line 136
    .local v1, "oldFocusability":I
    const/high16 v4, 0x60000

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->setDescendantFocusability(I)V

    .line 137
    iget-object v4, p0, Lcom/android/packageinstaller/TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 138
    invoke-virtual {v3, v1}, Landroid/widget/TabWidget;->setDescendantFocusability(I)V

    .line 141
    invoke-virtual {v3, p1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    .line 142
    .local v2, "tab":Landroid/view/View;
    iget-object v4, p0, Lcom/android/packageinstaller/TabsAdapter;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 143
    iget-object v4, p0, Lcom/android/packageinstaller/TabsAdapter;->mTempRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/TabWidget;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 146
    iget-object v4, p0, Lcom/android/packageinstaller/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/packageinstaller/TabsAdapter$TabInfo;

    invoke-static {v4}, Lcom/android/packageinstaller/TabsAdapter$TabInfo;->-get0(Lcom/android/packageinstaller/TabsAdapter$TabInfo;)Landroid/view/View;

    move-result-object v0

    .line 147
    .local v0, "contentView":Landroid/view/View;
    instance-of v4, v0, Lcom/android/packageinstaller/CaffeinatedScrollView;

    if-eqz v4, :cond_0

    .line 148
    check-cast v0, Lcom/android/packageinstaller/CaffeinatedScrollView;

    .end local v0    # "contentView":Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/packageinstaller/CaffeinatedScrollView;->awakenScrollBars()Z

    .line 128
    :cond_0
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v1, p0, Lcom/android/packageinstaller/TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    .line 120
    .local v0, "position":I
    iget-object v1, p0, Lcom/android/packageinstaller/TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 118
    return-void
.end method
