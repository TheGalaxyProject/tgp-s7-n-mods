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

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/packageinstaller/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/packageinstaller/TabsAdapter;->mTempRect:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/packageinstaller/TabsAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/packageinstaller/TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    iput-object p3, p0, Lcom/android/packageinstaller/TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/android/packageinstaller/TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    iget-object v0, p0, Lcom/android/packageinstaller/TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/android/packageinstaller/TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;Landroid/view/View;)V
    .locals 4

    new-instance v2, Lcom/android/packageinstaller/TabsAdapter$DummyTabFactory;

    iget-object v3, p0, Lcom/android/packageinstaller/TabsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/packageinstaller/TabsAdapter$DummyTabFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/android/packageinstaller/TabsAdapter$TabInfo;

    invoke-direct {v0, v1, p2}, Lcom/android/packageinstaller/TabsAdapter$TabInfo;-><init>(Ljava/lang/String;Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/packageinstaller/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/packageinstaller/TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, p1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/TabsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    iget-object v1, p0, Lcom/android/packageinstaller/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/packageinstaller/TabsAdapter$TabInfo;

    invoke-static {v1}, Lcom/android/packageinstaller/TabsAdapter$TabInfo;->-get0(Lcom/android/packageinstaller/TabsAdapter$TabInfo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

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

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 9

    iget-object v4, p0, Lcom/android/packageinstaller/TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TabWidget;->getDescendantFocusability()I

    move-result v1

    const/high16 v4, 0x60000

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->setDescendantFocusability(I)V

    iget-object v4, p0, Lcom/android/packageinstaller/TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    invoke-virtual {v3, v1}, Landroid/widget/TabWidget;->setDescendantFocusability(I)V

    invoke-virtual {v3, p1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

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

    iget-object v4, p0, Lcom/android/packageinstaller/TabsAdapter;->mTempRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/TabWidget;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    iget-object v4, p0, Lcom/android/packageinstaller/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/packageinstaller/TabsAdapter$TabInfo;

    invoke-static {v4}, Lcom/android/packageinstaller/TabsAdapter$TabInfo;->-get0(Lcom/android/packageinstaller/TabsAdapter$TabInfo;)Landroid/view/View;

    move-result-object v0

    instance-of v4, v0, Lcom/android/packageinstaller/CaffeinatedScrollView;

    if-eqz v4, :cond_0

    check-cast v0, Lcom/android/packageinstaller/CaffeinatedScrollView;

    invoke-virtual {v0}, Lcom/android/packageinstaller/CaffeinatedScrollView;->awakenScrollBars()Z

    :cond_0
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/android/packageinstaller/TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    iget-object v1, p0, Lcom/android/packageinstaller/TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method
