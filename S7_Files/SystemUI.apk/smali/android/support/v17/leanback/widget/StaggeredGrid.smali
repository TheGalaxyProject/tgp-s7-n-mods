.class abstract Landroid/support/v17/leanback/widget/StaggeredGrid;
.super Landroid/support/v17/leanback/widget/Grid;
.source "StaggeredGrid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    }
.end annotation


# instance fields
.field protected mFirstIndex:I

.field protected mLocations:Landroid/support/v4/util/CircularArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/CircularArray",
            "<",
            "Landroid/support/v17/leanback/widget/StaggeredGrid$Location;",
            ">;"
        }
    .end annotation
.end field

.field protected mPendingItem:Ljava/lang/Object;

.field protected mPendingItemSize:I

.field private mTmpItem:[Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Grid;-><init>()V

    .line 66
    new-instance v0, Landroid/support/v4/util/CircularArray;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/support/v4/util/CircularArray;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    .line 72
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    .line 41
    return-void
.end method

.method private calculateOffsetAfterLastItem(I)I
    .locals 7
    .param p1, "row"    # I

    .prologue
    .line 206
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v0

    .line 207
    .local v0, "cachedIndex":I
    const/4 v1, 0x0

    .line 208
    .local v1, "foundCachedItemInSameRow":Z
    :goto_0
    iget v5, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    if-lt v0, v5, :cond_0

    .line 209
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    .line 210
    .local v3, "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    iget v5, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v5, p1, :cond_2

    .line 211
    const/4 v1, 0x1

    .line 216
    .end local v3    # "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    :cond_0
    if-nez v1, :cond_1

    .line 217
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v0

    .line 222
    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->isReversedFlow()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v5

    iget v5, v5, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    neg-int v5, v5

    iget v6, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mMargin:I

    sub-int v4, v5, v6

    .line 224
    .local v4, "offset":I
    :goto_1
    add-int/lit8 v2, v0, 0x1

    .local v2, "i":I
    :goto_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v5

    if-gt v2, v5, :cond_4

    .line 225
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v5

    iget v5, v5, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    sub-int/2addr v4, v5

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 214
    .end local v2    # "i":I
    .end local v4    # "offset":I
    .restart local v3    # "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 223
    .end local v3    # "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    :cond_3
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v5

    iget v5, v5, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    iget v6, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mMargin:I

    add-int v4, v5, v6

    .restart local v4    # "offset":I
    goto :goto_1

    .line 227
    .restart local v2    # "i":I
    :cond_4
    return v4
.end method


# virtual methods
.method protected final appendVisbleItemsWithCache(IZ)Z
    .locals 12
    .param p1, "toLimit"    # I
    .param p2, "oneColumnMode"    # Z

    .prologue
    const v11, 0x7fffffff

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 299
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 300
    return v9

    .line 302
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v6

    .line 305
    .local v6, "count":I
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    if-ltz v0, :cond_5

    .line 307
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    add-int/lit8 v2, v0, 0x1

    .line 308
    .local v2, "itemIndex":I
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v5

    .line 322
    .local v5, "edge":I
    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v7

    .line 323
    .local v7, "lastIndex":I
    :goto_0
    if-ge v2, v6, :cond_c

    if-gt v2, v7, :cond_c

    .line 324
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v8

    .line 325
    .local v8, "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    if-eq v5, v11, :cond_2

    .line 326
    iget v0, v8, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    add-int/2addr v5, v0

    .line 328
    :cond_2
    iget v4, v8, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    .line 329
    .local v4, "rowIndex":I
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v0, v2, v10, v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;)I

    move-result v3

    .line 330
    .local v3, "size":I
    iget v0, v8, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    if-eq v3, v0, :cond_3

    .line 331
    iput v3, v8, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    .line 332
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    sub-int v1, v7, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/util/CircularArray;->removeFromEnd(I)V

    .line 333
    move v7, v2

    .line 335
    :cond_3
    iput v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    .line 336
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    if-gez v0, :cond_4

    .line 337
    iput v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    .line 339
    :cond_4
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aget-object v1, v1, v9

    invoke-interface/range {v0 .. v5}, Landroid/support/v17/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    .line 340
    if-nez p2, :cond_9

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StaggeredGrid;->checkAppendOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 341
    return v10

    .line 311
    .end local v2    # "itemIndex":I
    .end local v3    # "size":I
    .end local v4    # "rowIndex":I
    .end local v5    # "edge":I
    .end local v7    # "lastIndex":I
    .end local v8    # "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    :cond_5
    const v5, 0x7fffffff

    .line 312
    .restart local v5    # "edge":I
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mStartIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    iget v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mStartIndex:I

    .line 313
    .restart local v2    # "itemIndex":I
    :goto_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-gt v2, v0, :cond_6

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getFirstIndex()I

    move-result v0

    if-ge v2, v0, :cond_8

    .line 315
    :cond_6
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v0}, Landroid/support/v4/util/CircularArray;->clear()V

    .line 316
    return v9

    .line 312
    .end local v2    # "itemIndex":I
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "itemIndex":I
    goto :goto_1

    .line 317
    :cond_8
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v0

    if-le v2, v0, :cond_1

    .line 319
    return v9

    .line 343
    .restart local v3    # "size":I
    .restart local v4    # "rowIndex":I
    .restart local v7    # "lastIndex":I
    .restart local v8    # "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    :cond_9
    if-ne v5, v11, :cond_a

    .line 344
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0, v2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v5

    .line 347
    :cond_a
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mNumRows:I

    add-int/lit8 v0, v0, -0x1

    if-ne v4, v0, :cond_b

    .line 348
    if-eqz p2, :cond_b

    .line 349
    return v10

    .line 323
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 353
    .end local v3    # "size":I
    .end local v4    # "rowIndex":I
    .end local v8    # "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    :cond_c
    return v9
