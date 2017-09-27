.class Lmf/org/apache/html/dom/HTMLCollectionImpl;
.super Ljava/lang/Object;
.source "HTMLCollectionImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLCollection;
.implements Ljava/io/Serializable;


# static fields
.field static final ANCHOR:S = 0x1s

.field static final APPLET:S = 0x4s

.field static final AREA:S = -0x1s

.field static final CELL:S = -0x3s

.field static final ELEMENT:S = 0x8s

.field static final FORM:S = 0x2s

.field static final IMAGE:S = 0x3s

.field static final LINK:S = 0x5s

.field static final OPTION:S = 0x6s

.field static final ROW:S = 0x7s

.field static final TBODY:S = -0x2s

.field private static final serialVersionUID:J = 0x7e74c2dc1a6b3c3aL


# instance fields
.field private _lookingFor:S

.field private _topLevel:Lmf/org/w3c/dom/Element;


# direct methods
.method constructor <init>(Lmf/org/w3c/dom/html/HTMLElement;S)V
    .locals 2

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    if-eqz p1, :cond_0

    .line 170
    iput-object p1, p0, Lmf/org/apache/html/dom/HTMLCollectionImpl;->_topLevel:Lmf/org/w3c/dom/Element;

    .line 171
    int-to-short v0, p2

    iput-short v0, p0, Lmf/org/apache/html/dom/HTMLCollectionImpl;->_lookingFor:S

    .line 172
    return-void

    .line 169
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "HTM011 Argument \'topLevel\' is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getLength(Lmf/org/w3c/dom/Element;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 236
    monitor-enter p1

    .line 241
    :try_start_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v2

    move v3, v1

    .line 242
    :goto_0
    if-eqz v2, :cond_3

    .line 248
    instance-of v1, v2, Lmf/org/w3c/dom/Element;

    if-nez v1, :cond_0

    move v1, v3

    .line 255
    :goto_1
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    move v3, v1

    goto :goto_0

    .line 250
    :cond_0
    move-object v0, v2

    check-cast v0, Lmf/org/w3c/dom/Element;

    move-object v1, v0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Lmf/org/apache/html/dom/HTMLCollectionImpl;->collectionMatch(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 252
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLCollectionImpl;->recurse()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v3

    goto :goto_1

    .line 251
    :cond_1
    add-int/lit8 v3, v3, 0x1

    move v1, v3

    goto :goto_1

    .line 253
    :cond_2
    move-object v0, v2

    check-cast v0, Lmf/org/w3c/dom/Element;

    move-object v1, v0

    invoke-direct {p0, v1}, Lmf/org/apache/html/dom/HTMLCollectionImpl;->getLength(Lmf/org/w3c/dom/Element;)I

    move-result v1

    add-int/2addr v3, v1

    move v1, v3

    goto :goto_1

    .line 236
    :cond_3
    monitor-exit p1

    .line 258
    return v3

    .line 236
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private item(Lmf/org/w3c/dom/Element;Lmf/org/apache/html/dom/CollectionIndex;)Lmf/org/w3c/dom/Node;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 283
    monitor-enter p1

    .line 288
    :try_start_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 289
    :goto_0
    if-eqz v2, :cond_4

    .line 295
    instance-of v1, v2, Lmf/org/w3c/dom/Element;

    if-nez v1, :cond_1

    .line 309
    :cond_0
    :goto_1
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_0

    .line 297
    :cond_1
    move-object v0, v2

    check-cast v0, Lmf/org/w3c/dom/Element;

    move-object v1, v0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lmf/org/apache/html/dom/HTMLCollectionImpl;->collectionMatch(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 302
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLCollectionImpl;->recurse()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    move-object v0, v2

    check-cast v0, Lmf/org/w3c/dom/Element;

    move-object v1, v0

    invoke-direct {p0, v1, p2}, Lmf/org/apache/html/dom/HTMLCollectionImpl;->item(Lmf/org/w3c/dom/Element;Lmf/org/apache/html/dom/CollectionIndex;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 305
    if-eqz v1, :cond_0

    .line 306
    monitor-exit p1

    return-object v1

    .line 299
    :cond_2
    invoke-virtual {p2}, Lmf/org/apache/html/dom/CollectionIndex;->isZero()Z

    move-result v1

    if-nez v1, :cond_3

    .line 301
    invoke-virtual {p2}, Lmf/org/apache/html/dom/CollectionIndex;->decrement()V

    goto :goto_1

    .line 283
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 300
    :cond_3
    :try_start_1
    monitor-exit p1

    return-object v2

    .line 283
    :cond_4
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    return-object v4
.end method

.method private namedItem(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .locals 3

    .prologue
    .line 329
    monitor-enter p1

    .line 333
    :try_start_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 334
    :goto_0
    if-eqz v2, :cond_3

    .line 340
    instance-of v1, v2, Lmf/org/w3c/dom/Element;

    if-nez v1, :cond_1

    .line 351
    :cond_0
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_0

    .line 342
    :cond_1
    move-object v0, v2

    check-cast v0, Lmf/org/w3c/dom/Element;

    move-object v1, v0

    invoke-virtual {p0, v1, p2}, Lmf/org/apache/html/dom/HTMLCollectionImpl;->collectionMatch(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 344
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLCollectionImpl;->recurse()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    move-object v0, v2

    check-cast v0, Lmf/org/w3c/dom/Element;

    move-object v1, v0

    invoke-direct {p0, v1, p2}, Lmf/org/apache/html/dom/HTMLCollectionImpl;->namedItem(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 347
    if-eqz v1, :cond_0

    .line 348
    monitor-exit p1

    return-object v1

    .line 343
    :cond_2
    monitor-exit p1

    return-object v2

    .line 353
    :cond_3
    monitor-exit p1

    return-object v2

    :catchall_0
    move-exception v1

    .line 329
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected collectionMatch(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 387
    monitor-enter p1

    .line 394
    :try_start_0
    iget-short v2, p0, Lmf/org/apache/html/dom/HTMLCollectionImpl;->_lookingFor:S

    packed-switch v2, :pswitch_data_0

    .line 455
    :cond_0
    :goto_0
    :pswitch_0
    if-nez v0, :cond_6

    .line 387
    :cond_1
    :goto_1
    monitor-exit p1

    .line 465
    return v0

    .line 399
    :pswitch_1
    instance-of v2, p1, Lmf/org/w3c/dom/html/HTMLAnchorElement;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "name"

    .line 400
    invoke-interface {p1, v2}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 399
    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 404
    :pswitch_2
    instance-of v0, p1, Lmf/org/w3c/dom/html/HTMLFormElement;

    goto :goto_0

    .line 408
    :pswitch_3
    instance-of v0, p1, Lmf/org/w3c/dom/html/HTMLImageElement;

    goto :goto_0

    .line 414
    :pswitch_4
    instance-of v2, p1, Lmf/org/w3c/dom/html/HTMLAppletElement;

    if-eqz v2, :cond_3

    :cond_2
    :goto_2
    move v0, v1

    goto :goto_0

    .line 415
    :cond_3
    instance-of v2, p1, Lmf/org/w3c/dom/html/HTMLObjectElement;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "application/java"

    const-string/jumbo v3, "codetype"

    .line 416
    invoke-interface {p1, v3}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "classid"

    .line 417
    invoke-interface {p1, v2}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "java:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 421
    :pswitch_5
    instance-of v0, p1, Lmf/org/apache/html/dom/HTMLFormControl;

    goto :goto_0

    .line 425
    :pswitch_6
    instance-of v2, p1, Lmf/org/w3c/dom/html/HTMLAnchorElement;

    if-eqz v2, :cond_5

    :cond_4
    const-string/jumbo v2, "href"

    .line 427
    invoke-interface {p1, v2}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 425
    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 426
    :cond_5
    instance-of v2, p1, Lmf/org/w3c/dom/html/HTMLAreaElement;

    if-nez v2, :cond_4

    goto :goto_0

    .line 431
    :pswitch_7
    instance-of v0, p1, Lmf/org/w3c/dom/html/HTMLAreaElement;

    goto :goto_0

    .line 435
    :pswitch_8
    instance-of v0, p1, Lmf/org/w3c/dom/html/HTMLOptionElement;

    goto :goto_0

    .line 439
    :pswitch_9
    instance-of v0, p1, Lmf/org/w3c/dom/html/HTMLTableRowElement;

    goto :goto_0

    .line 443
    :pswitch_a
    instance-of v2, p1, Lmf/org/w3c/dom/html/HTMLTableSectionElement;

    if-eqz v2, :cond_0

    .line 444
    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "TBODY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 443
    goto :goto_0

    .line 448
    :pswitch_b
    instance-of v0, p1, Lmf/org/w3c/dom/html/HTMLTableCellElement;

    goto/16 :goto_0

    .line 455
    :cond_6
    if-eqz p2, :cond_1

    .line 459
    instance-of v0, p1, Lmf/org/w3c/dom/html/HTMLAnchorElement;

    if-nez v0, :cond_8

    :cond_7
    const-string/jumbo v0, "id"

    .line 462
    invoke-interface {p1, v0}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v0, "name"

    .line 460
    invoke-interface {p1, v0}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 461
    monitor-exit p1

    return v1

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 394
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_b
        :pswitch_a
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method public final getLength()I
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLCollectionImpl;->_topLevel:Lmf/org/w3c/dom/Element;

    invoke-direct {p0, v0}, Lmf/org/apache/html/dom/HTMLCollectionImpl;->getLength(Lmf/org/w3c/dom/Element;)I

    move-result v0

    return v0
.end method

.method public final item(I)Lmf/org/w3c/dom/Node;
    .locals 2

    .prologue
    .line 198
    if-ltz p1, :cond_0

    .line 201
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLCollectionImpl;->_topLevel:Lmf/org/w3c/dom/Element;

    new-instance v1, Lmf/org/apache/html/dom/CollectionIndex;

    invoke-direct {v1, p1}, Lmf/org/apache/html/dom/CollectionIndex;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lmf/org/apache/html/dom/HTMLCollectionImpl;->item(Lmf/org/w3c/dom/Element;Lmf/org/apache/html/dom/CollectionIndex;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0

    .line 199
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "HTM012 Argument \'index\' is negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final namedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .locals 2

    .prologue
    .line 216
    if-eqz p1, :cond_0

    .line 219
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLCollectionImpl;->_topLevel:Lmf/org/w3c/dom/Element;

    invoke-direct {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLCollectionImpl;->namedItem(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0

    .line 217
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "HTM013 Argument \'name\' is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected recurse()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 368
    iget-short v0, p0, Lmf/org/apache/html/dom/HTMLCollectionImpl;->_lookingFor:S

    if-gtz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
