.class Lcom/android/systemui/statusbar/car/CarNavigationBarController;
.super Ljava/lang/Object;
.source "CarNavigationBarController.java"


# instance fields
.field private mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

.field private mContext:Landroid/content/Context;

.field private mCurrentFacetIndex:I

.field private mFacetCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFacetCategoryMap:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFacetHasMultipleAppsCache:Landroid/util/SparseBooleanArray;

.field private mFacetPackageMap:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFacetPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mLongPressIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mNavBar:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

.field private mNavButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/car/CarNavigationButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/car/CarNavigationBarController;I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->onFacetClicked(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/car/CarNavigationBarController;I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->onFacetLongClicked(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/car/CarNavigationBarView;Lcom/android/systemui/statusbar/phone/ActivityStarter;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "navBar"    # Lcom/android/systemui/statusbar/car/CarNavigationBarView;
    .param p3, "activityStarter"    # Lcom/android/systemui/statusbar/phone/ActivityStarter;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetCategories:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetPackages:Ljava/util/List;

    .line 64
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    .line 63
    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetCategoryMap:Landroid/support/v4/util/SimpleArrayMap;

    .line 66
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetPackageMap:Landroid/support/v4/util/SimpleArrayMap;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mNavButtons:Ljava/util/List;

    .line 74
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetHasMultipleAppsCache:Landroid/util/SparseBooleanArray;

    .line 79
    iput-object p1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mNavBar:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    .line 81
    iput-object p3, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->bind()V

    .line 78
    return-void
.end method

.method private bind()V
    .locals 15

    .prologue
    .line 116
    iget-object v12, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 117
    .local v11, "r":Landroid/content/res/Resources;
    const v12, 0x7f11002c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 118
    .local v7, "icons":Landroid/content/res/TypedArray;
    const v12, 0x7f11002d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 120
    .local v8, "intents":Landroid/content/res/TypedArray;
    const v12, 0x7f11002e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 121
    .local v9, "longpressIntents":Landroid/content/res/TypedArray;
    const v12, 0x7f11002f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 123
    .local v3, "facetPackageNames":Landroid/content/res/TypedArray;
    const v12, 0x7f110030

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 125
    .local v2, "facetCategories":Landroid/content/res/TypedArray;
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->length()I

    move-result v12

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->length()I

    move-result v13

    if-ne v12, v13, :cond_0

    .line 126
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->length()I

    move-result v12

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->length()I

    move-result v13

    if-eq v12, v13, :cond_1

    .line 129
    :cond_0
    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "car_facet array lengths do not match"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 127
    :cond_1
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->length()I

    move-result v12

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v13

    if-ne v12, v13, :cond_0

    .line 128
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->length()I

    move-result v12

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v13

    if-ne v12, v13, :cond_0

    .line 132
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->length()I

    move-result v12

    invoke-direct {p0, v12}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->createEmptyIntentList(I)Ljava/util/List;

    move-result-object v12

    iput-object v12, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mIntents:Ljava/util/List;

    .line 133
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->length()I

    move-result v12

    invoke-direct {p0, v12}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->createEmptyIntentList(I)Ljava/util/List;

    move-result-object v12

    iput-object v12, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mLongPressIntents:Ljava/util/List;

    .line 135
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->length()I

    move-result v12

    if-ge v5, v12, :cond_4

    .line 136
    invoke-virtual {v7, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 138
    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v12, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mIntents:Ljava/util/List;

    .line 139
    invoke-virtual {v8, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v13, v14}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v13

    .line 138
    invoke-interface {v12, v5, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-virtual {v9, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 142
    .local v10, "longpressUri":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v4, 0x0

    .line 143
    .local v4, "hasLongpress":Z
    :goto_1
    if-eqz v4, :cond_2

    .line 144
    iget-object v12, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mLongPressIntents:Ljava/util/List;

    .line 145
    const/4 v13, 0x1

    invoke-static {v10, v13}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v13

    .line 144
    invoke-interface {v12, v5, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_2
    invoke-direct {p0, v6, v5, v4}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->createNavButton(Landroid/graphics/drawable/Drawable;IZ)Lcom/android/systemui/statusbar/car/CarNavigationButton;

    move-result-object v0

    .line 149
    .local v0, "button":Lcom/android/systemui/statusbar/car/CarNavigationButton;
    iget-object v12, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mNavButtons:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v12, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mNavBar:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    .line 151
    invoke-direct {p0, v6, v5, v4}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->createNavButton(Landroid/graphics/drawable/Drawable;IZ)Lcom/android/systemui/statusbar/car/CarNavigationButton;

    move-result-object v13

    .line 150
    invoke-virtual {v12, v0, v13}, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->addButton(Lcom/android/systemui/statusbar/car/CarNavigationButton;Lcom/android/systemui/statusbar/car/CarNavigationButton;)V

    .line 154
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 155
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 153
    invoke-direct {p0, v5, v12, v13}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->initFacetFilterMaps(I[Ljava/lang/String;[Ljava/lang/String;)V

    .line 156
    iget-object v12, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetHasMultipleAppsCache:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->facetHasMultiplePackages(I)Z

    move-result v13

    invoke-virtual {v12, v5, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 142
    .end local v0    # "button":Lcom/android/systemui/statusbar/car/CarNavigationButton;
    .end local v4    # "hasLongpress":Z
    :cond_3
    const/4 v4, 0x1

    .restart local v4    # "hasLongpress":Z
    goto :goto_1

    .line 157
    .end local v4    # "hasLongpress":Z
    .end local v10    # "longpressUri":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Ljava/net/URISyntaxException;
    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "Malformed intent uri"

    invoke-direct {v12, v13, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 114
    .end local v1    # "e":Ljava/net/URISyntaxException;
    .end local v6    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_4
    return-void
.end method

.method private createEmptyIntentList(I)Ljava/util/List;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    new-array v0, p1, [Landroid/content/Intent;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private createNavButton(Landroid/graphics/drawable/Drawable;IZ)Lcom/android/systemui/statusbar/car/CarNavigationButton;
    .locals 6
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "id"    # I
    .param p3, "longClickEnabled"    # Z

    .prologue
    const/4 v5, 0x0

    .line 255
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mContext:Landroid/content/Context;

    .line 256
    const v3, 0x7f040028

    const/4 v4, 0x0

    .line 255
    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/car/CarNavigationButton;

    .line 257
    .local v0, "button":Lcom/android/systemui/statusbar/car/CarNavigationButton;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/car/CarNavigationButton;->setResources(Landroid/graphics/drawable/Drawable;)V

    .line 259
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, -0x1

    invoke-direct {v1, v5, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 260
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/car/CarNavigationButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    new-instance v2, Lcom/android/systemui/statusbar/car/CarNavigationBarController$1;

    invoke-direct {v2, p0, p2}, Lcom/android/systemui/statusbar/car/CarNavigationBarController$1;-><init>(Lcom/android/systemui/statusbar/car/CarNavigationBarController;I)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/car/CarNavigationButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    if-eqz p3, :cond_0

    .line 270
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/car/CarNavigationButton;->setLongClickable(Z)V

    .line 271
    new-instance v2, Lcom/android/systemui/statusbar/car/CarNavigationBarController$2;

    invoke-direct {v2, p0, p2}, Lcom/android/systemui/statusbar/car/CarNavigationBarController$2;-><init>(Lcom/android/systemui/statusbar/car/CarNavigationBarController;I)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/car/CarNavigationButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 282
    :goto_0
    return-object v0

    .line 279
    :cond_0
    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/car/CarNavigationButton;->setLongClickable(Z)V

    goto :goto_0
.end method

.method private facetHasMultiplePackages(I)Z
    .locals 10
    .param p1, "index"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 204
    iget-object v7, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 207
    .local v6, "pm":Landroid/content/pm/PackageManager;
    iget-object v7, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetPackages:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 208
    .local v5, "packages":[Ljava/lang/String;
    array-length v7, v5

    if-le v7, v8, :cond_2

    .line 209
    const/4 v2, 0x0

    .line 210
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v5

    if-ge v3, v7, :cond_2

    .line 211
    aget-object v7, v5, v3

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_0

    move v7, v8

    :goto_1
    add-int/2addr v2, v7

    .line 212
    if-le v2, v8, :cond_1

    .line 213
    return v8

    :cond_0
    move v7, v9

    .line 211
    goto :goto_1

    .line 210
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 220
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetCategories:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 222
    .local v0, "categories":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 223
    .restart local v2    # "count":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    array-length v7, v0

    if-ge v3, v7, :cond_4

    .line 224
    aget-object v1, v0, v3

    .line 225
    .local v1, "category":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 226
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "android.intent.action.MAIN"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    invoke-virtual {v4, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    invoke-virtual {v6, v4, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v2, v7

    .line 229
    if-le v2, v8, :cond_3

    .line 230
    return v8

    .line 223
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 233
    .end local v1    # "category":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_4
    return v9
.end method

.method private getPackageCategory(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 176
    iget-object v8, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 177
    .local v6, "pm":Landroid/content/pm/PackageManager;
    iget-object v8, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetCategories:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    .line 179
    .local v7, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v7, :cond_2

    .line 180
    iget-object v8, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetCategories:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 181
    .local v0, "categories":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v8, v0

    if-ge v4, v8, :cond_1

    .line 182
    aget-object v1, v0, v4

    .line 183
    .local v1, "category":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 184
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string/jumbo v8, "android.intent.action.MAIN"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    invoke-virtual {v6, v3, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 188
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 191
    iget-object v9, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetPackageMap:Landroid/support/v4/util/SimpleArrayMap;

    iget-object v8, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetCategoryMap:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v8, v1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v9, p1, v8}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    return-object v1

    .line 181
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 179
    .end local v1    # "category":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    .end local v0    # "categories":[Ljava/lang/String;
    .end local v4    # "j":I
    :cond_2
    const/4 v8, 0x0

    return-object v8
.end method

.method private initFacetFilterMaps(I[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "categories"    # [Ljava/lang/String;

    .prologue
    .line 164
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetCategories:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetCategoryMap:Landroid/support/v4/util/SimpleArrayMap;

    aget-object v2, p3, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetPackages:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetPackageMap:Landroid/support/v4/util/SimpleArrayMap;

    aget-object v2, p2, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 163
    :cond_1
    return-void
.end method

.method private onFacetClicked(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 292
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mIntents:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 293
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, "packageName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 296
    return-void

    .line 299
    :cond_0
    const-string/jumbo v3, "categories"

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetCategories:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    const-string/jumbo v3, "packages"

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetPackages:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    const-string/jumbo v2, "filter_id"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    const-string/jumbo v3, "launch_picker"

    iget v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mCurrentFacetIndex:I

    if-ne p1, v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 309
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->setCurrentFacet(I)V

    .line 310
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->startActivity(Landroid/content/Intent;)V

    .line 291
    return-void

    .line 307
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onFacetLongClicked(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->setCurrentFacet(I)V

    .line 315
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mLongPressIntents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->startActivity(Landroid/content/Intent;)V

    .line 313
    return-void
.end method

.method private setCurrentFacet(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 237
    iget v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mCurrentFacetIndex:I

    if-ne p1, v0, :cond_0

    .line 238
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mNavButtons:Ljava/util/List;

    iget v1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mCurrentFacetIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mNavButtons:Ljava/util/List;

    iget v1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mCurrentFacetIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/car/CarNavigationButton;

    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/statusbar/car/CarNavigationButton;->setSelected(ZZ)V

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mNavButtons:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mNavButtons:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/car/CarNavigationButton;

    .line 248
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetHasMultipleAppsCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    .line 247
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/car/CarNavigationButton;->setSelected(ZZ)V

    .line 250
    :cond_2
    iput p1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mCurrentFacetIndex:I

    .line 236
    return-void
.end method

.method private startActivity(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 285
    :cond_0
    return-void
.end method


# virtual methods
.method public onPackageChange(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetPackageMap:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v2, p1}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetPackageMap:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v2, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 102
    .local v1, "index":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetHasMultipleAppsCache:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->facetHasMultiplePackages(I)Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 104
    return-void

    .line 107
    .end local v1    # "index":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->getPackageCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "category":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetCategoryMap:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetCategoryMap:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 110
    .restart local v1    # "index":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetHasMultipleAppsCache:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->facetHasMultiplePackages(I)Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 99
    .end local v1    # "index":I
    :cond_1
    return-void
.end method

.method public taskChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetPackageMap:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetPackageMap:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->setCurrentFacet(I)V

    .line 93
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->getPackageCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "category":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 95
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetCategoryMap:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->setCurrentFacet(I)V

    .line 85
    :cond_1
    return-void
.end method
