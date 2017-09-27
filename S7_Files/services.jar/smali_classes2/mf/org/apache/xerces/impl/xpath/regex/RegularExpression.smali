.class public Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
.super Ljava/lang/Object;
.source "RegularExpression.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;,
        Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;,
        Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;,
        Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;,
        Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;,
        Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;
    }
.end annotation


# static fields
.field static final CARRIAGE_RETURN:I = 0xd

.field static final DEBUG:Z = false

.field static final EXTENDED_COMMENT:I = 0x10

.field static final IGNORE_CASE:I = 0x2

.field static final LINE_FEED:I = 0xa

.field static final LINE_SEPARATOR:I = 0x2028

.field static final MULTIPLE_LINES:I = 0x8

.field static final PARAGRAPH_SEPARATOR:I = 0x2029

.field static final PROHIBIT_FIXED_STRING_OPTIMIZATION:I = 0x100

.field static final PROHIBIT_HEAD_CHARACTER_OPTIMIZATION:I = 0x80

.field static final SINGLE_LINE:I = 0x4

.field static final SPECIAL_COMMA:I = 0x400

.field static final UNICODE_WORD_BOUNDARY:I = 0x40

.field static final USE_UNICODE_CATEGORY:I = 0x20

.field private static final WT_IGNORE:I = 0x0

.field private static final WT_LETTER:I = 0x1

.field private static final WT_OTHER:I = 0x2

.field static final XMLSCHEMA_MODE:I = 0x200

.field private static final serialVersionUID:J = 0x56a1d011fd4e4bc1L


# instance fields
.field transient context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

.field transient firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

.field transient fixedString:Ljava/lang/String;

.field transient fixedStringOnly:Z

.field transient fixedStringOptions:I

.field transient fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

.field hasBackReferences:Z

.field transient minlength:I

.field nofparen:I

.field transient numberOfClosures:I

.field transient operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

.field options:I

.field regex:Ljava/lang/String;

.field tokentree:Lmf/org/apache/xerces/impl/xpath/regex/Token;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2241
    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2242
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1735
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->hasBackReferences:Z

    .line 1738
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    .line 1740
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    .line 1741
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    .line 1743
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    .line 1745
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    .line 1746
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOnly:Z

    .line 2252
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->setPattern(Ljava/lang/String;Ljava/lang/String;)V

    .line 2253
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1735
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->hasBackReferences:Z

    .line 1738
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    .line 1740
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    .line 1741
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    .line 1743
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    .line 1745
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    .line 1746
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOnly:Z

    .line 2263
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->setPattern(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    .line 2264
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/xpath/regex/Token;IZI)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1735
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->hasBackReferences:Z

    .line 1738
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    .line 1740
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    .line 1741
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    .line 1743
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    .line 1745
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    .line 1746
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOnly:Z

    .line 2267
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->regex:Ljava/lang/String;

    .line 2268
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->tokentree:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    .line 2269
    iput p3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    .line 2270
    iput p5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    .line 2271
    iput-boolean p4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->hasBackReferences:Z

    .line 2272
    return-void
.end method

