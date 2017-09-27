.class public Lcom/samsung/android/settings/wifi/ListAnimationController;
.super Ljava/lang/Object;
.source "ListAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/ListAnimationController$1;,
        Lcom/samsung/android/settings/wifi/ListAnimationController$2;,
        Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private mAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

.field private final mAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

.field private mAddOtherNetworkItem:Landroid/view/View;

.field private mApListAdapter:Lcom/samsung/android/settings/wifi/AccessPointListAdapter;

.field private final mContext:Landroid/content/Context;

.field private mEmptyView:Landroid/widget/TextView;

.field private mHeadersCount:I

.field private mInManageNetwork:Z

.field private mInPickerDialog:Z

.field private mInsetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settingslib/wifi/AccessPointPreference;",
            ">;"
        }
    .end annotation
.end field

.field private final mItemClickListner:Landroid/widget/AdapterView$OnItemClickListener;

.field private mLastDeletePositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastInsertPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settingslib/wifi/AccessPointPreference;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutResId:I

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

.field private mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/wifi/ListAnimationController;)Lcom/samsung/android/animation/SemAddDeleteListAnimator;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/wifi/ListAnimationController;)Lcom/samsung/android/settings/wifi/AccessPointListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListAdapter:Lcom/samsung/android/settings/wifi/AccessPointListAdapter;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/wifi/ListAnimationController;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mHeadersCount:I

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/wifi/ListAnimationController;)Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mListener:Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/wifi/ListAnimationController;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/wifi/ListAnimationController;)Lcom/android/settingslib/wifi/WifiTracker;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/ListAnimationController;Z)V
    .locals 0
    .param p1, "notifyDataSetChanged"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->addToAdapter(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/wifi/ListAnimationController;Z)V
    .locals 0
    .param p1, "notifyDataSetChanged"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->deleteFromAdapter(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->DBG:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const v0, 0x7f0402ef

    iput v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLayoutResId:I

    .line 56
    iput v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mHeadersCount:I

    .line 57
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mListView:Landroid/widget/ListView;

    .line 62
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    .line 63
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListAdapter:Lcom/samsung/android/settings/wifi/AccessPointListAdapter;

    .line 65
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInManageNetwork:Z

    .line 66
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInPickerDialog:Z

    .line 67
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInsetList:Ljava/util/List;

    .line 69
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastInsertPositions:Ljava/util/ArrayList;

    .line 70
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    .line 166
    new-instance v0, Lcom/samsung/android/settings/wifi/ListAnimationController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/ListAnimationController$1;-><init>(Lcom/samsung/android/settings/wifi/ListAnimationController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mItemClickListner:Landroid/widget/AdapterView$OnItemClickListener;

    .line 472
    new-instance v0, Lcom/samsung/android/settings/wifi/ListAnimationController$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/ListAnimationController$2;-><init>(Lcom/samsung/android/settings/wifi/ListAnimationController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    .line 74
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mContext:Landroid/content/Context;

    .line 73
    return-void
.end method

.method private addToAdapter(Z)V
    .locals 7
    .param p1, "notifyDataSetChanged"    # Z

    .prologue
    .line 456
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastInsertPositions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 457
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastInsertPositions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mHeadersCount:I

    sub-int v2, v4, v5

    .line 458
    .local v2, "insertpos":I
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInsetList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    .line 459
    .local v3, "preference":Lcom/samsung/android/settingslib/wifi/AccessPointPreference;
    sget-boolean v4, Lcom/samsung/android/settings/wifi/ListAnimationController;->DBG:Z

    if-eqz v4, :cond_0

    .line 460
    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v0

    .line 461
    .local v0, "ap":Lcom/android/settingslib/wifi/AccessPoint;
    const-string/jumbo v5, "WifiSettings.VI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addToAdapter insertpos:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 462
    const-string/jumbo v6, ", ssid:"

    .line 461
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 462
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v4

    .line 461
    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    .end local v0    # "ap":Lcom/android/settingslib/wifi/AccessPoint;
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListAdapter:Lcom/samsung/android/settings/wifi/AccessPointListAdapter;

    invoke-virtual {v4, v3, v2}, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->insert(Lcom/samsung/android/settingslib/wifi/AccessPointPreference;I)V

    .line 456
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 462
    .restart local v0    # "ap":Lcom/android/settingslib/wifi/AccessPoint;
    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 467
    .end local v0    # "ap":Lcom/android/settingslib/wifi/AccessPoint;
    .end local v2    # "insertpos":I
    .end local v3    # "preference":Lcom/samsung/android/settingslib/wifi/AccessPointPreference;
    :cond_2
    if-eqz p1, :cond_3

    .line 468
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListAdapter:Lcom/samsung/android/settings/wifi/AccessPointListAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->notifyDataSetChanged()V

    .line 455
    :cond_3
    return-void
.end method

.method private deleteFromAdapter(Z)V
    .locals 10
    .param p1, "notifyDataSetChanged"    # Z

    .prologue
    const/4 v7, 0x0

    .line 433
    sget-boolean v6, Lcom/samsung/android/settings/wifi/ListAnimationController;->DBG:Z

    if-eqz v6, :cond_1

    .line 434
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "index$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 435
    .local v2, "index":I
    iget v6, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mHeadersCount:I

    sub-int v4, v2, v6

    .line 436
    .local v4, "position":I
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v4, v6, :cond_3

    .line 437
    const-string/jumbo v6, "WifiSettings.VI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "deleteFromAdapter index problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " listSize:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    .end local v2    # "index":I
    .end local v3    # "index$iterator":Ljava/util/Iterator;
    .end local v4    # "position":I
    :cond_1
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListAdapter:Lcom/samsung/android/settings/wifi/AccessPointListAdapter;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    iget v6, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mHeadersCount:I

    if-nez v6, :cond_5

    move v6, v7

    :goto_1
    invoke-virtual {v8, v9, v6}, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->remove(Ljava/util/ArrayList;Z)V

    .line 451
    if-eqz p1, :cond_2

    .line 452
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListAdapter:Lcom/samsung/android/settings/wifi/AccessPointListAdapter;

    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->notifyDataSetChanged()V

    .line 432
    :cond_2
    return-void

    .line 440
    .restart local v2    # "index":I
    .restart local v3    # "index$iterator":Ljava/util/Iterator;
    .restart local v4    # "position":I
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/preference/Preference;

    .line 441
    .local v5, "preference":Landroid/preference/Preference;
    instance-of v6, v5, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    if-eqz v6, :cond_0

    move-object v1, v5

    .line 442
    check-cast v1, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    .line 443
    .local v1, "apPref":Lcom/samsung/android/settingslib/wifi/AccessPointPreference;
    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v0

    .line 444
    .local v0, "ap":Lcom/android/settingslib/wifi/AccessPoint;
    const-string/jumbo v8, "WifiSettings.VI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "deleteFromAdapter index:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 445
    const-string/jumbo v9, ", ssid:"

    .line 444
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 445
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v6

    .line 444
    :goto_2
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 445
    :cond_4
    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 449
    .end local v0    # "ap":Lcom/android/settingslib/wifi/AccessPoint;
    .end local v1    # "apPref":Lcom/samsung/android/settingslib/wifi/AccessPointPreference;
    .end local v2    # "index":I
    .end local v3    # "index$iterator":Ljava/util/Iterator;
    .end local v4    # "position":I
    .end local v5    # "preference":Landroid/preference/Preference;
    :cond_5
    const/4 v6, 0x1

    goto :goto_1
.end method

.method private getDeleteItemPositionsFrom(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settingslib/wifi/AccessPointPreference;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "newList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settingslib/wifi/AccessPointPreference;>;"
    const/4 v10, 0x0

    .line 330
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    if-nez v9, :cond_0

    .line 331
    return-object v10

    .line 333
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v8, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v0, v9, :cond_8

    .line 335
    const/4 v1, 0x0

    .line 336
    .local v1, "isExist":Z
    const/4 v5, 0x0

    .line 337
    .local v5, "position":I
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    .line 338
    .local v4, "oldpref":Lcom/samsung/android/settingslib/wifi/AccessPointPreference;
    invoke-virtual {v4}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v3

    .line 339
    .local v3, "oldAp":Lcom/android/settingslib/wifi/AccessPoint;
    if-nez v3, :cond_4

    .line 340
    sget-boolean v9, Lcom/samsung/android/settings/wifi/ListAnimationController;->DBG:Z

    if-eqz v9, :cond_1

    const-string/jumbo v9, "WifiSettings.VI"

    const-string/jumbo v10, "emptyview"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_1
    :goto_1
    if-nez v1, :cond_3

    .line 368
    iget v9, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mHeadersCount:I

    add-int v5, v0, v9

    .line 369
    sget-boolean v9, Lcom/samsung/android/settings/wifi/ListAnimationController;->DBG:Z

    if-eqz v9, :cond_2

    if-eqz v3, :cond_2

    const-string/jumbo v9, "WifiSettings.VI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ssid of deleting : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", index : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 341
    :cond_4
    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->isChanged()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 342
    sget-boolean v9, Lcom/samsung/android/settings/wifi/ListAnimationController;->DBG:Z

    if-eqz v9, :cond_1

    const-string/jumbo v9, "WifiSettings.VI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Accesspoint is changed : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 344
    :cond_5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "preference$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    .line 345
    .local v6, "preference":Lcom/samsung/android/settingslib/wifi/AccessPointPreference;
    invoke-virtual {v6}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v2

    .line 346
    .local v2, "newAp":Lcom/android/settingslib/wifi/AccessPoint;
    invoke-virtual {v2, v3}, Lcom/android/settingslib/wifi/AccessPoint;->compareTo(Lcom/android/settingslib/wifi/AccessPoint;)I

    move-result v9

    if-nez v9, :cond_6

    .line 347
    invoke-virtual {v2, v3}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Lcom/android/settingslib/wifi/AccessPoint;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 348
    sget-boolean v9, Lcom/samsung/android/settings/wifi/ListAnimationController;->DBG:Z

    if-eqz v9, :cond_7

    const-string/jumbo v9, "WifiSettings.VI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isExist Old:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", New:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_7
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 373
    .end local v1    # "isExist":Z
    .end local v2    # "newAp":Lcom/android/settingslib/wifi/AccessPoint;
    .end local v3    # "oldAp":Lcom/android/settingslib/wifi/AccessPoint;
    .end local v4    # "oldpref":Lcom/samsung/android/settingslib/wifi/AccessPointPreference;
    .end local v5    # "position":I
    .end local v6    # "preference":Lcom/samsung/android/settingslib/wifi/AccessPointPreference;
    .end local v7    # "preference$iterator":Ljava/util/Iterator;
    :cond_8
    return-object v8
.end method

.method private getInsertItemPositionsFrom(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settingslib/wifi/AccessPointPreference;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, "newList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settingslib/wifi/AccessPointPreference;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    move-object/from16 v23, v0

    if-nez v23, :cond_0

    .line 223
    const/16 v23, 0x0

    return-object v23

    .line 225
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInsetList:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->clear()V

    .line 226
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v20, "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v21, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/settingslib/wifi/AccessPointPreference;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v18, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "newpreference$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_10

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    .line 230
    .local v13, "newpreference":Lcom/samsung/android/settingslib/wifi/AccessPointPreference;
    const/4 v10, 0x0

    .line 231
    .local v10, "isExist":Z
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mHeadersCount:I

    .line 232
    .local v7, "index":I
    invoke-virtual {v13}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v12

    .line 233
    .local v12, "newAp":Lcom/android/settingslib/wifi/AccessPoint;
    invoke-virtual {v12}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    .line 234
    const/4 v10, 0x1

    .line 275
    :cond_2
    :goto_1
    if-nez v10, :cond_1

    .line 276
    sget-boolean v23, Lcom/samsung/android/settings/wifi/ListAnimationController;->DBG:Z

    if-eqz v23, :cond_3

    const-string/jumbo v23, "WifiSettings.VI"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "not in the old list ssid of inserting : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v12}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ", index : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_3
    if-gez v7, :cond_f

    .line 278
    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 279
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 236
    :cond_4
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v6, v0, :cond_2

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 238
    add-int/lit8 v7, v7, 0x1

    .line 236
    :cond_5
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 241
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v16

    .line 242
    .local v16, "oldAp":Lcom/android/settingslib/wifi/AccessPoint;
    if-eqz v16, :cond_5

    .line 243
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Lcom/android/settingslib/wifi/AccessPoint;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 244
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/settingslib/wifi/AccessPoint;->compareTo(Lcom/android/settingslib/wifi/AccessPoint;)I

    move-result v23

    if-nez v23, :cond_e

    .line 245
    const/4 v10, 0x1

    .line 246
    goto/16 :goto_1

    .line 248
    :cond_7
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/settingslib/wifi/AccessPoint;->compareTo(Lcom/android/settingslib/wifi/AccessPoint;)I

    move-result v23

    if-gez v23, :cond_e

    .line 249
    sget-boolean v23, Lcom/samsung/android/settings/wifi/ListAnimationController;->DBG:Z

    if-eqz v23, :cond_8

    const-string/jumbo v23, "WifiSettings.VI"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "insert compareTo Old:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v16 .. v16}, Lcom/android/settingslib/wifi/AccessPoint;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " , "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ", New:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v12}, Lcom/android/settingslib/wifi/AccessPoint;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_8
    invoke-virtual {v12}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v23

    if-eqz v23, :cond_a

    .line 251
    sget-boolean v23, Lcom/samsung/android/settings/wifi/ListAnimationController;->DBG:Z

    if-eqz v23, :cond_9

    const-string/jumbo v23, "WifiSettings.VI"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "New :"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v12}, Lcom/android/settingslib/wifi/AccessPoint;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " isactive "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v12}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_9
    const/16 v7, -0x3e7

    .line 254
    :cond_a
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v11, v0, :cond_2

    .line 255
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mHeadersCount:I

    move/from16 v23, v0

    add-int v22, v11, v23

    .line 256
    .local v22, "tempindex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 254
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 260
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v15

    .line 261
    .local v15, "oldAccesspoint":Lcom/android/settingslib/wifi/AccessPoint;
    invoke-virtual {v12, v15}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Lcom/android/settingslib/wifi/AccessPoint;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 262
    invoke-virtual {v12, v15}, Lcom/android/settingslib/wifi/AccessPoint;->compareTo(Lcom/android/settingslib/wifi/AccessPoint;)I

    move-result v23

    if-nez v23, :cond_b

    .line 263
    sget-boolean v23, Lcom/samsung/android/settings/wifi/ListAnimationController;->DBG:Z

    if-eqz v23, :cond_d

    const-string/jumbo v23, "WifiSettings.VI"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "insert isExist Old:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v15}, Lcom/android/settingslib/wifi/AccessPoint;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " , "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ", New:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v12}, Lcom/android/settingslib/wifi/AccessPoint;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 271
    .end local v11    # "j":I
    .end local v15    # "oldAccesspoint":Lcom/android/settingslib/wifi/AccessPoint;
    .end local v22    # "tempindex":I
    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 281
    .end local v6    # "i":I
    .end local v16    # "oldAp":Lcom/android/settingslib/wifi/AccessPoint;
    :cond_f
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 286
    .end local v7    # "index":I
    .end local v10    # "isExist":Z
    .end local v12    # "newAp":Lcom/android/settingslib/wifi/AccessPoint;
    .end local v13    # "newpreference":Lcom/samsung/android/settingslib/wifi/AccessPointPreference;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 287
    const/16 v19, 0x0

    .line 288
    .local v19, "sameposition":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_5
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v6, v0, :cond_18

    .line 289
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 290
    .restart local v7    # "index":I
    const/16 v17, 0x0

    .line 291
    .local v17, "pos":I
    const/4 v3, 0x0

    .local v3, "del":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v3, v0, :cond_11

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v23

    if-le v7, v0, :cond_11

    .line 293
    add-int/lit8 v17, v17, 0x1

    .line 291
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 296
    :cond_11
    add-int v23, v7, v6

    sub-int v23, v23, v17

    sub-int v9, v23, v19

    .line 297
    .local v9, "insertpos":I
    if-gez v9, :cond_12

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mHeadersCount:I

    .line 298
    :cond_12
    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    .line 299
    .restart local v13    # "newpreference":Lcom/samsung/android/settingslib/wifi/AccessPointPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_17

    .line 300
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mHeadersCount:I

    move/from16 v23, v0

    sub-int v5, v9, v23

    .line 301
    .local v5, "delposfromadapter":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v4

    .line 302
    .local v4, "deleteap":Lcom/android/settingslib/wifi/AccessPoint;
    invoke-virtual {v13}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v8

    .line 303
    .local v8, "insertap":Lcom/android/settingslib/wifi/AccessPoint;
    if-eqz v4, :cond_17

    if-eqz v8, :cond_17

    .line 304
    sget-boolean v23, Lcom/samsung/android/settings/wifi/ListAnimationController;->DBG:Z

    if-eqz v23, :cond_13

    const-string/jumbo v23, "WifiSettings.VI"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "contains  insertpos : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ", deleteap : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ", insertap : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v8}, Lcom/android/settingslib/wifi/AccessPoint;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_13
    invoke-virtual {v8, v4}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Lcom/android/settingslib/wifi/AccessPoint;)Z

    move-result v23

    if-eqz v23, :cond_17

    .line 306
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v11, v0, :cond_15

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 308
    sget-boolean v23, Lcom/samsung/android/settings/wifi/ListAnimationController;->DBG:Z

    if-eqz v23, :cond_14

    const-string/jumbo v23, "WifiSettings.VI"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "contains  insertpos : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ", del : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ", delposfromadapter : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_14
    if-ne v3, v9, :cond_16

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListAdapter:Lcom/samsung/android/settings/wifi/AccessPointListAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->removeAt(I)V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListAdapter:Lcom/samsung/android/settings/wifi/AccessPointListAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13, v5}, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->insert(Lcom/samsung/android/settingslib/wifi/AccessPointPreference;I)V

    .line 314
    add-int/lit8 v19, v19, 0x1

    .line 288
    .end local v4    # "deleteap":Lcom/android/settingslib/wifi/AccessPoint;
    .end local v5    # "delposfromadapter":I
    .end local v8    # "insertap":Lcom/android/settingslib/wifi/AccessPoint;
    .end local v11    # "j":I
    :cond_15
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    .line 306
    .restart local v4    # "deleteap":Lcom/android/settingslib/wifi/AccessPoint;
    .restart local v5    # "delposfromadapter":I
    .restart local v8    # "insertap":Lcom/android/settingslib/wifi/AccessPoint;
    .restart local v11    # "j":I
    :cond_16
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_7

    .line 323
    .end local v4    # "deleteap":Lcom/android/settingslib/wifi/AccessPoint;
    .end local v5    # "delposfromadapter":I
    .end local v8    # "insertap":Lcom/android/settingslib/wifi/AccessPoint;
    .end local v11    # "j":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInsetList:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 326
    .end local v3    # "del":I
    .end local v7    # "index":I
    .end local v9    # "insertpos":I
    .end local v13    # "newpreference":Lcom/samsung/android/settingslib/wifi/AccessPointPreference;
    .end local v17    # "pos":I
    :cond_18
    return-object v18