.end method

.method protected final appendVisibleItemToRow(III)I
    .locals 8
    .param p1, "itemIndex"    # I
    .param p2, "rowIndex"    # I
    .param p3, "location"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 368
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    if-ltz v0, :cond_1

    .line 369
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    add-int/lit8 v2, p1, -0x1

    if-eq v0, v2, :cond_1

    .line 371
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 374
    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    if-gez v0, :cond_3

    .line 377
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_2

    .line 378
    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/StaggeredGrid;->calculateOffsetAfterLastItem(I)I

    move-result v7

    .line 385
    .local v7, "offset":I
    :goto_0
    new-instance v6, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    invoke-direct {v6, p2, v7, v3}, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;-><init>(III)V

    .line 386
    .local v6, "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v0, v6}, Landroid/support/v4/util/CircularArray;->addLast(Ljava/lang/Object;)V

    .line 388
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 389
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItemSize:I

    iput v0, v6, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    .line 390
    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    .line 391
    .local v1, "item":Ljava/lang/Object;
    iput-object v5, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    .line 396
    :goto_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 397
    iput p1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    iput p1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    iput p1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    .line 405
    :goto_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v3, v6, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    move v2, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/support/v17/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    .line 406
    iget v0, v6, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    return v0

    .line 380
    .end local v1    # "item":Ljava/lang/Object;
    .end local v6    # "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    .end local v7    # "offset":I
    :cond_2
    const/4 v7, 0x0

    .restart local v7    # "offset":I
    goto :goto_0

    .line 383
    .end local v7    # "offset":I
    :cond_3
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    invoke-interface {v0, v2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    sub-int v7, p3, v0

    .restart local v7    # "offset":I
    goto :goto_0

    .line 393
    .restart local v6    # "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    :cond_4
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v0, p1, v4, v2}, Landroid/support/v17/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;)I

    move-result v0

    iput v0, v6, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    .line 394
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aget-object v1, v0, v3

    .restart local v1    # "item":Ljava/lang/Object;
    goto :goto_1

    .line 399
    :cond_5
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    if-gez v0, :cond_6

    .line 400
    iput p1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    iput p1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    goto :goto_2

    .line 402
    :cond_6
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    goto :goto_2
.end method