.method private compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;
    .locals 10

    .prologue
    const/16 v9, 0x9

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 509
    iget v3, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    packed-switch v3, :pswitch_data_0

    .line 654
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown token type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 511
    :pswitch_1
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createDot()Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v0

    .line 512
    iput-object p2, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object p2, v0

    .line 656
    :cond_0
    :goto_0
    :pswitch_2
    return-object p2

    .line 516
    :pswitch_3
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChar()I

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createChar(I)Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;

    move-result-object v0

    .line 517
    iput-object p2, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object p2, v0

    .line 518
    goto :goto_0

    .line 521
    :pswitch_4
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChar()I

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createAnchor(I)Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;

    move-result-object v0

    .line 522
    iput-object p2, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object p2, v0

    .line 523
    goto :goto_0

    .line 527
    :pswitch_5
    invoke-static {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createRange(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Op$RangeOp;

    move-result-object v0

    .line 528
    iput-object p2, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object p2, v0

    .line 529
    goto :goto_0

    .line 533
    :pswitch_6
    if-eqz p3, :cond_1

    .line 538
    :goto_1
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 539
    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v1

    invoke-direct {p0, v1, p2, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object p2

    .line 538
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 534
    :cond_1
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v1

    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 535
    invoke-virtual {p1, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v2

    invoke-direct {p0, v2, p2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object p2

    goto :goto_2

    .line 545
    :pswitch_7
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v1

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createUnion(I)Lmf/org/apache/xerces/impl/xpath/regex/Op$UnionOp;

    move-result-object v1

    .line 546
    :goto_3
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 547
    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Op$UnionOp;->addElement(Lmf/org/apache/xerces/impl/xpath/regex/Op;)V

    .line 546
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    move-object p2, v1

    .line 550
    goto :goto_0

    .line 554
    :pswitch_8
    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v7

    .line 555
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getMin()I

    move-result v8

    .line 556
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getMax()I

    move-result v1

    .line 557
    if-gez v8, :cond_5

    .line 564
    :cond_3
    if-gtz v8, :cond_6

    :cond_4
    move v6, v1

    .line 566
    :goto_4
    if-gtz v6, :cond_7

    .line 577
    iget v1, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-eq v1, v9, :cond_a

    .line 580
    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->numberOfClosures:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->numberOfClosures:I

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createClosure(I)Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;

    move-result-object v1

    .line 582
    :goto_5
    iput-object p2, v1, Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    .line 583
    invoke-direct {p0, v7, v1, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;->setChild(Lmf/org/apache/xerces/impl/xpath/regex/Op;)V

    move-object p2, v1

    .line 586
    :goto_6
    if-lez v8, :cond_0

    .line 587
    :goto_7
    if-ge v0, v8, :cond_0

    .line 588
    invoke-direct {p0, v7, p2, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object p2

    .line 587
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 557
    :cond_5
    if-ne v8, v1, :cond_3

    .line 559
    :goto_8
    if-ge v0, v8, :cond_0

    .line 560
    invoke-direct {p0, v7, p2, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object p2

    .line 559
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 564
    :cond_6
    if-lez v1, :cond_4

    .line 565
    sub-int/2addr v1, v8

    move v6, v1

    goto :goto_4

    :cond_7
    move v4, v0

    move-object v3, p2

    .line 569
    :goto_9
    if-ge v4, v6, :cond_9

    .line 570
    iget v1, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-eq v1, v9, :cond_8

    move v1, v0

    :goto_a
    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createQuestion(Z)Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;

    move-result-object v5

    .line 571
    iput-object p2, v5, Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    .line 572
    invoke-direct {p0, v7, v3, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v1

    invoke-virtual {v5, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;->setChild(Lmf/org/apache/xerces/impl/xpath/regex/Op;)V

    .line 569
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move-object v3, v5

    goto :goto_9

    :cond_8
    move v1, v2

    .line 570
    goto :goto_a

    :cond_9
    move-object p2, v3

    .line 575
    goto :goto_6

    .line 578
    :cond_a
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createNonGreedyClosure()Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;

    move-result-object v1

    goto :goto_5

    .line 598
    :pswitch_9
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createString(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xpath/regex/Op$StringOp;

    move-result-object v0

    .line 599
    iput-object p2, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object p2, v0

    .line 600
    goto/16 :goto_0

    .line 603
    :pswitch_a
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getReferenceNumber()I

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createBackReference(I)Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;

    move-result-object v0

    .line 604
    iput-object p2, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object p2, v0

    .line 605
    goto/16 :goto_0

    .line 608
    :pswitch_b
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getParenNumber()I

    move-result v1

    if-eqz v1, :cond_b

    .line 610
    if-nez p3, :cond_c

    .line 615
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getParenNumber()I

    move-result v1

    neg-int v1, v1

    invoke-static {v1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createCapture(ILmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;

    move-result-object v1

    .line 616
    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    invoke-direct {p0, v0, v1, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v0

    .line 617
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getParenNumber()I

    move-result v1

    invoke-static {v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createCapture(ILmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;

    move-result-object p2

    goto/16 :goto_0

    .line 609
    :cond_b
    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object p2

    goto/16 :goto_0

    .line 611
    :cond_c
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getParenNumber()I

    move-result v1

    invoke-static {v1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createCapture(ILmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;

    move-result-object v1

    .line 612
    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    invoke-direct {p0, v0, v1, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v0

    .line 613
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getParenNumber()I

    move-result v1

    neg-int v1, v1

    invoke-static {v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createCapture(ILmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;

    move-result-object p2

    goto/16 :goto_0

    :pswitch_c
    const/16 v2, 0x14

    .line 622
    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v3

    invoke-direct {p0, v3, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v0

    invoke-static {v2, p2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createLook(ILmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;

    move-result-object p2

    goto/16 :goto_0

    :pswitch_d
    const/16 v2, 0x15

    .line 625
    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v3

    invoke-direct {p0, v3, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v0

    invoke-static {v2, p2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createLook(ILmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;

    move-result-object p2

    goto/16 :goto_0

    :pswitch_e
    const/16 v3, 0x16

    .line 628
    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v0

    invoke-static {v3, p2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createLook(ILmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;

    move-result-object p2

    goto/16 :goto_0

    :pswitch_f
    const/16 v3, 0x17

    .line 631
    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v0

    invoke-static {v3, p2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createLook(ILmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;

    move-result-object p2

    goto/16 :goto_0

    .line 635
    :pswitch_10
    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    invoke-direct {p0, v0, v1, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v0

    invoke-static {p2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createIndependent(Lmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;

    move-result-object p2

    goto/16 :goto_0

    .line 639
    :pswitch_11
    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    invoke-direct {p0, v0, v1, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v1

    move-object v0, p1

    .line 640
    check-cast v0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;->getOptions()I

    move-result v0

    .line 641
    check-cast p1, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;->getOptionsMask()I

    move-result v2

    .line 639
    invoke-static {p2, v1, v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createModifier(Lmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/Op;II)Lmf/org/apache/xerces/impl/xpath/regex/Op$ModifierOp;

    move-result-object p2

    goto/16 :goto_0

    .line 645
    :pswitch_12
    check-cast p1, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;

    .line 646
    iget v2, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;->refNumber:I

    .line 647
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;->condition:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-eqz v0, :cond_e

    iget-object v0, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;->condition:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-direct {p0, v0, v1, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v0

    .line 648
    :goto_b
    iget-object v3, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;->yes:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-direct {p0, v3, p2, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v3

    .line 649
    iget-object v4, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;->no:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-eqz v4, :cond_d

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;->no:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-direct {p0, v1, p2, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v1

    .line 650
    :cond_d
    invoke-static {p2, v2, v0, v3, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createCondition(Lmf/org/apache/xerces/impl/xpath/regex/Op;ILmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;

    move-result-object p2

    goto/16 :goto_0

    :cond_e
    move-object v0, v1

    .line 647
    goto :goto_b

    .line 509
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_5
        :pswitch_b
        :pswitch_2
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_1
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method private declared-synchronized compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V
    .locals 2

    .prologue
    monitor-enter p0

    .line 498
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 500
    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->numberOfClosures:I

    const/4 v0, 0x0

    .line 501
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 502
    return-void

    :cond_0
    monitor-exit p0

    .line 499
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static final getPreviousWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I
    .locals 2

    .prologue
    .line 1534
    add-int/lit8 v1, p3, -0x1

    invoke-static {p0, p1, p2, v1, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result v0

    .line 1535
    :goto_0
    if-nez v0, :cond_0

    .line 1536
    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, p1, p2, v1, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result v0

    goto :goto_0

    .line 1537
    :cond_0
    return v0
.end method

.method private static final getWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I
    .locals 1

    .prologue
    .line 1542
    if-ge p3, p1, :cond_1

    :cond_0
    const/4 v0, 0x2

    return v0

    :cond_1
    if-ge p3, p2, :cond_0

    .line 1543
    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v0

    invoke-static {v0, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getWordType0(CI)I

    move-result v0

    return v0
.end method

.method private static final getWordType0(CI)I
    .locals 4

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x40

    .line 2371
    invoke-static {p1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2378
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 2408
    :pswitch_0
    return v0

    :cond_0
    const/16 v2, 0x20

    .line 2372
    invoke-static {p1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2375
    invoke-static {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isWordChar(I)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_0
    return v0

    :cond_1
    const-string/jumbo v2, "IsWord"

    .line 2373
    invoke-static {v2, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v2

    invoke-virtual {v2, p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->match(I)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 2375
    goto :goto_0

    .line 2388
    :pswitch_1
    return v1

    .line 2393
    :pswitch_2
    return v3

    .line 2396
    :pswitch_3
    packed-switch p0, :pswitch_data_1

    .line 2404
    return v3

    .line 2402
    :pswitch_4
    return v0

    .line 2378
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 2396
    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private static final isEOLChar(I)Z
    .locals 1

    .prologue
    const/16 v0, 0xa

    .line 2420
    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2028

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2029

    .line 2421
    if-eq p0, v0, :cond_0

    .line 2420
    const/4 v0, 0x0

    return v0
.end method

.method private static final isSet(II)Z
    .locals 1

    .prologue
    .line 2231
    and-int v0, p0, p1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static final isWordChar(I)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v0, 0x5f

    .line 2425
    if-eq p0, v0, :cond_0

    const/16 v0, 0x30

    .line 2426
    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    .line 2427
    if-gt p0, v0, :cond_2

    const/16 v0, 0x39

    .line 2428
    if-le p0, v0, :cond_3

    const/16 v0, 0x41

    .line 2429
    if-lt p0, v0, :cond_4

    const/16 v0, 0x5a

    .line 2430
    if-le p0, v0, :cond_5

    const/16 v0, 0x61

    .line 2431
    if-lt p0, v0, :cond_6

    .line 2432
    return v2

    .line 2425
    :cond_0
    return v2

    .line 2426
    :cond_1
    return v1

    .line 2427
    :cond_2
    return v1

    .line 2428
    :cond_3
    return v2

    .line 2429
    :cond_4
    return v1

    .line 2430
    :cond_5
    return v2

    .line 2431
    :cond_6
    return v1
.end method

.method private match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I
    .locals 19

    .prologue
    .line 1043
    move-object/from16 v0, p1

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->target:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;

    .line 1044
    new-instance v16, Ljava/util/Stack;

    invoke-direct/range {v16 .. v16}, Ljava/util/Stack;-><init>()V

    .line 1045
    new-instance v17, Lmf/org/apache/xerces/util/IntStack;

    invoke-direct/range {v17 .. v17}, Lmf/org/apache/xerces/util/IntStack;-><init>()V

    const/4 v1, 0x2

    .line 1046
    move/from16 v0, p5

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v8

    .line 1048
    const/4 v13, 0x0

    move/from16 v6, p5

    move/from16 v15, p4

    move/from16 v5, p3

    move-object/from16 v3, p2

    .line 1051
    :goto_0
    if-nez v3, :cond_1

    .line 1052
    :cond_0
    if-eqz v3, :cond_2

    const/4 v1, -0x1

    .line 1058
    :goto_1
    const/4 v4, 0x1

    move-object v7, v3

    move v3, v4

    move v4, v1

    move v1, v5

    move v5, v15

    .line 1317
    :goto_2
    if-eqz v3, :cond_3a

    .line 1319
    invoke-virtual/range {v16 .. v16}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1323
    invoke-virtual/range {v16 .. v16}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xpath/regex/Op;

    .line 1324
    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/util/IntStack;->pop()I

    move-result v7

    .line 1326
    iget v9, v1, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    move/from16 v18, v7

    move-object v7, v1

    move/from16 v1, v18

    goto :goto_2

    .line 1051
    :cond_1
    move-object/from16 v0, p1

    iget v1, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-gt v5, v1, :cond_0

    move-object/from16 v0, p1

    iget v1, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    if-lt v5, v1, :cond_0

    const/4 v14, -0x1

    .line 1063
    iget v1, v3, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    packed-switch v1, :pswitch_data_1

    .line 1312
    :pswitch_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unknown operation type: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v3, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const/16 v1, 0x200

    .line 1053
    invoke-static {v6, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    move v1, v5

    goto :goto_1

    :cond_4
    move-object/from16 v0, p1

    iget v1, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-eq v5, v1, :cond_3

    const/4 v1, -0x1

    goto :goto_1

    .line 1066
    :pswitch_2
    if-gtz v15, :cond_6

    add-int/lit8 v1, v5, -0x1

    .line 1067
    :goto_3
    move-object/from16 v0, p1

    iget v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-lt v1, v4, :cond_7

    .line 1068
    :cond_5
    const/4 v1, 0x1

    move v4, v14

    move-object v7, v3

    move v3, v1

    move v1, v5

    move v5, v15

    .line 1069
    goto :goto_2

    :cond_6
    move v1, v5

    .line 1066
    goto :goto_3

    .line 1067
    :cond_7
    if-ltz v1, :cond_5

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData()I

    move-result v4

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v1, v8}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matchChar(IIZ)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1071
    add-int/2addr v5, v15

    .line 1072
    iget-object v1, v3, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move v3, v13

    move v4, v14

    move-object v7, v1

    move v1, v5

    move v5, v15

    .line 1074
    goto/16 :goto_2

    .line 1078
    :pswitch_3
    if-gtz v15, :cond_9

    add-int/lit8 v1, v5, -0x1

    .line 1079
    :goto_4
    move-object/from16 v0, p1

    iget v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-lt v1, v4, :cond_a

    .line 1080
    :cond_8
    const/4 v1, 0x1

    move v4, v14

    move-object v7, v3

    move v3, v1

    move v1, v5

    move v5, v15

    .line 1081
    goto/16 :goto_2

    :cond_9
    move v1, v5

    .line 1078
    goto :goto_4

    .line 1079
    :cond_a
    if-ltz v1, :cond_8

    const/4 v4, 0x4

    .line 1083
    invoke-static {v6, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1089
    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v4

    .line 1090
    invoke-static {v4}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->isHighSurrogate(I)Z

    move-result v7

    if-nez v7, :cond_e

    :cond_b
    move/from16 v18, v4

    move v4, v1

    move/from16 v1, v18

    .line 1094
    :goto_5
    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isEOLChar(I)Z

    move-result v1

    if-nez v1, :cond_f

    move v1, v4

    .line 1099
    :cond_c
    :goto_6
    if-gtz v15, :cond_10

    .line 1100
    :goto_7
    iget-object v3, v3, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move v4, v14

    move v5, v15

    move-object v7, v3

    move v3, v13

    .line 1102
    goto/16 :goto_2

    .line 1084
    :cond_d
    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->isHighSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_c

    add-int v4, v1, v15

    if-ltz v4, :cond_c

    add-int v4, v1, v15

    move-object/from16 v0, p1

    iget v5, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ge v4, v5, :cond_c

    .line 1085
    add-int/2addr v1, v15

    goto :goto_6

    .line 1090
    :cond_e
    add-int v7, v1, v15

    if-ltz v7, :cond_b

    add-int v7, v1, v15

    move-object/from16 v0, p1

    iget v9, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ge v7, v9, :cond_b

    .line 1091
    add-int v7, v1, v15

    .line 1092
    invoke-virtual {v2, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v1

    invoke-static {v4, v1}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->composeFromSurrogates(II)I

    move-result v1

    move v4, v7

    goto :goto_5

    .line 1095
    :cond_f
    const/4 v1, 0x1

    move v4, v14

    move-object v7, v3

    move v3, v1

    move v1, v5

    move v5, v15

    .line 1096
    goto/16 :goto_2

    .line 1099
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1107
    :pswitch_4
    if-gtz v15, :cond_12

    add-int/lit8 v1, v5, -0x1

    .line 1108
    :goto_8
    move-object/from16 v0, p1

    iget v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-lt v1, v4, :cond_13

    .line 1109
    :cond_11
    const/4 v1, 0x1

    move v4, v14

    move-object v7, v3

    move v3, v1

    move v1, v5

    move v5, v15

    .line 1110
    goto/16 :goto_2

    :cond_12
    move v1, v5

    .line 1107
    goto :goto_8

    .line 1108
    :cond_13
    if-ltz v1, :cond_11

    .line 1112
    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v4

    .line 1113
    invoke-static {v4}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->isHighSurrogate(I)Z

    move-result v7

    if-nez v7, :cond_15

    :cond_14
    move/from16 v18, v4

    move v4, v1

    move/from16 v1, v18

    .line 1117
    :goto_9
    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getToken()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v7

    .line 1118
    invoke-virtual {v7, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->match(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1122
    if-gtz v15, :cond_17

    .line 1123
    :goto_a
    iget-object v1, v3, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move v3, v13

    move v5, v15

    move-object v7, v1

    move v1, v4

    move v4, v14

    .line 1125
    goto/16 :goto_2

    .line 1113
    :cond_15
    add-int v7, v1, v15

    move-object/from16 v0, p1

    iget v9, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ge v7, v9, :cond_14

    add-int v7, v1, v15

    if-ltz v7, :cond_14

    .line 1114
    add-int v7, v1, v15

    .line 1115
    invoke-virtual {v2, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v1

    invoke-static {v4, v1}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->composeFromSurrogates(II)I

    move-result v1

    move v4, v7

    goto :goto_9

    .line 1119
    :cond_16
    const/4 v1, 0x1

    move v4, v14

    move-object v7, v3

    move v3, v1

    move v1, v5

    move v5, v15

    .line 1120
    goto/16 :goto_2

    .line 1122
    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :pswitch_5
    move-object/from16 v1, p0

    move-object/from16 v4, p1

    .line 1129
    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matchAnchor(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;Lmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;II)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1133
    iget-object v1, v3, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move v3, v13

    move v4, v14

    move-object v7, v1

    move v1, v5

    move v5, v15

    .line 1135
    goto/16 :goto_2

    .line 1130
    :cond_18
    const/4 v1, 0x1

    move v4, v14

    move-object v7, v3

    move v3, v1

    move v1, v5

    move v5, v15

    .line 1131
    goto/16 :goto_2

    .line 1139
    :pswitch_6
    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData()I

    move-result v1

    .line 1140
    if-gtz v1, :cond_1a

    .line 1141
    :cond_19
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Internal Error: Reference number must be more than zero: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1140
    :cond_1a
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    if-ge v1, v4, :cond_19

    .line 1143
    move-object/from16 v0, p1

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {v4, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getBeginning(I)I

    move-result v4

    if-gez v4, :cond_1c

    .line 1144
    :cond_1b
    const/4 v1, 0x1

    move v4, v14

    move-object v7, v3

    move v3, v1

    move v1, v5

    move v5, v15

    .line 1145
    goto/16 :goto_2

    .line 1143
    :cond_1c
    move-object/from16 v0, p1

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {v4, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getEnd(I)I

    move-result v4

    if-ltz v4, :cond_1b

    .line 1147
    move-object/from16 v0, p1

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {v4, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getBeginning(I)I

    move-result v11

    .line 1148
    move-object/from16 v0, p1

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {v4, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getEnd(I)I

    move-result v1

    sub-int v12, v1, v11

    .line 1149
    if-gtz v15, :cond_1d

    .line 1157
    sub-int v9, v5, v12

    move-object/from16 v0, p1

    iget v10, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move-object v7, v2

    invoke-virtual/range {v7 .. v12}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->regionMatches(ZIIII)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1161
    sub-int v1, v5, v12

    .line 1163
    :goto_b
    iget-object v3, v3, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move v4, v14

    move v5, v15

    move-object v7, v3

    move v3, v13

    .line 1165
    goto/16 :goto_2

    .line 1150
    :cond_1d
    move-object/from16 v0, p1

    iget v10, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move-object v7, v2

    move v9, v5

    invoke-virtual/range {v7 .. v12}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->regionMatches(ZIIII)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1154
    add-int v1, v5, v12

    goto :goto_b

    .line 1151
    :cond_1e
    const/4 v1, 0x1

    move v4, v14

    move-object v7, v3

    move v3, v1

    move v1, v5

    move v5, v15

    .line 1152
    goto/16 :goto_2

    .line 1158
    :cond_1f
    const/4 v1, 0x1

    move v4, v14

    move-object v7, v3

    move v3, v1

    move v1, v5

    move v5, v15

    .line 1159
    goto/16 :goto_2

    .line 1169
    :pswitch_7
    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getString()Ljava/lang/String;

    move-result-object v11

    .line 1170
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    .line 1171
    if-gtz v15, :cond_20

    .line 1179
    sub-int v9, v5, v12

    move-object/from16 v0, p1

    iget v10, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move-object v7, v2

    invoke-virtual/range {v7 .. v12}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->regionMatches(ZIILjava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1183
    sub-int v1, v5, v12

    .line 1185
    :goto_c
    iget-object v3, v3, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move v4, v14

    move v5, v15

    move-object v7, v3

    move v3, v13

    .line 1187
    goto/16 :goto_2

    .line 1172
    :cond_20
    move-object/from16 v0, p1

    iget v10, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move-object v7, v2

    move v9, v5

    invoke-virtual/range {v7 .. v12}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->regionMatches(ZIILjava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1176
    add-int v1, v5, v12

    goto :goto_c

    .line 1173
    :cond_21
    const/4 v1, 0x1

    move v4, v14

    move-object v7, v3

    move v3, v1

    move v1, v5

    move v5, v15

    .line 1174
    goto/16 :goto_2

    .line 1180
    :cond_22
    const/4 v1, 0x1

    move v4, v14

    move-object v7, v3

    move v3, v1

    move v1, v5

    move v5, v15

    .line 1181
    goto/16 :goto_2

    .line 1192
    :pswitch_8
    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData()I

    move-result v1

    .line 1193
    move-object/from16 v0, p1

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->closureContexts:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;

    aget-object v4, v4, v1

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;->contains(I)Z

    move-result v4

    if-nez v4, :cond_23

    .line 1198
    move-object/from16 v0, p1

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->closureContexts:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;

    aget-object v1, v4, v1

    invoke-virtual {v1, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;->addOffset(I)V

    .line 1204
    :pswitch_9
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    .line 1206
    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getChild()Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v1

    move v3, v13

    move v4, v14

    move-object v7, v1

    move v1, v5

    move v5, v15

    .line 1208
    goto/16 :goto_2

    .line 1194
    :cond_23
    const/4 v1, 0x1

    move v4, v14

    move-object v7, v3

    move v3, v1

    move v1, v5

    move v5, v15

    .line 1195
    goto/16 :goto_2

    .line 1213
    :pswitch_a
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    .line 1215
    iget-object v1, v3, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move v3, v13

    move v4, v14

    move-object v7, v1

    move v1, v5

    move v5, v15

    .line 1217
    goto/16 :goto_2

    .line 1220
    :pswitch_b
    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->size()I

    move-result v1

    if-eqz v1, :cond_24

    .line 1224
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1225
    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    .line 1226
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    const/4 v1, 0x0

    .line 1227
    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->elementAt(I)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v1

    move v3, v13

    move v4, v14

    move-object v7, v1

    move v1, v5

    move v5, v15

    .line 1229
    goto/16 :goto_2

    .line 1221
    :cond_24
    const/4 v1, 0x1

    move v4, v14

    move-object v7, v3

    move v3, v1

    move v1, v5

    move v5, v15

    .line 1222
    goto/16 :goto_2

    .line 1233
    :pswitch_c
    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData()I

    move-result v1

    .line 1234
    move-object/from16 v0, p1

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    if-nez v4, :cond_25

    .line 1247
    :goto_d
    iget-object v1, v3, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move v3, v13

    move v4, v14

    move-object v7, v1

    move v1, v5

    move v5, v15

    .line 1249
    goto/16 :goto_2

    .line 1235
    :cond_25
    if-gtz v1, :cond_26

    .line 1240
    neg-int v1, v1

    .line 1241
    move-object/from16 v0, p1

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {v4, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getEnd(I)I

    move-result v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    .line 1242
    move-object/from16 v0, p1

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {v4, v1, v5}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    .line 1244
    :goto_e
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    goto :goto_d

    .line 1236
    :cond_26
    move-object/from16 v0, p1

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {v4, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getBeginning(I)I

    move-result v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    .line 1237
    move-object/from16 v0, p1

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {v4, v1, v5}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    goto :goto_e

    .line 1256
    :pswitch_d
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    .line 1258
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    .line 1259
    iget v1, v3, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    const/16 v4, 0x14

    if-ne v1, v4, :cond_28

    :cond_27
    const/4 v1, 0x1

    .line 1260
    :goto_f
    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getChild()Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v3

    move v4, v14

    move-object v7, v3

    move v3, v13

    move/from16 v18, v5

    move v5, v1

    move/from16 v1, v18

    .line 1262
    goto/16 :goto_2

    .line 1259
    :cond_28
    iget v1, v3, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    const/16 v4, 0x15

    if-eq v1, v4, :cond_27

    const/4 v1, -0x1

    goto :goto_f

    .line 1266
    :pswitch_e
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    .line 1268
    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getChild()Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v1

    move v3, v13

    move v4, v14

    move-object v7, v1

    move v1, v5

    move v5, v15

    .line 1270
    goto/16 :goto_2

    .line 1275
    :pswitch_f
    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData()I

    move-result v1

    or-int/2addr v1, v6

    .line 1276
    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData2()I

    move-result v4

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v1, v4

    .line 1277
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    .line 1279
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    .line 1281
    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getChild()Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v3

    move v4, v14

    move v6, v1

    move-object v7, v3

    move v1, v5

    move v3, v13

    move v5, v15

    .line 1283
    goto/16 :goto_2

    :pswitch_10
    move-object v1, v3

    .line 1287
    check-cast v1, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;

    .line 1288
    iget v4, v1, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->refNumber:I

    if-gtz v4, :cond_29

    .line 1304
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    .line 1306
    iget-object v1, v1, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->condition:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move v3, v13

    move v4, v14

    move-object v7, v1

    move v1, v5

    move v5, v15

    .line 1309
    goto/16 :goto_2

    .line 1289
    :cond_29
    iget v3, v1, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->refNumber:I

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    if-ge v3, v4, :cond_2b

    .line 1292
    move-object/from16 v0, p1

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    iget v4, v1, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->refNumber:I

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getBeginning(I)I

    move-result v3

    if-gez v3, :cond_2c

    .line 1296
    :cond_2a
    iget-object v3, v1, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->no:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    if-nez v3, :cond_2d

    .line 1300
    iget-object v1, v1, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move v3, v13

    move v4, v14

    move-object v7, v1

    move v1, v5

    move v5, v15

    .line 1302
    goto/16 :goto_2

    .line 1290
    :cond_2b
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Internal Error: Reference number must be more than zero: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->refNumber:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1293
    :cond_2c
    move-object/from16 v0, p1

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    iget v4, v1, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->refNumber:I

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getEnd(I)I

    move-result v3

    if-ltz v3, :cond_2a

    .line 1294
    iget-object v1, v1, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->yes:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move v3, v13

    move v4, v14

    move-object v7, v1

    move v1, v5

    move v5, v15

    .line 1295
    goto/16 :goto_2

    .line 1297
    :cond_2d
    iget-object v1, v1, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->no:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move v3, v13

    move v4, v14

    move-object v7, v1

    move v1, v5

    move v5, v15

    .line 1298
    goto/16 :goto_2

    .line 1320
    :cond_2e
    return v4

    .line 1329
    :pswitch_11
    if-ltz v4, :cond_2f

    move/from16 v18, v7

    move-object v7, v1

    move/from16 v1, v18

    goto/16 :goto_2

    .line 1330
    :cond_2f
    iget-object v1, v1, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    .line 1331
    const/4 v3, 0x0

    move/from16 v18, v7

    move-object v7, v1

    move/from16 v1, v18

    .line 1333
    goto/16 :goto_2

    .line 1337
    :pswitch_12
    if-ltz v4, :cond_30

    move/from16 v18, v7

    move-object v7, v1

    move/from16 v1, v18

    goto/16 :goto_2

    .line 1338
    :cond_30
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getChild()Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v1

    .line 1339
    const/4 v3, 0x0

    move/from16 v18, v7

    move-object v7, v1

    move/from16 v1, v18

    .line 1341
    goto/16 :goto_2

    .line 1345
    :pswitch_13
    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/util/IntStack;->pop()I

    move-result v9

    .line 1350
    if-ltz v4, :cond_31

    move/from16 v18, v7

    move-object v7, v1

    move/from16 v1, v18

    goto/16 :goto_2

    .line 1351
    :cond_31
    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->size()I

    move-result v10

    if-lt v9, v10, :cond_32

    const/4 v4, -0x1

    move/from16 v18, v7

    move-object v7, v1

    move/from16 v1, v18

    .line 1363
    goto/16 :goto_2

    .line 1352
    :cond_32
    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1353
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    .line 1354
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    .line 1355
    invoke-virtual {v1, v9}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->elementAt(I)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v1

    .line 1356
    const/4 v3, 0x0

    move/from16 v18, v7

    move-object v7, v1

    move/from16 v1, v18

    .line 1357
    goto/16 :goto_2

    .line 1366
    :pswitch_14
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData()I

    move-result v9

    .line 1367
    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/util/IntStack;->pop()I

    move-result v10

    .line 1368
    if-ltz v4, :cond_33

    move/from16 v18, v7

    move-object v7, v1

    move/from16 v1, v18

    goto/16 :goto_2

    .line 1369
    :cond_33
    if-gtz v9, :cond_34

    .line 1373
    move-object/from16 v0, p1

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    neg-int v9, v9

    invoke-virtual {v11, v9, v10}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    move/from16 v18, v7

    move-object v7, v1

    move/from16 v1, v18

    .line 1376
    goto/16 :goto_2

    .line 1370
    :cond_34
    move-object/from16 v0, p1

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {v11, v9, v10}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    move/from16 v18, v7

    move-object v7, v1

    move/from16 v1, v18

    .line 1371
    goto/16 :goto_2

    .line 1381
    :pswitch_15
    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/util/IntStack;->pop()I

    move-result v5

    .line 1382
    if-gez v4, :cond_35

    move/from16 v18, v3

    move-object v3, v1

    move/from16 v1, v18

    :goto_10
    const/4 v4, -0x1

    move/from16 v18, v1

    move v1, v7

    move-object v7, v3

    move/from16 v3, v18

    .line 1388
    goto/16 :goto_2

    .line 1383
    :cond_35
    iget-object v3, v1, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    .line 1384
    const/4 v1, 0x0

    goto :goto_10

    .line 1393
    :pswitch_16
    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/util/IntStack;->pop()I

    move-result v5

    .line 1394
    if-ltz v4, :cond_36

    :goto_11
    const/4 v4, -0x1

    move/from16 v18, v7

    move-object v7, v1

    move/from16 v1, v18

    .line 1400
    goto/16 :goto_2

    .line 1395
    :cond_36
    iget-object v1, v1, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    .line 1396
    const/4 v3, 0x0

    goto :goto_11

    .line 1403
    :pswitch_17
    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/util/IntStack;->pop()I

    move-result v6

    .line 1407
    :pswitch_18
    if-gez v4, :cond_37

    move/from16 v18, v7

    move-object v7, v1

    move/from16 v1, v18

    goto/16 :goto_2

    .line 1409
    :cond_37
    iget-object v1, v1, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    .line 1410
    const/4 v3, 0x0

    move-object v7, v1

    move v1, v4

    .line 1412
    goto/16 :goto_2

    .line 1416
    :pswitch_19
    check-cast v1, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;

    .line 1417
    if-gez v4, :cond_38

    .line 1420
    iget-object v3, v1, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->no:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    if-nez v3, :cond_39

    .line 1424
    iget-object v1, v1, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    .line 1427
    :goto_12
    const/4 v3, 0x0

    move/from16 v18, v7

    move-object v7, v1

    move/from16 v1, v18

    .line 1428
    goto/16 :goto_2

    .line 1418
    :cond_38
    iget-object v1, v1, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->yes:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    goto :goto_12

    .line 1421
    :cond_39
    iget-object v1, v1, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->no:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    goto :goto_12

    :cond_3a
    move v13, v3

    move v15, v5

    move v5, v1

    move-object v3, v7

    .line 1050
    goto/16 :goto_0

    .line 1326
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_11
        :pswitch_12
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_16
        :pswitch_15
        :pswitch_16
        :pswitch_18
        :pswitch_17
        :pswitch_19
    .end packed-switch

    .line 1063
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_c
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private matchChar(IIZ)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1438
    if-nez p3, :cond_0

    if-eq p1, p2, :cond_1

    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matchIgnoreCase(II)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static final matchIgnoreCase(II)Z
    .locals 4

    .prologue
    const v0, 0xffff

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2436
    if-eq p0, p1, :cond_1

    .line 2437
    if-le p0, v0, :cond_2

    :cond_0
    return v3

    .line 2436
    :cond_1
    return v2

    .line 2437
    :cond_2
    if-gt p1, v0, :cond_0

    .line 2438
    int-to-char v0, p0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 2439
    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    .line 2440
    if-eq v0, v1, :cond_3

    .line 2441
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    if-eq v0, v1, :cond_4

    return v3

    .line 2440
    :cond_3
    return v2

    .line 2441
    :cond_4
    return v2
.end method

.method private setPattern(Ljava/lang/String;ILjava/util/Locale;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2286
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->regex:Ljava/lang/String;

    .line 2287
    iput p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    .line 2288
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    const/16 v1, 0x200

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2289
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;

    invoke-direct {v0, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;-><init>(Ljava/util/Locale;)V

    .line 2290
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->regex:Ljava/lang/String;

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parse(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->tokentree:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    .line 2291
    iget v1, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parennumber:I

    iput v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    .line 2292
    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hasBackReferences:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->hasBackReferences:Z

    .line 2294
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    .line 2295
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    .line 2296
    return-void

    .line 2289
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;

    invoke-direct {v0, p3}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;-><init>(Ljava/util/Locale;)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2338
    if-eqz p1, :cond_1

    .line 2339
    instance-of v0, p1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    if-eqz v0, :cond_2

    .line 2341
    check-cast p1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    .line 2342
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->regex:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->regex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    return v2

    .line 2338
    :cond_1
    return v2

    .line 2340
    :cond_2
    return v2

    .line 2342
    :cond_3
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    iget v1, p1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method equals(Ljava/lang/String;I)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2346
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->regex:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method public getNumberOfGroups()I
    .locals 1

    .prologue
    .line 2362
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    return v0
.end method

.method public getOptions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2331
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->createOptionString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2312
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->regex:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 2353
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->regex:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getOptions()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method matchAnchor(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;Lmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;II)Z
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/16 v3, 0x8

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1443
    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1529
    :cond_0
    :goto_0
    return v2

    .line 1445
    :sswitch_0
    invoke-static {p5, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1450
    iget v0, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    if-eq p4, v0, :cond_0

    .line 1451
    return v1

    .line 1446
    :cond_1
    iget v0, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    if-eq p4, v0, :cond_0

    .line 1447
    iget v0, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    if-gt p4, v0, :cond_3

    .line 1448
    :cond_2
    return v1

    .line 1447
    :cond_3
    iget v0, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ge p4, v0, :cond_2

    add-int/lit8 v0, p4, -0x1

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isEOLChar(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1457
    :sswitch_1
    iget v0, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    if-eq p4, v0, :cond_0

    .line 1458
    iget v0, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    if-gt p4, v0, :cond_5

    .line 1459
    :cond_4
    return v1

    .line 1458
    :cond_5
    add-int/lit8 v0, p4, -0x1

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isEOLChar(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 1463
    :sswitch_2
    invoke-static {p5, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1468
    iget v0, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-eq p4, v0, :cond_0

    .line 1469
    add-int/lit8 v0, p4, 0x1

    iget v3, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-eq v0, v3, :cond_b

    .line 1470
    :cond_6
    add-int/lit8 v0, p4, 0x2

    iget v3, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-eq v0, v3, :cond_c

    .line 1472
    :cond_7
    return v1

    .line 1464
    :cond_8
    iget v0, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-eq p4, v0, :cond_0

    .line 1465
    iget v0, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-lt p4, v0, :cond_a

    .line 1466
    :cond_9
    return v1

    .line 1465
    :cond_a
    invoke-virtual {p1, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isEOLChar(I)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_0

    .line 1469
    :cond_b
    invoke-virtual {p1, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isEOLChar(I)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    .line 1470
    :cond_c
    invoke-virtual {p1, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v0

    const/16 v3, 0xd

    if-ne v0, v3, :cond_7

    .line 1471
    add-int/lit8 v0, p4, 0x1

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_7

    goto/16 :goto_0

    .line 1477
    :sswitch_3
    iget v0, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    if-eq p4, v0, :cond_0

    return v1

    .line 1481
    :sswitch_4
    iget v0, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-eq p4, v0, :cond_0

    .line 1482
    add-int/lit8 v0, p4, 0x1

    iget v3, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-eq v0, v3, :cond_f

    .line 1483
    :cond_d
    add-int/lit8 v0, p4, 0x2

    iget v3, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-eq v0, v3, :cond_10

    .line 1485
    :cond_e
    return v1

    .line 1482
    :cond_f
    invoke-virtual {p1, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isEOLChar(I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto/16 :goto_0

    .line 1483
    :cond_10
    invoke-virtual {p1, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v0

    const/16 v3, 0xd

    if-ne v0, v3, :cond_e

    .line 1484
    add-int/lit8 v0, p4, 0x1

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_e

    goto/16 :goto_0

    .line 1489
    :sswitch_5
    iget v0, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-eq p4, v0, :cond_0

    return v1

    .line 1493
    :sswitch_6
    iget v0, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->length:I

    if-eqz v0, :cond_11

    .line 1496
    iget v0, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v3, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-static {p1, v0, v3, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result v0

    .line 1497
    if-eqz v0, :cond_12

    .line 1498
    iget v3, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v4, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-static {p1, v3, v4, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getPreviousWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result v3

    .line 1499
    if-ne v0, v3, :cond_0

    return v1

    .line 1494
    :cond_11
    return v1

    .line 1497
    :cond_12
    return v1

    .line 1504
    :sswitch_7
    iget v0, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->length:I

    if-eqz v0, :cond_14

    .line 1507
    iget v0, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v3, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-static {p1, v0, v3, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result v0

    .line 1508
    if-nez v0, :cond_15

    :cond_13
    move v0, v2

    .line 1511
    :goto_1
    if-nez v0, :cond_0

    return v1

    :cond_14
    move v0, v2

    .line 1505
    goto :goto_1

    .line 1509
    :cond_15
    iget v3, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v4, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-static {p1, v3, v4, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getPreviousWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result v3

    if-eq v0, v3, :cond_13

    move v0, v1

    .line 1508
    goto :goto_1

    .line 1515
    :sswitch_8
    iget v0, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->length:I

    if-nez v0, :cond_17

    :cond_16
    return v1

    :cond_17
    iget v0, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-eq p4, v0, :cond_16

    .line 1516
    iget v0, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v3, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-static {p1, v0, v3, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result v0

    if-eq v0, v2, :cond_19

    .line 1518
    :cond_18
    return v1

    .line 1517
    :cond_19
    iget v0, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v3, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-static {p1, v0, v3, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getPreviousWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result v0

    if-ne v0, v4, :cond_18

    goto/16 :goto_0

    .line 1522
    :sswitch_9
    iget v0, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->length:I

    if-nez v0, :cond_1b

    :cond_1a
    return v1

    :cond_1b
    iget v0, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    if-eq p4, v0, :cond_1a

    .line 1523
    iget v0, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v3, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-static {p1, v0, v3, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result v0

    if-eq v0, v4, :cond_1d

    .line 1525
    :cond_1c
    return v1

    .line 1524
    :cond_1d
    iget v0, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v3, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-static {p1, v0, v3, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getPreviousWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result v0

    if-ne v0, v2, :cond_1c

    goto/16 :goto_0

    .line 1443
    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_2
        0x3c -> :sswitch_8
        0x3e -> :sswitch_9
        0x40 -> :sswitch_1
        0x41 -> :sswitch_3
        0x42 -> :sswitch_7
        0x5a -> :sswitch_4
        0x5e -> :sswitch_0
        0x62 -> :sswitch_6
        0x7a -> :sswitch_5
    .end sparse-switch
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 854
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches(Ljava/lang/String;IILmf/org/apache/xerces/impl/xpath/regex/Match;)Z

    move-result v0

    return v0
.end method

.method public matches(Ljava/lang/String;II)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 866
    invoke-virtual {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches(Ljava/lang/String;IILmf/org/apache/xerces/impl/xpath/regex/Match;)Z

    move-result v0

    return v0
.end method

.method public matches(Ljava/lang/String;IILmf/org/apache/xerces/impl/xpath/regex/Match;)Z
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 890
    monitor-enter p0

    .line 891
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    if-eqz v0, :cond_2

    .line 893
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    if-eqz v0, :cond_3

    .line 890
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 897
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    monitor-enter v2

    .line 898
    :try_start_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->inuse:Z

    if-nez v0, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    .line 899
    :goto_2
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->numberOfClosures:I

    invoke-virtual {v1, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->reset(Ljava/lang/String;III)V

    .line 897
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 901
    if-nez p4, :cond_5

    .line 904
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->hasBackReferences:Z

    if-nez v0, :cond_6

    .line 910
    :goto_3
    iput-object p4, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    .line 912
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    const/16 v2, 0x200

    invoke-static {v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v0

    if-nez v0, :cond_7

    .line 936
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOnly:Z

    if-nez v0, :cond_a

    .line 956
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 965
    :cond_0
    iget v0, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->minlength:I

    sub-int v7, v0, v2

    const/4 v0, -0x1

    .line 972
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    if-nez v2, :cond_e

    .line 998
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    if-nez v2, :cond_13

    .line 1020
    iget v3, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    :goto_4
    if-gt v3, v7, :cond_10

    .line 1021
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v0

    if-gez v0, :cond_10

    .line 1020
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 892
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->prepare()V

    goto :goto_0

    .line 890
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 894
    :cond_3
    :try_start_3
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 898
    :cond_4
    :try_start_4
    new-instance v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;-><init>()V

    goto :goto_2

    .line 897
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 902
    :cond_5
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    invoke-virtual {p4, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setNumberOfGroups(I)V

    .line 903
    invoke-virtual {p4, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setSource(Ljava/lang/String;)V

    goto :goto_3

    .line 905
    :cond_6
    new-instance p4, Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-direct {p4}, Lmf/org/apache/xerces/impl/xpath/regex/Match;-><init>()V

    .line 906
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    invoke-virtual {p4, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setNumberOfGroups(I)V

    goto :goto_3

    .line 916
    :cond_7
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v3, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v0

    .line 921
    iget v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-eq v0, v2, :cond_8

    .line 929
    return v6

    .line 922
    :cond_8
    iget-object v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    if-nez v2, :cond_9

    .line 926
    :goto_5
    invoke-virtual {v1, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    .line 927
    return v4

    .line 923
    :cond_9
    iget-object v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    iget v3, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    invoke-virtual {v2, v6, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    .line 924
    iget-object v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {v2, v6, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    goto :goto_5

    .line 938
    :cond_a
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    iget v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v3, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-virtual {v0, p1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->matches(Ljava/lang/String;II)I

    move-result v0

    .line 939
    if-gez v0, :cond_b

    .line 947
    invoke-virtual {v1, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    .line 948
    return v6

    .line 940
    :cond_b
    iget-object v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    if-nez v2, :cond_c

    .line 944
    :goto_6
    invoke-virtual {v1, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    .line 945
    return v4

    .line 941
    :cond_c
    iget-object v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {v2, v6, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    .line 942
    iget-object v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v2, v6, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    goto :goto_6

    .line 957
    :cond_d
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    iget v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v3, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-virtual {v0, p1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->matches(Ljava/lang/String;II)I

    move-result v0

    .line 958
    if-gez v0, :cond_0

    .line 960
    invoke-virtual {v1, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    .line 961
    return v6

    .line 973
    :cond_e
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v2, v2, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getChild()Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v2

    iget v2, v2, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    if-nez v2, :cond_1

    .line 974
    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v2

    if-nez v2, :cond_f

    .line 979
    iget v3, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    move v2, v4

    :goto_7
    if-gt v3, v7, :cond_10

    .line 980
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 981
    invoke-static {v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isEOLChar(I)Z

    move-result v5

    if-nez v5, :cond_11

    .line 984
    if-nez v2, :cond_12

    :goto_8
    move v2, v0

    move v0, v6

    .line 979
    :goto_9
    add-int/lit8 v3, v3, 0x1

    move v10, v0

    move v0, v2

    move v2, v10

    goto :goto_7

    .line 975
    :cond_f
    iget v7, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    .line 976
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v3, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v0

    move v3, v7

    .line 1026
    :cond_10
    :goto_a
    if-gez v0, :cond_18

    .line 1034
    invoke-virtual {v1, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    .line 1035
    return v6

    :cond_11
    move v2, v0

    move v0, v4

    .line 983
    goto :goto_9

    .line 985
    :cond_12
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    .line 986
    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object v0, p0

    .line 985
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v0

    if-gez v0, :cond_10

    goto :goto_8

    .line 1000
    :cond_13
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    .line 1001
    iget v3, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    move v2, v0

    :goto_b
    if-gt v3, v7, :cond_17

    .line 1002
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1003
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->isHighSurrogate(I)Z

    move-result v5

    if-nez v5, :cond_15

    .line 1006
    :cond_14
    :goto_c
    invoke-virtual {v8, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->match(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1009
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    .line 1010
    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object v0, p0

    .line 1009
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v0

    if-gez v0, :cond_10

    .line 1001
    :goto_d
    add-int/lit8 v3, v3, 0x1

    move v2, v0

    goto :goto_b

    .line 1003
    :cond_15
    add-int/lit8 v5, v3, 0x1

    iget v9, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ge v5, v9, :cond_14

    .line 1004
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v0, v5}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->composeFromSurrogates(II)I

    move-result v0

    goto :goto_c

    :cond_16
    move v0, v2

    .line 1007
    goto :goto_d

    :cond_17
    move v0, v2

    .line 1014
    goto :goto_a

    .line 1027
    :cond_18
    iget-object v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    if-nez v2, :cond_19

    .line 1031
    :goto_e
    invoke-virtual {v1, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    .line 1032
    return v4

    .line 1028
    :cond_19
    iget-object v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {v2, v6, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    .line 1029
    iget-object v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {v2, v6, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    goto :goto_e
.end method

.method public matches(Ljava/lang/String;Lmf/org/apache/xerces/impl/xpath/regex/Match;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 876
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches(Ljava/lang/String;IILmf/org/apache/xerces/impl/xpath/regex/Match;)Z

    move-result v0

    return v0
.end method

.method public matches(Ljava/text/CharacterIterator;)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1553
    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches(Ljava/text/CharacterIterator;Lmf/org/apache/xerces/impl/xpath/regex/Match;)Z

    move-result v0

    return v0
.end method

.method public matches(Ljava/text/CharacterIterator;Lmf/org/apache/xerces/impl/xpath/regex/Match;)Z
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1564
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    .line 1565
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v2

    .line 1569
    monitor-enter p0

    .line 1570
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    if-eqz v1, :cond_2

    .line 1572
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    if-eqz v1, :cond_3

    .line 1569
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1576
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    monitor-enter v3

    .line 1577
    :try_start_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->inuse:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    .line 1578
    :goto_2
    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->numberOfClosures:I

    invoke-virtual {v1, p1, v0, v2, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->reset(Ljava/text/CharacterIterator;III)V

    .line 1576
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1580
    if-nez p2, :cond_5

    .line 1583
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->hasBackReferences:Z

    if-nez v0, :cond_6

    .line 1589
    :goto_3
    iput-object p2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    .line 1591
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    const/16 v2, 0x200

    invoke-static {v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1609
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOnly:Z

    if-nez v0, :cond_a

    .line 1629
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 1638
    :cond_0
    iget v0, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->minlength:I

    sub-int v7, v0, v2

    const/4 v0, -0x1

    .line 1645
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    if-nez v2, :cond_e

    .line 1671
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    if-nez v2, :cond_13

    .line 1693
    iget v3, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    :goto_4
    if-gt v3, v7, :cond_10

    .line 1694
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v0

    if-gez v0, :cond_10

    .line 1693
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1571
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->prepare()V

    goto :goto_0

    .line 1569
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1573
    :cond_3
    :try_start_3
    new-instance v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1577
    :cond_4
    :try_start_4
    new-instance v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;-><init>()V

    goto :goto_2

    .line 1576
    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 1581
    :cond_5
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    invoke-virtual {p2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setNumberOfGroups(I)V

    .line 1582
    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setSource(Ljava/text/CharacterIterator;)V

    goto :goto_3

    .line 1584
    :cond_6
    new-instance p2, Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-direct {p2}, Lmf/org/apache/xerces/impl/xpath/regex/Match;-><init>()V

    .line 1585
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    invoke-virtual {p2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setNumberOfGroups(I)V

    goto :goto_3

    .line 1592
    :cond_7
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v3, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v0

    .line 1594
    iget v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-eq v0, v2, :cond_8

    .line 1602
    return v6

    .line 1595
    :cond_8
    iget-object v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    if-nez v2, :cond_9

    .line 1599
    :goto_5
    invoke-virtual {v1, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    .line 1600
    return v4

    .line 1596
    :cond_9
    iget-object v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    iget v3, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    invoke-virtual {v2, v6, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    .line 1597
    iget-object v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {v2, v6, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    goto :goto_5

    .line 1611
    :cond_a
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    iget v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v3, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-virtual {v0, p1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->matches(Ljava/text/CharacterIterator;II)I

    move-result v0

    .line 1612
    if-gez v0, :cond_b

    .line 1620
    invoke-virtual {v1, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    .line 1621
    return v6

    .line 1613
    :cond_b
    iget-object v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    if-nez v2, :cond_c

    .line 1617
    :goto_6
    invoke-virtual {v1, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    .line 1618
    return v4

    .line 1614
    :cond_c
    iget-object v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {v2, v6, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    .line 1615
    iget-object v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v2, v6, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    goto :goto_6

    .line 1630
    :cond_d
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    iget v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v3, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-virtual {v0, p1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->matches(Ljava/text/CharacterIterator;II)I

    move-result v0

    .line 1631
    if-gez v0, :cond_0

    .line 1633
    invoke-virtual {v1, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    .line 1634
    return v6

    .line 1646
    :cond_e
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v2, v2, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getChild()Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v2

    iget v2, v2, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    if-nez v2, :cond_1

    .line 1647
    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1652
    iget v3, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    move v2, v4

    :goto_7
    if-gt v3, v7, :cond_10

    .line 1653
    invoke-interface {p1, v3}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v5

    .line 1654
    invoke-static {v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isEOLChar(I)Z

    move-result v5

    if-nez v5, :cond_11

    .line 1657
    if-nez v2, :cond_12

    :goto_8
    move v2, v0

    move v0, v6

    .line 1652
    :goto_9
    add-int/lit8 v3, v3, 0x1

    move v10, v0

    move v0, v2

    move v2, v10

    goto :goto_7

    .line 1648
    :cond_f
    iget v7, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    .line 1649
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v3, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v0

    move v3, v7

    .line 1699
    :cond_10
    :goto_a
    if-gez v0, :cond_18

    .line 1707
    invoke-virtual {v1, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    .line 1708
    return v6

    :cond_11
    move v2, v0

    move v0, v4

    .line 1656
    goto :goto_9

    .line 1658
    :cond_12
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    .line 1659
    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object v0, p0

    .line 1658
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v0

    if-gez v0, :cond_10

    goto :goto_8

    .line 1673
    :cond_13
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    .line 1674
    iget v3, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    move v2, v0

    :goto_b
    if-gt v3, v7, :cond_17

    .line 1675
    invoke-interface {p1, v3}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v0

    .line 1676
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->isHighSurrogate(I)Z

    move-result v5

    if-nez v5, :cond_15

    .line 1679
    :cond_14
    :goto_c
    invoke-virtual {v8, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->match(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1682
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    .line 1683
    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object v0, p0

    .line 1682
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v0

    if-gez v0, :cond_10

    .line 1674
    :goto_d
    add-int/lit8 v3, v3, 0x1

    move v2, v0

    goto :goto_b

    .line 1676
    :cond_15
    add-int/lit8 v5, v3, 0x1

    iget v9, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ge v5, v9, :cond_14

    .line 1677
    add-int/lit8 v5, v3, 0x1

    invoke-interface {p1, v5}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v5

    invoke-static {v0, v5}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->composeFromSurrogates(II)I

    move-result v0

    goto :goto_c

    :cond_16
    move v0, v2

    .line 1680
    goto :goto_d

    :cond_17
    move v0, v2

    .line 1687
    goto :goto_a

    .line 1700
    :cond_18
    iget-object v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    if-nez v2, :cond_19

    .line 1704
    :goto_e
    invoke-virtual {v1, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    .line 1705
    return v4

    .line 1701
    :cond_19
    iget-object v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {v2, v6, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    .line 1702
    iget-object v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {v2, v6, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    goto :goto_e
.end method

.method public matches([C)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 668
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches([CIILmf/org/apache/xerces/impl/xpath/regex/Match;)Z

    move-result v0

    return v0
.end method

.method public matches([CII)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 680
    invoke-virtual {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches([CIILmf/org/apache/xerces/impl/xpath/regex/Match;)Z

    move-result v0

    return v0
.end method

.method public matches([CIILmf/org/apache/xerces/impl/xpath/regex/Match;)Z
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 705
    monitor-enter p0

    .line 706
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    if-eqz v0, :cond_2

    .line 708
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    if-eqz v0, :cond_3

    .line 705
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 712
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    monitor-enter v2

    .line 713
    :try_start_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->inuse:Z

    if-nez v0, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    .line 714
    :goto_2
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->numberOfClosures:I

    invoke-virtual {v1, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->reset([CIII)V

    .line 712
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 716
    if-nez p4, :cond_5

    .line 719
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->hasBackReferences:Z

    if-nez v0, :cond_6

    .line 725
    :goto_3
    iput-object p4, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    .line 727
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    const/16 v2, 0x200

    invoke-static {v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v0

    if-nez v0, :cond_7

    .line 745
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOnly:Z

    if-nez v0, :cond_a

    .line 765
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 774
    :cond_0
    iget v0, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->minlength:I

    sub-int v7, v0, v2

    const/4 v0, -0x1

    .line 781
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    if-nez v2, :cond_e

    .line 807
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    if-nez v2, :cond_13

    .line 829
    iget v3, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    :goto_4
    if-gt v3, v7, :cond_10

    .line 830
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v0

    if-gez v0, :cond_10

    .line 829
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 707
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->prepare()V

    goto :goto_0

    .line 705
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 709
    :cond_3
    :try_start_3
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 713
    :cond_4
    :try_start_4
    new-instance v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;-><init>()V

    goto :goto_2

    .line 712
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 717
    :cond_5
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    invoke-virtual {p4, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setNumberOfGroups(I)V

    .line 718
    invoke-virtual {p4, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setSource([C)V

    goto :goto_3

    .line 720
    :cond_6
    new-instance p4, Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-direct {p4}, Lmf/org/apache/xerces/impl/xpath/regex/Match;-><init>()V

    .line 721
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    invoke-virtual {p4, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setNumberOfGroups(I)V

    goto :goto_3

    .line 728
    :cond_7
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v3, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v0

    .line 730
    iget v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-eq v0, v2, :cond_8

    .line 738
    return v6

    .line 731
    :cond_8
    iget-object v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    if-nez v2, :cond_9

    .line 735
    :goto_5
    invoke-virtual {v1, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    .line 736
    return v4

    .line 732
    :cond_9
    iget-object v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    iget v3, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    invoke-virtual {v2, v6, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    .line 733
    iget-object v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {v2, v6, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    goto :goto_5

    .line 747
    :cond_a
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    iget v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v3, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-virtual {v0, p1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->matches([CII)I

    move-result v0

    .line 748
    if-gez v0, :cond_b

    .line 756
    invoke-virtual {v1, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    .line 757
    return v6

    .line 749
    :cond_b
    iget-object v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    if-nez v2, :cond_c

    .line 753
    :goto_6
    invoke-virtual {v1, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    .line 754
    return v4

    .line 750
    :cond_c
    iget-object v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {v2, v6, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    .line 751
    iget-object v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v2, v6, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    goto :goto_6

    .line 766
    :cond_d
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    iget v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v3, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-virtual {v0, p1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->matches([CII)I

    move-result v0

    .line 767
    if-gez v0, :cond_0

    .line 769
    invoke-virtual {v1, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    .line 770
    return v6

    .line 782
    :cond_e
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v2, v2, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getChild()Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v2

    iget v2, v2, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    if-nez v2, :cond_1

    .line 783
    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v2

    if-nez v2, :cond_f

    .line 788
    iget v3, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    move v2, v4

    :goto_7
    if-gt v3, v7, :cond_10

    .line 789
    aget-char v5, p1, v3

    .line 790
    invoke-static {v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isEOLChar(I)Z

    move-result v5

    if-nez v5, :cond_11

    .line 793
    if-nez v2, :cond_12

    :goto_8
    move v2, v0

    move v0, v6

    .line 788
    :goto_9
    add-int/lit8 v3, v3, 0x1

    move v10, v0

    move v0, v2

    move v2, v10

    goto :goto_7

    .line 784
    :cond_f
    iget v7, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    .line 785
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v3, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v0

    move v3, v7

    .line 835
    :cond_10
    :goto_a
    if-gez v0, :cond_18

    .line 843
    invoke-virtual {v1, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    .line 844
    return v6

    :cond_11
    move v2, v0

    move v0, v4

    .line 792
    goto :goto_9

    .line 794
    :cond_12
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    .line 795
    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object v0, p0

    .line 794
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v0

    if-gez v0, :cond_10

    goto :goto_8

    .line 809
    :cond_13
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    .line 810
    iget v3, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    move v2, v0

    :goto_b
    if-gt v3, v7, :cond_17

    .line 811
    aget-char v0, p1, v3

    .line 812
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->isHighSurrogate(I)Z

    move-result v5

    if-nez v5, :cond_15

    .line 815
    :cond_14
    :goto_c
    invoke-virtual {v8, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->match(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 818
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    .line 819
    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object v0, p0

    .line 818
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v0

    if-gez v0, :cond_10

    .line 810
    :goto_d
    add-int/lit8 v3, v3, 0x1

    move v2, v0

    goto :goto_b

    .line 812
    :cond_15
    add-int/lit8 v5, v3, 0x1

    iget v9, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ge v5, v9, :cond_14

    .line 813
    add-int/lit8 v5, v3, 0x1

    aget-char v5, p1, v5

    invoke-static {v0, v5}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->composeFromSurrogates(II)I

    move-result v0

    goto :goto_c

    :cond_16
    move v0, v2

    .line 816
    goto :goto_d

    :cond_17
    move v0, v2

    .line 823
    goto :goto_a

    .line 836
    :cond_18
    iget-object v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    if-nez v2, :cond_19

    .line 840
    :goto_e
    invoke-virtual {v1, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    .line 841
    return v4

    .line 837
    :cond_19
    iget-object v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {v2, v6, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    .line 838
    iget-object v2, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-virtual {v2, v6, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    goto :goto_e
.end method

.method public matches([CLmf/org/apache/xerces/impl/xpath/regex/Match;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 690
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches([CIILmf/org/apache/xerces/impl/xpath/regex/Match;)Z

    move-result v0

    return v0
.end method

.method prepare()V
    .locals 8

    .prologue
    const/16 v7, 0x100

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 2092
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->tokentree:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    .line 2102
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->tokentree:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getMinLength()I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->minlength:I

    .line 2104
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    .line 2105
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    const/16 v2, 0x80

    invoke-static {v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2117
    :cond_0
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    if-nez v0, :cond_4

    .line 2135
    :cond_1
    :goto_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    invoke-static {v0, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2156
    :cond_2
    :goto_2
    return-void

    .line 2106
    :cond_3
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    const/16 v2, 0x200

    invoke-static {v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2107
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    .line 2108
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->tokentree:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    invoke-virtual {v2, v0, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->analyzeFirstCharacter(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;I)I

    move-result v2

    .line 2109
    if-ne v2, v5, :cond_0

    .line 2110
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compactRanges()V

    .line 2111
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    goto :goto_0

    .line 2118
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_6

    .line 2119
    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    if-nez v0, :cond_1

    .line 2122
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOnly:Z

    .line 2123
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_7

    .line 2125
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData()I

    move-result v0

    const/high16 v1, 0x10000

    if-ge v0, v1, :cond_8

    .line 2128
    new-array v0, v5, [C

    .line 2129
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData()I

    move-result v1

    int-to-char v1, v1

    int-to-char v1, v1

    aput-char v1, v0, v4

    .line 2130
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    .line 2132
    :goto_3
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOptions:I

    .line 2133
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    .line 2134
    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOptions:I

    invoke-static {v2, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v2

    invoke-direct {v0, v1, v7, v2}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;-><init>(Ljava/lang/String;IZ)V

    .line 2133
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    goto :goto_2

    .line 2118
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    if-eq v0, v5, :cond_5

    goto :goto_1

    .line 2124
    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    goto :goto_3

    .line 2126
    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData()I

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->decomposeToSurrogates(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    goto :goto_3

    .line 2136
    :cond_9
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    const/16 v2, 0x200

    invoke-static {v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2137
    new-instance v2, Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;-><init>()V

    .line 2138
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->tokentree:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->findFixedString(Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;I)V

    .line 2139
    iget-object v0, v2, Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;->token:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-eqz v0, :cond_b

    iget-object v0, v2, Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;->token:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    .line 2140
    iget v0, v2, Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;->options:I

    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOptions:I

    .line 2141
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 2144
    :cond_a
    :goto_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2145
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    .line 2146
    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOptions:I

    invoke-static {v2, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v2

    invoke-direct {v0, v1, v7, v2}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;-><init>(Ljava/lang/String;IZ)V

    .line 2145
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    goto/16 :goto_2

    :cond_b
    move-object v0, v1

    .line 2139
    goto :goto_4

    .line 2141
    :cond_c
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v6, :cond_a

    .line 2142
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    goto :goto_5
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 2278
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->setPattern(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2279
    return-void
.end method

.method public setPattern(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 2301
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->setPattern(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    .line 2302
    return-void
.end method

.method public setPattern(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 2305
    invoke-static {p2}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->parseOptions(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->setPattern(Ljava/lang/String;ILjava/util/Locale;)V

    .line 2306
    return-void
.end method

.method public setPattern(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 2282
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    invoke-direct {p0, p1, v0, p2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->setPattern(Ljava/lang/String;ILjava/util/Locale;)V

    .line 2283
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2319
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->tokentree:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