.end method

.method public static isSupported(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 80
    const-string/jumbo v1, "sem_wifi_vi_effect_for_settings"

    .line 79
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 81
    return v2

    .line 84
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;ZZ)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .param p4, "inmanagenetwork"    # Z
    .param p5, "inpickerdialog"    # Z

    .prologue
    .line 88
    const v1, 0x7f0402ef

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 89
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f1106b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mListView:Landroid/widget/ListView;

    .line 90
    const v1, 0x7f1106b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 91
    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mEmptyView:Landroid/widget/TextView;

    .line 92
    iput-boolean p4, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInManageNetwork:Z

    .line 93
    iput-boolean p5, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInPickerDialog:Z

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->initController()V

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->initEmptyView()V

    .line 96
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListAdapter:Lcom/samsung/android/settings/wifi/AccessPointListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public initController()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 100
    new-instance v1, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListAdapter:Lcom/samsung/android/settings/wifi/AccessPointListAdapter;

    .line 101
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_3

    .line 102
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListAdapter:Lcom/samsung/android/settings/wifi/AccessPointListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mItemClickListner:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 104
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mContext:Landroid/content/Context;

    .line 105
    const-string/jumbo v2, "layout_inflater"

    .line 104
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 106
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInManageNetwork:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInPickerDialog:Z

    if-eqz v1, :cond_2

    .line 123
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-array v2, v5, [I

    const v3, 0x7f0d015b

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorScheme([I)V

    .line 125
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v2, Lcom/samsung/android/settings/wifi/ListAnimationController$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/ListAnimationController$4;-><init>(Lcom/samsung/android/settings/wifi/ListAnimationController;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 138
    :cond_1
    new-instance v1, Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mListView:Landroid/widget/ListView;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    .line 139
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    const/16 v2, 0x258

    invoke-virtual {v1, v2}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->setTransitionDuration(I)V

    .line 140
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->setOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;)V

    .line 99
    return-void

    .line 107
    .restart local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mListView:Landroid/widget/ListView;

    const v2, 0x7f04031e

    invoke-virtual {v0, v2, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddOtherNetworkItem:Landroid/view/View;

    .line 108
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddOtherNetworkItem:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v5}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 109
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddOtherNetworkItem:Landroid/view/View;

    new-instance v2, Lcom/samsung/android/settings/wifi/ListAnimationController$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/ListAnimationController$3;-><init>(Lcom/samsung/android/settings/wifi/ListAnimationController;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 121
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_3
    const-string/jumbo v1, "WifiSettings.VI"

    const-string/jumbo v2, "TouchWiz ListView is null, can\'t set adapter"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected initEmptyView()V
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mEmptyView:Landroid/widget/TextView;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 159
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mEmptyView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 160
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mEmptyView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mContext:Landroid/content/Context;

    const v2, 0x7f0f026e

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 161
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mEmptyView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d012a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 162
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 157
    :cond_0
    return-void
.end method

.method public removeAll()V
    .locals 2

    .prologue
    .line 427
    sget-boolean v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiSettings.VI"

    const-string/jumbo v1, "removeAll"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListAdapter:Lcom/samsung/android/settings/wifi/AccessPointListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->removeAll()V

    .line 429
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListAdapter:Lcom/samsung/android/settings/wifi/AccessPointListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->notifyDataSetChanged()V

    .line 426
    return-void
.end method

.method public setEnableRefreshLayout(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 144
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 143
    :cond_0
    return-void
.end method

.method public setListener(Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mListener:Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

    .line 149
    return-void
.end method

.method public setWifiTracker(Lcom/android/settingslib/wifi/WifiTracker;)V
    .locals 0
    .param p1, "wifitracker"    # Lcom/android/settingslib/wifi/WifiTracker;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    .line 153
    return-void
.end method

.method public updateEmptyView()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 401
    sget-boolean v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiSettings.VI"

    const-string/jumbo v1, "updateEmptyView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_0
    const-string/jumbo v0, "WifiSettings.VI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEmptyView : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 404
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 400
    :goto_0
    return-void

    .line 410
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_3

    .line 411
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 414
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateWithAnimation(Ljava/util/List;Z)V
    .locals 3
    .param p2, "updatedScanResult"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settingslib/wifi/AccessPointPreference;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "newList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settingslib/wifi/AccessPointPreference;>;"
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->stopToUpdateAccessPoint()V

    .line 197
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mHeadersCount:I

    .line 198
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListAdapter:Lcom/samsung/android/settings/wifi/AccessPointListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->getAccessPointList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    .line 199
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 206
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getDeleteItemPositionsFrom(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    .line 207
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getInsertItemPositionsFrom(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastInsertPositions:Ljava/util/ArrayList;

    .line 208
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastInsertPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 209
    const-string/jumbo v0, "WifiSettings.VI"

    const-string/jumbo v1, "animation is not start,"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListAdapter:Lcom/samsung/android/settings/wifi/AccessPointListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->notifyDataSetChanged()V

    .line 211
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->resumeToUpdateAccessPoint()V

    .line 212
    return-void

    .line 200
    :cond_0
    const-string/jumbo v0, "WifiSettings.VI"

    const-string/jumbo v1, "setAccessPointList"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListAdapter:Lcom/samsung/android/settings/wifi/AccessPointListAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->setAccessPointList(Ljava/util/List;)V

    .line 202
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->resumeToUpdateAccessPoint()V

    .line 203
    return-void

    .line 215
    :cond_1
    const-string/jumbo v0, "WifiSettings.VI"

    const-string/jumbo v1, "start animation "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastInsertPositions:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 217
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastInsertPositions:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->setInsertDelete(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 195
    return-void
.end method
