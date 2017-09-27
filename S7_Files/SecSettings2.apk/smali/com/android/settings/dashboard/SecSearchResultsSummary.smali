.class public Lcom/android/settings/dashboard/SecSearchResultsSummary;
.super Lcom/samsung/android/settings/SecInstrumentedFragment;
.source "SecSearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/SecSearchResultsSummary$1;,
        Lcom/android/settings/dashboard/SecSearchResultsSummary$2;,
        Lcom/android/settings/dashboard/SecSearchResultsSummary$3;,
        Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;,
        Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;,
        Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionItem;,
        Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;,
        Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;,
        Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSuggestionsTask;
    }
.end annotation


# static fields
.field private static ELLIPSIS:C

.field public static mIsRunningSearchFragment:Z


# instance fields
.field private detailValue:Ljava/lang/String;

.field private isQuerySubmitted:Z

.field private mContext:Landroid/content/Context;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mLayoutResults:Landroid/view/ViewGroup;

.field private mLayoutSuggestions:Landroid/view/ViewGroup;

.field private mLoading:Landroid/view/ViewGroup;

.field private mNoResults:Landroid/view/ViewGroup;

.field private mQuery:Ljava/lang/String;

.field private mResultsAdapter:Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;

.field private mResultsListView:Landroid/widget/ListView;

.field private mSearchMenuItem:Landroid/view/MenuItem;

.field private mSearchReceiver:Landroid/content/BroadcastReceiver;

.field private mSearchToolbar:Landroid/widget/Toolbar;

.field private mSearchView:Landroid/widget/SearchView;

.field private mShowResults:Z

.field private mSuggestionsAdapter:Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;

.field private mSuggestionsHeaderView:Landroid/view/View;

.field private mSuggestionsListView:Landroid/widget/ListView;

.field private mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;

.field private mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSuggestionsTask;

.field private mode:I