.method protected final appendVisibleItems(IZ)Z
    .locals 4
    .param p1, "toLimit"    # I
    .param p2, "oneColumnMode"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 276
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 277
    return v2

    .line 279
    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StaggeredGrid;->checkAppendOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    return v2

    .line 283
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/StaggeredGrid;->appendVisbleItemsWithCache(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 284
    const/4 v0, 0x1

    .line 288
    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aput-object v3, v1, v2

    .line 289
    iput-object v3, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    .line 284
    return v0

    .line 286
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/StaggeredGrid;->appendVisibleItemsWithoutCache(IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 288
    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aput-object v3, v1, v2

    .line 289
    iput-object v3, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    .line 286
    return v0

    .line 287
    :catchall_0
    move-exception v0

    .line 288
    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aput-object v3, v1, v2

    .line 289
    iput-object v3, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    .line 287
    throw v0
.end method

.method protected abstract appendVisibleItemsWithoutCache(IZ)Z
.end method

.method public final getFirstIndex()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    return v0
.end method

.method public final getItemPositionsInRows(II)[Landroid/support/v4/util/CircularIntArray;
    .locals 4
    .param p1, "startPos"    # I
    .param p2, "endPos"    # I

    .prologue
    .line 411
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mNumRows:I

    if-ge v0, v2, :cond_0

    .line 412
    iget-object v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/support/v4/util/CircularIntArray;->clear()V

    .line 411
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 414
    :cond_0
    if-ltz p1, :cond_2

    .line 415
    move v0, p1

    :goto_1
    if-gt v0, p2, :cond_2

    .line 416
    iget-object v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    iget v3, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    aget-object v1, v2, v3

    .line 417
    .local v1, "row":Landroid/support/v4/util/CircularIntArray;
    invoke-virtual {v1}, Landroid/support/v4/util/CircularIntArray;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Landroid/support/v4/util/CircularIntArray;->getLast()I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_1

    .line 419
    invoke-virtual {v1}, Landroid/support/v4/util/CircularIntArray;->popLast()I

    .line 420
    invoke-virtual {v1, v0}, Landroid/support/v4/util/CircularIntArray;->addLast(I)V

    .line 415
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 423
    :cond_1
    invoke-virtual {v1, v0}, Landroid/support/v4/util/CircularIntArray;->addLast(I)V

    .line 424
    invoke-virtual {v1, v0}, Landroid/support/v4/util/CircularIntArray;->addLast(I)V

    goto :goto_2

    .line 428
    .end local v1    # "row":Landroid/support/v4/util/CircularIntArray;
    :cond_2
    iget-object v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    return-object v2
.end method

.method public final getLastIndex()I
    .locals 2

    .prologue
    .line 90
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v1}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public bridge synthetic getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v0

    return-object v0
.end method

.method public final getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 102
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x0

    return-object v0

    .line 105
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    iget v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/CircularArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    return-object v0
.end method

.method public invalidateItemsAfter(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 433
    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/Grid;->invalidateItemsAfter(I)V

    .line 434
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/CircularArray;->removeFromEnd(I)V

    .line 435
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 436
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    .line 432
    :cond_0
    return-void
.end method

.method protected final prependVisbleItemsWithCache(IZ)Z
    .locals 13
    .param p1, "toLimit"    # I
    .param p2, "oneColumnMode"    # Z

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 142
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 143
    return v11

    .line 145
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v6

    .line 146
    .local v6, "count":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getFirstIndex()I

    move-result v8

    .line 150
    .local v8, "firstIndex":I
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    if-ltz v0, :cond_2

    .line 152
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v7

    .line 153
    .local v7, "edge":I
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v0

    iget v10, v0, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    .line 154
    .local v10, "offset":I
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    add-int/lit8 v2, v0, -0x1

    .line 169
    .local v2, "itemIndex":I
    :cond_1
    :goto_0
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    if-lt v2, v0, :cond_a

    .line 170
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v9

    .line 171
    .local v9, "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    iget v4, v9, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    .line 172
    .local v4, "rowIndex":I
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v0, v2, v11, v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;)I

    move-result v3

    .line 173
    .local v3, "size":I
    iget v0, v9, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    if-eq v3, v0, :cond_6

    .line 174
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    add-int/lit8 v1, v2, 0x1

    iget v5, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/support/v4/util/CircularArray;->removeFromStart(I)V

    .line 175
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    iput v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    .line 177
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aget-object v0, v0, v11

    iput-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    .line 178
    iput v3, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItemSize:I

    .line 179
    return v11

    .line 157
    .end local v2    # "itemIndex":I
    .end local v3    # "size":I
    .end local v4    # "rowIndex":I
    .end local v7    # "edge":I
    .end local v9    # "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    .end local v10    # "offset":I
    :cond_2
    const v7, 0x7fffffff

    .line 158
    .restart local v7    # "edge":I
    const/4 v10, 0x0

    .line 159
    .restart local v10    # "offset":I
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mStartIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mStartIndex:I

    .line 160
    .restart local v2    # "itemIndex":I
    :goto_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v0

    if-gt v2, v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getFirstIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_5

    .line 162
    :cond_3
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v0}, Landroid/support/v4/util/CircularArray;->clear()V

    .line 163
    return v11

    .line 159
    .end local v2    # "itemIndex":I
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "itemIndex":I
    goto :goto_1

    .line 164
    :cond_5
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getFirstIndex()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 166
    return v11

    .line 181
    .restart local v3    # "size":I
    .restart local v4    # "rowIndex":I
    .restart local v9    # "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    :cond_6
    iput v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    .line 182
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    if-gez v0, :cond_7

    .line 183
    iput v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    .line 185
    :cond_7
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aget-object v1, v1, v11

    sub-int v5, v7, v10

    invoke-interface/range {v0 .. v5}, Landroid/support/v17/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    .line 186
    if-nez p2, :cond_8

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StaggeredGrid;->checkPrependOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 187
    return v12

    .line 189
    :cond_8
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0, v2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v7

    .line 190
    iget v10, v9, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    .line 192
    if-nez v4, :cond_9

    .line 193
    if-eqz p2, :cond_9

    .line 194
    return v12

    .line 169
    :cond_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 198
    .end local v3    # "size":I
    .end local v4    # "rowIndex":I
    .end local v9    # "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    :cond_a
    return v11
.end method

.method protected final prependVisibleItemToRow(III)I
    .locals 9
    .param p1, "itemIndex"    # I
    .param p2, "rowIndex"    # I
    .param p3, "edge"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 243
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    if-ltz v0, :cond_1

    .line 244
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getFirstIndex()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    add-int/lit8 v2, p1, 0x1

    if-eq v0, v2, :cond_1

    .line 246
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 249
    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    if-ltz v0, :cond_4

    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v8

    .line 250
    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    invoke-interface {v0, v2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v7

    .line 251
    .local v7, "oldFirstEdge":I
    new-instance v6, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    invoke-direct {v6, p2, v3, v3}, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;-><init>(III)V

    .line 252
    .local v6, "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v0, v6}, Landroid/support/v4/util/CircularArray;->addFirst(Ljava/lang/Object;)V

    .line 254
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 255
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItemSize:I

    iput v0, v6, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    .line 256
    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    .line 257
    .local v1, "item":Ljava/lang/Object;
    iput-object v4, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    .line 262
    :goto_1
    iput p1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    iput p1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    .line 263
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    if-gez v0, :cond_2

    .line 264
    iput p1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    .line 266
    :cond_2
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mReversedFlow:Z

    if-nez v0, :cond_6

    iget v0, v6, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    sub-int v5, p3, v0

    .line 267
    .local v5, "thisEdge":I
    :goto_2
    if-eqz v8, :cond_3

    .line 268
    sub-int v0, v7, v5

    iput v0, v8, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    .line 270
    :cond_3
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v3, v6, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    move v2, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/support/v17/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    .line 271
    iget v0, v6, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    return v0

    .line 249
    .end local v1    # "item":Ljava/lang/Object;
    .end local v5    # "thisEdge":I
    .end local v6    # "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    .end local v7    # "oldFirstEdge":I
    :cond_4
    const/4 v8, 0x0

    .local v8, "oldFirstLoc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    goto :goto_0

    .line 259
    .end local v8    # "oldFirstLoc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    .restart local v6    # "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    .restart local v7    # "oldFirstEdge":I
    :cond_5
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v0, p1, v3, v2}, Landroid/support/v17/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;)I

    move-result v0

    iput v0, v6, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    .line 260
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aget-object v1, v0, v3

    .restart local v1    # "item":Ljava/lang/Object;
    goto :goto_1

    .line 266
    :cond_6
    iget v0, v6, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    add-int v5, p3, v0

    .restart local v5    # "thisEdge":I
    goto :goto_2
.end method

.method protected final prependVisibleItems(IZ)Z
    .locals 4
    .param p1, "toLimit"    # I
    .param p2, "oneColumnMode"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 121
    return v2

    .line 123
    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StaggeredGrid;->checkPrependOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    return v2

    .line 127
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/StaggeredGrid;->prependVisbleItemsWithCache(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    const/4 v0, 0x1

    .line 132
    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aput-object v3, v1, v2

    .line 133
    iput-object v3, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    .line 128
    return v0

    .line 130
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/StaggeredGrid;->prependVisibleItemsWithoutCache(IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 132
    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aput-object v3, v1, v2

    .line 133
    iput-object v3, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    .line 130
    return v0

    .line 131
    :catchall_0
    move-exception v0

    .line 132
    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aput-object v3, v1, v2

    .line 133
    iput-object v3, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    .line 131
    throw v0
.end method

.method protected abstract prependVisibleItemsWithoutCache(IZ)Z
.end method