.field private scrollListner:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method static synthetic -get0(Lcom/android/settings/dashboard/SecSearchResultsSummary;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->detailValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/dashboard/SecSearchResultsSummary;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/dashboard/SecSearchResultsSummary;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/dashboard/SecSearchResultsSummary;)Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/dashboard/SecSearchResultsSummary;)Landroid/widget/SearchView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/dashboard/SecSearchResultsSummary;)Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/dashboard/SecSearchResultsSummary;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->detailValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings/dashboard/SecSearchResultsSummary;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/settings/dashboard/SecSearchResultsSummary;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mShowResults:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/settings/dashboard/SecSearchResultsSummary;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mode:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/dashboard/SecSearchResultsSummary;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->saveQueryToDatabase(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/dashboard/SecSearchResultsSummary;Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->setEmptyVisibility(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/dashboard/SecSearchResultsSummary;I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->setRealCount(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/dashboard/SecSearchResultsSummary;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->setResultsCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/dashboard/SecSearchResultsSummary;Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->setResultsVisibility(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/dashboard/SecSearchResultsSummary;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->setSuggestionsCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings/dashboard/SecSearchResultsSummary;Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->setSuggestionsVisibility(Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/settings/dashboard/SecSearchResultsSummary;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->startLoading()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/settings/dashboard/SecSearchResultsSummary;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->stopLoading()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/16 v0, 0x2026

    sput-char v0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->ELLIPSIS:C

    .line 416
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mIsRunningSearchFragment:Z

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Lcom/samsung/android/settings/SecInstrumentedFragment;-><init>()V

    .line 103
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->detailValue:Ljava/lang/String;

    .line 104
    iput v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mode:I

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 263
    new-instance v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/SecSearchResultsSummary$1;-><init>(Lcom/android/settings/dashboard/SecSearchResultsSummary;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->scrollListner:Landroid/widget/AbsListView$OnScrollListener;

    .line 489
    new-instance v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$2;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/SecSearchResultsSummary$2;-><init>(Lcom/android/settings/dashboard/SecSearchResultsSummary;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mSearchReceiver:Landroid/content/BroadcastReceiver;

    .line 569
    iput-boolean v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->isQuerySubmitted:Z

    .line 1393
    new-instance v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$3;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/SecSearchResultsSummary$3;-><init>(Lcom/android/settings/dashboard/SecSearchResultsSummary;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 70
    return-void
.end method

.method private cancelLoading()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mLoading:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mLoading:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 112
    :cond_0
    return-void
.end method

.method private clearAllTasks()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 723
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;

    invoke-virtual {v0, v2}, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->cancel(Z)Z

    .line 725
    iput-object v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSuggestionsTask;

    if-eqz v0, :cond_1

    .line 728
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSuggestionsTask;

    invoke-virtual {v0, v2}, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSuggestionsTask;->cancel(Z)Z

    .line 729
    iput-object v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSuggestionsTask;

    .line 722
    :cond_1
    return-void
.end method

.method private clearResults()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 679
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->cancel(Z)Z

    .line 681
    iput-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;

    .line 683
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->setResultsCursor(Landroid/database/Cursor;)V

    .line 678
    return-void
.end method

.method private clearSuggestions()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 661
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSuggestionsTask;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSuggestionsTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSuggestionsTask;->cancel(Z)Z

    .line 663
    iput-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSuggestionsTask;

    .line 665
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->setSuggestionsCursor(Landroid/database/Cursor;)V

    .line 660
    return-void
.end method

.method private getFilteredQueryString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p1, "query"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 705
    if-nez p1, :cond_0

    .line 706
    return-object v0

    .line 719
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private saveQueryToDatabase(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/search/SecIndex;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/SecIndex;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/search/SecIndex;->addSavedQuery(Ljava/lang/String;)J

    .line 565
    return-void
.end method

.method private setEmptyVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 556
    .end local p1    # "visible":Z
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mNoResults:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 557
    iget-object v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mNoResults:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 554
    :cond_1
    return-void

    .line 557
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setRealCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;

    if-nez v0, :cond_0

    .line 688
    return-void

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->setRealCount(I)V

    .line 686
    return-void
.end method

.method private setResultsCursor(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 694
    iget-object v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;

    if-nez v1, :cond_0

    .line 695
    return-void

    .line 697
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {v1, p1}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 698
    .local v0, "oldCursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;

    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->setQuery(Ljava/lang/String;)V

    .line 699
    if-eqz v0, :cond_1

    .line 700
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 693
    :cond_1
    return-void
.end method

.method private setResultsVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mLayoutResults:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 550
    iget-object v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mLayoutResults:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 548
    :cond_0
    return-void

    .line 550
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setSuggestionsCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 669
    iget-object v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;

    if-nez v1, :cond_0

    .line 670
    return-void

    .line 672
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;

    invoke-virtual {v1, p1}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 673
    .local v0, "oldCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 674
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 668
    :cond_1
    return-void
.end method

.method private setSuggestionsVisibility(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 535
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 536
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 538
    :cond_0
    if-eqz p1, :cond_3

    .line 539
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 540
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mSuggestionsHeaderView:Landroid/view/View;

    invoke-virtual {v0, v2, v3, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 534
    :cond_1
    :goto_1
    return-void

    .line 536
    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    .line 543
    :cond_3
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mSuggestionsHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    goto :goto_1
.end method

.method private startLoading()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mLoading:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mLoading:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 106
    :cond_0
    return-void
.end method

.method private stopLoading()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mLoading:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mLoading:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 121
    iput-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mLoading:Landroid/view/ViewGroup;

    .line 118
    :cond_0
    return-void
.end method

.method private updateDetailValue(Ljava/lang/String;)V
    .locals 8
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 583
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->detailValue:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 584
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->detailValue:Ljava/lang/String;

    .line 585
    .local v0, "detail":Ljava/lang/String;
    const-string/jumbo v2, ":"

    iput-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->detailValue:Ljava/lang/String;

    .line 595
    :goto_0
    const-string/jumbo v2, "SearchResultsSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prev detail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/ mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const-string/jumbo v2, "SearchResultsSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "query: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 598
    iput v5, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mode:I

    .line 599
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 600
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->detailValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->detailValue:Ljava/lang/String;

    .line 603
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_4

    .line 604
    iget v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mode:I

    if-nez v2, :cond_3

    .line 605
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->detailValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->detailValue:Ljava/lang/String;

    .line 627
    :goto_1
    const-string/jumbo v2, "SearchResultsSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "new detailValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->detailValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/ mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const-string/jumbo v2, "SearchResultsSummary"

    const-string/jumbo v3, "====================="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    return-void

    .line 587
    .end local v0    # "detail":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->detailValue:Ljava/lang/String;

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 588
    .local v1, "idx":I
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->detailValue:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 589
    .restart local v0    # "detail":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 590
    const-string/jumbo v2, ":"

    iput-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->detailValue:Ljava/lang/String;

    goto/16 :goto_0

    .line 592
    :cond_2
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->detailValue:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->detailValue:Ljava/lang/String;

    goto/16 :goto_0

    .line 607
    .end local v1    # "idx":I
    :cond_3
    iput v5, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mode:I

    .line 608
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->detailValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->detailValue:Ljava/lang/String;

    goto :goto_1

    .line 610
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_8

    .line 611
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 612
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    if-eq v2, v3, :cond_6

    :cond_5
    return-void

    .line 613
    :cond_6
    iget v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mode:I

    if-ne v2, v6, :cond_7

    .line 614
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->detailValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->detailValue:Ljava/lang/String;

    goto/16 :goto_1

    .line 616
    :cond_7
    iput v6, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mode:I

    .line 617
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->detailValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->detailValue:Ljava/lang/String;

    goto/16 :goto_1

    .line 620
    :cond_8
    iget v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mode:I

    if-ne v2, v7, :cond_9

    .line 621
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->detailValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->detailValue:Ljava/lang/String;

    goto/16 :goto_1

    .line 623
    :cond_9
    iput v7, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mode:I

    .line 624
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->detailValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->detailValue:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method private updateSearchResults()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 744
    invoke-direct {p0}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->clearAllTasks()V

    .line 745
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    invoke-direct {p0, v3}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->setResultsVisibility(Z)V

    .line 747
    invoke-direct {p0, v1}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->setResultsCursor(Landroid/database/Cursor;)V

    .line 743
    :goto_0
    return-void

    .line 749
    :cond_0
    new-instance v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;-><init>(Lcom/android/settings/dashboard/SecSearchResultsSummary;Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;

    .line 750
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mQuery:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private updateSuggestions()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 734
    invoke-direct {p0}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->clearAllTasks()V

    .line 735
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mQuery:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 736
    invoke-direct {p0, v1}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->setSuggestionsCursor(Landroid/database/Cursor;)V

    .line 733
    :goto_0
    return-void

    .line 738
    :cond_0
    new-instance v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSuggestionsTask;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSuggestionsTask;-><init>(Lcom/android/settings/dashboard/SecSearchResultsSummary;Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSuggestionsTask;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSuggestionsTask;

    .line 739
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSuggestionsTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mQuery:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSuggestionsTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 420
    const/16 v0, 0x22

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 505
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecInstrumentedFragment;->onAttach(Landroid/app/Activity;)V

    .line 506
    iput-object p1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mContext:Landroid/content/Context;

    .line 508
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->checkSupportVolteSettings(Landroid/content/Context;)V

    .line 509
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->checkVzwVoLTEFeatureEnabled(Landroid/content/Context;)V

    .line 511
    instance-of v0, p1, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 512
    invoke-static {p1}, Lcom/android/settings/search/SecIndex;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/SecIndex;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getDashboardCategories()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/settings/search/SecIndex;->setCategories(Ljava/util/List;)V

    .line 514
    :cond_0
    invoke-static {p1}, Lcom/android/settings/Utils;->startSearchIndexing(Landroid/app/Activity;)V

    .line 515
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mSearchReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.sec.android.query_by_voice"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 503
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 219
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecInstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 221
    new-instance v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;

    .line 222
    new-instance v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;

    .line 224
    if-eqz p1, :cond_0

    .line 225
    const-string/jumbo v0, ":settings:show_results"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mShowResults:Z

    .line 229
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 218
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 297
    const v2, 0x7f040265

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 299
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f1105fe

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    .line 300
    const v2, 0x7f110600

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mLayoutResults:Landroid/view/ViewGroup;

    .line 302
    const v2, 0x7f11060a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mNoResults:Landroid/view/ViewGroup;

    .line 303
    const v2, 0x7f110458

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mLoading:Landroid/view/ViewGroup;

    .line 304
    const v2, 0x7f110609

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Toolbar;

    iput-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mSearchToolbar:Landroid/widget/Toolbar;

    .line 306
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 307
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 308
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mSearchToolbar:Landroid/widget/Toolbar;

    const v3, 0x7f140009

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->inflateMenu(I)V

    .line 309
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mSearchToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v2}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 310
    .local v0, "menu":Landroid/view/Menu;
    invoke-virtual {p0}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v2, v0}, Lcom/android/settings/SettingsActivity;->updateOptionMenu(Landroid/view/Menu;)Z

    .line 311
    const v2, 0x7f110886

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mSearchMenuItem:Landroid/view/MenuItem;

    .line 312
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->expandActionView()Z

    .line 313
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    .line 314
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mSearchToolbar:Landroid/widget/Toolbar;

    new-instance v3, Lcom/android/settings/dashboard/SecSearchResultsSummary$4;

    invoke-direct {v3, p0}, Lcom/android/settings/dashboard/SecSearchResultsSummary$4;-><init>(Lcom/android/settings/dashboard/SecSearchResultsSummary;)V

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    .end local v0    # "menu":Landroid/view/Menu;
    :goto_0
    const v2, 0x7f110601

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    .line 325
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->scrollListner:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 326
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 327
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    new-instance v3, Lcom/android/settings/dashboard/SecSearchResultsSummary$5;

    invoke-direct {v3, p0}, Lcom/android/settings/dashboard/SecSearchResultsSummary$5;-><init>(Lcom/android/settings/dashboard/SecSearchResultsSummary;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 380
    const v2, 0x7f1105ff

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    .line 381
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 382
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->scrollListner:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 383
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    new-instance v3, Lcom/android/settings/dashboard/SecSearchResultsSummary$6;

    invoke-direct {v3, p0}, Lcom/android/settings/dashboard/SecSearchResultsSummary$6;-><init>(Lcom/android/settings/dashboard/SecSearchResultsSummary;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 407
    invoke-virtual {p0}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 408
    iget-object v3, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    const v4, 0x7f040267

    .line 407
    invoke-virtual {v2, v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mSuggestionsHeaderView:Landroid/view/View;

    .line 410
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 411
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mSuggestionsHeaderView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 414
    :cond_0
    return-object v1

    .line 321
    :cond_1
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mSearchToolbar:Landroid/widget/Toolbar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 249
    iput-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    .line 250
    iput-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;

    .line 251
    iput-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;

    .line 253
    iput-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    .line 254
    iput-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;

    .line 255
    iput-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSuggestionsTask;

    .line 257
    iput-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    .line 259
    invoke-super {p0}, Lcom/samsung/android/settings/SecInstrumentedFragment;->onDestroy()V

    .line 248
    return-void
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 521
    invoke-super {p0}, Lcom/samsung/android/settings/SecInstrumentedFragment;->onDetach()V

    .line 522
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mSearchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 523
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->detailValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->detailValue:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 525
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->detailValue:Ljava/lang/String;

    .line 526
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mode:I

    .line 519
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 462
    sput-boolean v4, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mIsRunningSearchFragment:Z

    .line 463
    invoke-virtual {p0}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 464
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    if-eqz v2, :cond_0

    .line 465
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 467
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/settings/SecInstrumentedFragment;->onPause()V

    .line 468
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 469
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isShown()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 474
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 475
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 476
    instance-of v2, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v2, :cond_2

    .line 477
    check-cast v0, Lcom/android/settings/SettingsActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->registerAssistant()V

    .line 485
    :cond_2
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Search"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 460
    return-void

    .line 470
    :cond_3
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 5
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 632
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->getFilteredQueryString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, "newQuery":Ljava/lang/String;
    iput-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mQuery:Ljava/lang/String;

    .line 635
    iget-object v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->detailValue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_0

    .line 636
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->detailValue:Ljava/lang/String;

    .line 638
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->updateDetailValue(Ljava/lang/String;)V

    .line 640
    iget-object v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 641
    invoke-direct {p0}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->cancelLoading()V

    .line 642
    iput-boolean v3, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mShowResults:Z

    .line 643
    invoke-direct {p0, v3}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->setResultsVisibility(Z)V

    .line 644
    invoke-direct {p0}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->updateSuggestions()V

    .line 651
    :goto_0
    return v4

    .line 646
    :cond_1
    iput-boolean v4, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mShowResults:Z

    .line 647
    invoke-direct {p0, v3}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->setSuggestionsVisibility(Z)V

    .line 648
    invoke-direct {p0}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->updateSearchResults()V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 571
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->getFilteredQueryString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mQuery:Ljava/lang/String;

    .line 572
    iput-boolean v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mShowResults:Z

    .line 573
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->setSuggestionsVisibility(Z)V

    .line 574
    invoke-direct {p0}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->updateSearchResults()V

    .line 576
    iput-boolean v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->isQuerySubmitted:Z

    .line 578
    return v1
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 425
    invoke-super {p0}, Lcom/samsung/android/settings/SecInstrumentedFragment;->onResume()V

    .line 426
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mIsRunningSearchFragment:Z

    .line 427
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 428
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    const v3, 0x1020484

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 430
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mShowResults:Z

    if-nez v2, :cond_3

    .line 431
    invoke-virtual {p0}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->showSomeSuggestions()V

    .line 441
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 442
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 443
    instance-of v2, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v2, :cond_2

    .line 444
    check-cast v0, Lcom/android/settings/SettingsActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->unregisterAssistant()V

    .line 456
    :cond_2
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v5, "Search"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 424
    return-void

    .line 433
    :cond_3
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;

    if-eqz v2, :cond_1

    .line 434
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->getCount()I

    move-result v1

    .line 435
    .local v1, "cnt":I
    if-nez v1, :cond_1

    .line 436
    invoke-direct {p0}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->updateSearchResults()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 234
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecInstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 236
    const-string/jumbo v0, ":settings:show_results"

    iget-boolean v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mShowResults:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 233
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 241
    invoke-super {p0}, Lcom/samsung/android/settings/SecInstrumentedFragment;->onStop()V

    .line 243
    invoke-direct {p0}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->clearSuggestions()V

    .line 244
    invoke-direct {p0}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->clearResults()V

    .line 240
    return-void
.end method

.method public setSearchView(Landroid/widget/SearchView;)V
    .locals 0
    .param p1, "searchView"    # Landroid/widget/SearchView;

    .prologue
    .line 531
    iput-object p1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    .line 530
    return-void
.end method

.method public showSomeSuggestions()V
    .locals 1

    .prologue
    .line 655
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->setResultsVisibility(Z)V

    .line 656
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mQuery:Ljava/lang/String;

    .line 657
    invoke-direct {p0}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->updateSuggestions()V

    .line 654
    return-void
.end method
