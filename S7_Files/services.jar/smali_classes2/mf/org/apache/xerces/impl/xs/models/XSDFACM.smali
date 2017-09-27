.class public Lmf/org/apache/xerces/impl/xs/models/XSDFACM;
.super Ljava/lang/Object;
.source "XSDFACM.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_VALIDATE_CONTENT:Z

.field private static time:J


# instance fields
.field private fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

.field private fElemMap:[Ljava/lang/Object;

.field private fElemMapId:[I

.field private fElemMapSize:I

.field private fElemMapType:[I

.field private fFinalStateFlags:[Z

.field private fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

.field private fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

.field private fIsCompactedForUPA:Z

.field private fLeafCount:I

.field private fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

.field private fLeafListType:[I

.field private fTransTable:[[I

.field private fTransTableSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 219
    sput-wide v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->time:J

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    .line 79
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapType:[I

    .line 84
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapId:[I

    .line 87
    iput v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    .line 94
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    .line 101
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    .line 109
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    .line 115
    iput v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    .line 121
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    .line 124
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafListType:[I

    .line 138
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    .line 144
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    .line 166
    iput v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTableSize:I

    .line 188
    iput p2, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    .line 189
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isCompactedForUPA()Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fIsCompactedForUPA:Z

    .line 211
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->buildDFA(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    .line 217
    return-void
.end method

.method private buildDFA(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V
    .locals 24

    .prologue
    .line 508
    move-object/from16 v0, p0

    iget v14, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    .line 509
    new-instance v4, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    const/4 v5, 0x1

    const/4 v6, -0x1

    move-object/from16 v0, p0

    iget v7, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    add-int/lit8 v8, v7, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    const/4 v8, 0x0

    invoke-direct {v4, v5, v8, v6, v7}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;-><init>(ILjava/lang/Object;II)V

    .line 510
    new-instance v5, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    const/16 v6, 0x66

    .line 513
    move-object/from16 v0, p1

    invoke-direct {v5, v6, v0, v4}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;-><init>(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    .line 510
    move-object/from16 v0, p0

    iput-object v5, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    .line 530
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    new-array v4, v4, [Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    .line 531
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    new-array v4, v4, [I

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafListType:[I

    .line 532
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->postTreeBuildInit(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    .line 539
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    new-array v4, v4, [Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    const/4 v4, 0x0

    .line 540
    :goto_0
    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    if-ge v4, v5, :cond_0

    .line 541
    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    new-instance v6, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-object/from16 v0, p0

    iget v7, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    invoke-direct {v6, v7}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;-><init>(I)V

    aput-object v6, v5, v4

    .line 540
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 542
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    .line 554
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    .line 555
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    new-array v4, v4, [I

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapType:[I

    .line 556
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    new-array v4, v4, [I

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapId:[I

    const/4 v4, 0x0

    .line 557
    move-object/from16 v0, p0

    iput v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    const/4 v5, 0x0

    const/4 v4, 0x0

    move v6, v4

    .line 559
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    if-ge v6, v4, :cond_5

    .line 562
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v7, v4, v6

    const/4 v4, 0x0

    .line 565
    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getParticleId()I

    move-result v7

    .line 566
    :goto_2
    move-object/from16 v0, p0

    iget v8, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ge v4, v8, :cond_1

    .line 567
    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapId:[I

    aget v8, v8, v4

    if-eq v7, v8, :cond_1

    .line 566
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 572
    :cond_1
    move-object/from16 v0, p0

    iget v8, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-eq v4, v8, :cond_2

    .line 559
    :goto_3
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_1

    .line 573
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    aget-object v4, v4, v6

    .line 574
    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v9, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getLeaf()Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v8, v9

    .line 575
    instance-of v8, v4, Lmf/org/apache/xerces/impl/xs/models/XSCMRepeatingLeaf;

    if-nez v8, :cond_3

    .line 581
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapType:[I

    move-object/from16 v0, p0

    iget v8, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafListType:[I

    aget v9, v9, v6

    aput v9, v4, v8

    .line 582
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapId:[I

    move-object/from16 v0, p0

    iget v8, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    aput v7, v4, v8

    .line 583
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    goto :goto_3

    .line 576
    :cond_3
    if-eqz v5, :cond_4

    .line 579
    :goto_5
    move-object/from16 v0, p0

    iget v8, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    new-instance v9, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    check-cast v4, Lmf/org/apache/xerces/impl/xs/models/XSCMRepeatingLeaf;

    move-object/from16 v0, p0

    iget v10, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    invoke-direct {v9, v4, v10}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;-><init>(Lmf/org/apache/xerces/impl/xs/models/XSCMRepeatingLeaf;I)V

    aput-object v9, v5, v8

    goto :goto_4

    .line 577
    :cond_4
    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    new-array v5, v5, [Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    goto :goto_5

    .line 593
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    .line 601
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    move-object/from16 v0, p0

    iget v6, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    add-int/2addr v4, v6

    new-array v15, v4, [I

    const/4 v6, 0x0

    const/4 v4, 0x0

    move v8, v4

    .line 604
    :goto_6
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ge v8, v4, :cond_8

    .line 605
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapId:[I

    aget v9, v4, v8

    const/4 v4, 0x0

    move v7, v4

    move v4, v6

    .line 606
    :goto_7
    move-object/from16 v0, p0

    iget v6, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    if-ge v7, v6, :cond_7

    .line 607
    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getParticleId()I

    move-result v6

    if-eq v9, v6, :cond_6

    .line 606
    :goto_8
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_7

    .line 608
    :cond_6
    add-int/lit8 v6, v4, 0x1

    aput v7, v15, v4

    move v4, v6

    goto :goto_8

    .line 610
    :cond_7
    add-int/lit8 v6, v4, 0x1

    const/4 v7, -0x1

    aput v7, v15, v4

    .line 604
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto :goto_6

    .line 628
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    mul-int/lit8 v10, v4, 0x4

    .line 629
    new-array v9, v10, [Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    .line 630
    new-array v4, v10, [Z

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    .line 631
    new-array v4, v10, [[I

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    .line 638
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v6

    const/4 v4, 0x0

    .line 655
    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    const/4 v8, 0x0

    invoke-direct/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->makeDefStateList()[I

    move-result-object v11

    aput-object v11, v7, v8

    const/4 v7, 0x0

    .line 656
    aput-object v6, v9, v7

    .line 657
    const/4 v8, 0x1

    .line 663
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 672
    :goto_9
    if-ge v4, v8, :cond_10

    .line 677
    aget-object v17, v9, v4

    .line 678
    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v18, v6, v4

    .line 681
    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v7

    aput-boolean v7, v6, v4

    .line 684
    add-int/lit8 v13, v4, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move v11, v4

    move-object v4, v7

    move v7, v8

    move-object v8, v9

    move v9, v10

    move v10, v6

    .line 691
    :goto_a
    move-object/from16 v0, p0

    iget v6, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ge v11, v6, :cond_15

    .line 698
    if-eqz v4, :cond_9

    .line 701
    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->zeroBits()V

    move-object v6, v4

    .line 704
    :goto_b
    add-int/lit8 v12, v10, 0x1

    aget v4, v15, v10

    :goto_c
    const/4 v10, -0x1

    .line 706
    if-eq v4, v10, :cond_b

    .line 708
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v10

    if-nez v10, :cond_a

    .line 717
    :goto_d
    add-int/lit8 v10, v12, 0x1

    aget v4, v15, v12

    move v12, v10

    goto :goto_c

    .line 699
    :cond_9
    new-instance v4, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-object/from16 v0, p0

    iget v6, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    invoke-direct {v4, v6}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;-><init>(I)V

    move-object v6, v4

    goto :goto_b

    .line 714
    :cond_a
    move-object/from16 v0, p0

    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    aget-object v4, v10, v4

    invoke-virtual {v6, v4}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    goto :goto_d

    .line 725
    :cond_b
    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    move-object v4, v8

    move v8, v9

    .line 691
    :goto_e
    add-int/lit8 v9, v11, 0x1

    move v11, v9

    move v10, v12

    move v9, v8

    move-object v8, v4

    move-object v4, v6

    goto :goto_a

    .line 732
    :cond_c
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 733
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 737
    :goto_f
    if-eq v4, v7, :cond_e

    .line 767
    :goto_10
    aput v4, v18, v11

    .line 770
    if-eq v7, v9, :cond_f

    move-object v4, v8

    move v8, v9

    goto :goto_e

    :cond_d
    move v4, v7

    .line 733
    goto :goto_f

    .line 743
    :cond_e
    aput-object v6, v8, v7

    .line 744
    move-object/from16 v0, p0

    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    invoke-direct/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->makeDefStateList()[I

    move-result-object v19

    aput-object v19, v10, v7

    .line 747
    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v7}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    .line 758
    goto :goto_10

    .line 776
    :cond_f
    int-to-double v0, v9

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x3ff8000000000000L    # 1.5

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v10, v0

    .line 777
    new-array v4, v10, [Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    .line 778
    new-array v0, v10, [Z

    move-object/from16 v19, v0

    .line 779
    new-array v0, v10, [[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 782
    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v8, v0, v4, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 783
    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v19

    move/from16 v2, v22

    invoke-static {v8, v0, v1, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 784
    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-static {v8, v0, v1, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 789
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    .line 790
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    move v8, v10

    goto/16 :goto_e

    .line 800
    :cond_10
    if-nez v5, :cond_12

    :cond_11
    const/4 v4, 0x0

    .line 819
    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    const/4 v4, 0x0

    .line 820
    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    const/4 v4, 0x0

    .line 821
    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    const/4 v4, 0x0

    .line 822
    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafListType:[I

    const/4 v4, 0x0

    .line 823
    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapId:[I

    .line 824
    return-void

    .line 801
    :cond_12
    new-array v4, v8, [Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    const/4 v4, 0x0

    move v6, v4

    .line 802
    :goto_11
    if-ge v6, v8, :cond_11

    .line 803
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v7, v4, v6

    const/4 v4, 0x0

    .line 804
    :goto_12
    array-length v9, v7

    if-ge v4, v9, :cond_14

    .line 805
    aget v9, v7, v4

    if-eq v6, v9, :cond_13

    .line 804
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 806
    :cond_13
    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    aget-object v4, v5, v4

    aput-object v4, v7, v6

    .line 802
    :cond_14
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_11

    :cond_15
    move v4, v13

    move v10, v9

    move-object v9, v8

    move v8, v7

    goto/16 :goto_9
.end method

.method private calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 835
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/16 v2, 0x65

    if-eq v0, v2, :cond_1

    .line 840
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/16 v2, 0x66

    if-eq v0, v2, :cond_3

    .line 863
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    :cond_0
    move-object v0, p1

    .line 866
    check-cast v0, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;->getChild()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    .line 872
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    .line 873
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v2

    .line 880
    :goto_0
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    if-ge v1, v3, :cond_2

    .line 881
    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 880
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 837
    check-cast v0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    .line 838
    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    .line 891
    :cond_2
    :goto_2
    return-void

    :cond_3
    move-object v0, p1

    .line 842
    check-cast v0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    move-object v0, p1

    .line 843
    check-cast v0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    move-object v0, p1

    .line 850
    check-cast v0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v2

    .line 851
    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v3

    move v0, v1

    .line 858
    :goto_3
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    if-ge v0, v1, :cond_2

    .line 859
    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 858
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 860
    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    goto :goto_4

    .line 864
    :cond_5
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    .line 886
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 888
    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;->getChild()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    goto :goto_2

    .line 882
    :cond_6
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    goto :goto_1
.end method

.method private dumpTree(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 902
    :goto_0
    if-ge v0, p2, :cond_0

    .line 903
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "   "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 902
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 905
    :cond_0
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    .line 907
    sparse-switch v0, :sswitch_data_0

    .line 973
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "ImplementationMessages.VAL_NIICM"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/16 v1, 0x65

    .line 911
    if-eq v0, v1, :cond_1

    .line 914
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "Seq Node "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 916
    :goto_1
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 919
    :goto_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "firstPos="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 920
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 921
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, " lastPos="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 922
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v0, p1

    .line 924
    check-cast v0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->dumpTree(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)V

    .line 925
    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->dumpTree(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)V

    .line 977
    :goto_3
    return-void

    .line 912
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "Choice Node "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 917
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "Nullable "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 931
    :sswitch_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "Rep Node "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 933
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 936
    :goto_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "firstPos="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 937
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 938
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, " lastPos="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 939
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 941
    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;->getChild()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->dumpTree(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)V

    goto :goto_3

    .line 934
    :cond_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "Nullable "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_4

    .line 945
    :sswitch_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 947
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Leaf: (pos="

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, p1

    .line 948
    check-cast v0, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getPosition()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "), "

    .line 949
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "(elemIndex="

    .line 950
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p1

    .line 951
    check-cast v0, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getLeaf()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ") "

    .line 952
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 947
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 945
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 955
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v0

    if-nez v0, :cond_4

    .line 958
    :goto_5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "firstPos="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 959
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 960
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, " lastPos="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 961
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 956
    :cond_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, " Nullable "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_5

    .line 965
    :sswitch_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "Any Node: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 967
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "firstPos="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 968
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 969
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, " lastPos="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 970
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 907
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0x6 -> :sswitch_1
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
    .end sparse-switch
.end method

.method private makeDefStateList()[I
    .locals 3

    .prologue
    .line 987
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    new-array v1, v0, [I

    const/4 v0, 0x0

    .line 988
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ge v0, v2, :cond_0

    const/4 v2, -0x1

    .line 989
    aput v2, v1, v0

    .line 988
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 990
    :cond_0
    return-object v1
.end method

.method private postTreeBuildInit(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 996
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->setMaxStates(I)V

    .line 1001
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 1007
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_2

    :cond_0
    move-object v0, p1

    .line 1009
    check-cast v0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->postTreeBuildInit(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    .line 1010
    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->postTreeBuildInit(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    .line 1028
    :goto_0
    return-void

    .line 1002
    :cond_1
    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    .line 1003
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getPosition()I

    move-result v0

    .line 1004
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    aput-object p1, v1, v0

    .line 1005
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafListType:[I

    aput v3, v1, v0

    goto :goto_0

    .line 1008
    :cond_2
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    .line 1012
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 1015
    :cond_3
    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;->getChild()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->postTreeBuildInit(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    goto :goto_0

    .line 1013
    :cond_4
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    .line 1014
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    .line 1017
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    if-eq v0, v2, :cond_5

    .line 1026
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "ImplementationMessages.VAL_NIICM"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1020
    :cond_5
    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    .line 1021
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getPosition()I

    move-result v0

    .line 1022
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    aput-object p1, v1, v0

    .line 1023
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafListType:[I

    aput v2, v1, v0

    goto :goto_0
.end method


# virtual methods
.method public checkUniqueParticleAttribution(Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1041
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-array v5, v10, [I

    aput v0, v5, v2

    aput v1, v5, v3

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    move v6, v2

    .line 1044
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    array-length v1, v1

    if-lt v6, v1, :cond_1

    :cond_0
    move v4, v2

    .line 1077
    :goto_1
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ge v4, v1, :cond_d

    move v1, v2

    .line 1078
    :goto_2
    iget v5, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ge v1, v5, :cond_c

    .line 1079
    aget-object v5, v0, v4

    aget-byte v5, v5, v1

    if-eq v5, v3, :cond_b

    .line 1078
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1044
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v1, v1, v6

    if-eqz v1, :cond_0

    move v5, v2

    .line 1045
    :goto_3
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ge v5, v1, :cond_a

    .line 1046
    add-int/lit8 v1, v5, 0x1

    move v4, v1

    :goto_4
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ge v4, v1, :cond_9

    .line 1047
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v1, v1, v6

    aget v1, v1, v5

    if-ne v1, v9, :cond_3

    .line 1046
    :cond_2
    :goto_5
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_4

    .line 1048
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v1, v1, v6

    aget v1, v1, v4

    if-eq v1, v9, :cond_2

    .line 1049
    aget-object v1, v0, v5

    aget-byte v1, v1, v4

    if-nez v1, :cond_2

    .line 1051
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v1, v1, v5

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v7, v7, v4

    .line 1050
    invoke-static {v1, v7, p1}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->overlapUPA(Ljava/lang/Object;Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z

    move-result v1

    .line 1052
    if-nez v1, :cond_4

    .line 1068
    aget-object v1, v0, v5

    aput-byte v9, v1, v4

    goto :goto_5

    .line 1053
    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    if-nez v1, :cond_6

    .line 1065
    :cond_5
    aget-object v1, v0, v5

    aput-byte v3, v1, v4

    goto :goto_5

    .line 1054
    :cond_6
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    aget-object v8, v1, v6

    .line 1058
    if-eqz v8, :cond_5

    .line 1059
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v1, v1, v6

    aget v1, v1, v5

    if-eq v1, v6, :cond_7

    move v1, v2

    :goto_6
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v7, v7, v6

    aget v7, v7, v4

    if-eq v7, v6, :cond_8

    move v7, v2

    :goto_7
    xor-int/2addr v1, v7

    if-eqz v1, :cond_5

    .line 1060
    iget v1, v8, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->minOccurs:I

    iget v7, v8, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->maxOccurs:I

    if-ne v1, v7, :cond_5

    .line 1061
    aget-object v1, v0, v5

    aput-byte v9, v1, v4

    goto :goto_5

    :cond_7
    move v1, v3

    .line 1059
    goto :goto_6

    :cond_8
    move v7, v3

    goto :goto_7

    .line 1045
    :cond_9
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_3

    .line 1044
    :cond_a
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto/16 :goto_0

    .line 1083
    :cond_b
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v5, "cos-nonambig"

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v4, v7, v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    .line 1084
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v3

    .line 1083
    invoke-direct {v0, v5, v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1077
    :cond_c
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_1

    :cond_d
    move v1, v2

    .line 1091
    :goto_8
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ge v1, v0, :cond_11

    .line 1092
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapType:[I

    aget v0, v0, v1

    if-eq v0, v10, :cond_e

    .line 1091
    :goto_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 1093
    :cond_e
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    .line 1094
    iget-short v4, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v5, 0x3

    if-ne v4, v5, :cond_10

    .line 1096
    :cond_f
    return v3

    .line 1095
    :cond_10
    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-eq v0, v10, :cond_f

    goto :goto_9

    .line 1101
    :cond_11
    return v2
.end method

.method public endContentModel([I)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 431
    aget v0, p1, v2

    .line 432
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    .line 442
    return v2

    .line 433
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    if-nez v1, :cond_2

    .line 440
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 434
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    aget-object v0, v1, v0

    .line 435
    if-eqz v0, :cond_1

    const/4 v1, 0x2

    aget v1, p1, v1

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->minOccurs:I

    if-ge v1, v0, :cond_1

    .line 437
    return v2
.end method

.method findMatchingDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    move v1, v0

    .line 361
    :goto_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ge v1, v0, :cond_3

    .line 362
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapType:[I

    aget v0, v0, v1

    const/4 v2, 0x1

    .line 363
    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    .line 369
    if-eq v0, v2, :cond_2

    .line 361
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 364
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {p2, p1, v0}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getMatchingElemDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    .line 365
    if-eqz v0, :cond_0

    .line 366
    return-object v0

    .line 370
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v0, v0, v1

    return-object v0

    .line 375
    :cond_3
    return-object v3
.end method

.method findMatchingDecl(Lmf/org/apache/xerces/xni/QName;[ILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;I)Ljava/lang/Object;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 380
    aget v5, p2, v2

    move-object v1, v0

    move v0, v2

    .line 384
    :goto_0
    add-int/lit8 p4, p4, 0x1

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ge p4, v3, :cond_8

    .line 385
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v0, v0, v5

    aget v3, v0, p4

    .line 386
    if-eq v3, v7, :cond_0

    .line 388
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapType:[I

    aget v0, v0, p4

    .line 389
    if-eq v0, v4, :cond_1

    .line 395
    if-eq v0, v8, :cond_2

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v3

    .line 387
    goto :goto_0

    .line 390
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v0, v0, p4

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {p3, p1, v0}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getMatchingElemDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    .line 391
    if-nez v0, :cond_4

    move-object v1, v0

    move v0, v3

    goto :goto_0

    .line 396
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v0, v0, p4

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_0

    .line 397
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v0, v0, p4

    .line 404
    :cond_4
    :goto_1
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-eq p4, v1, :cond_5

    .line 412
    aput v3, p2, v2

    .line 413
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    aget-object v1, v1, v3

    .line 414
    if-nez v1, :cond_6

    .line 417
    :goto_2
    return-object v0

    .line 405
    :cond_5
    aget v0, p2, v2

    aput v0, p2, v4

    .line 406
    aput v7, p2, v2

    .line 407
    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->findMatchingDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 415
    :cond_6
    iget v1, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->elemIndex:I

    if-eq p4, v1, :cond_7

    :goto_3
    aput v2, p2, v8

    goto :goto_2

    :cond_7
    move v2, v4

    goto :goto_3

    :cond_8
    move v3, v0

    move-object v0, v1

    goto :goto_1
.end method

.method public getTermName(I)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1167
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v1, v1, p1

    .line 1168
    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isCompactedForUPA()Z
    .locals 1

    .prologue
    .line 1172
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fIsCompactedForUPA:Z

    return v0
.end method

.method public isFinalState(I)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 233
    if-ltz p1, :cond_0

    .line 234
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    aget-boolean v0, v0, p1

    .line 233
    :cond_0
    return v0
.end method

.method public occurenceInfo([I)[I
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1148
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    if-nez v0, :cond_1

    .line 1163
    :cond_0
    return-object v2

    .line 1149
    :cond_1
    aget v0, p1, v3

    .line 1150
    if-ltz v0, :cond_2

    .line 1153
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    aget-object v0, v1, v0

    .line 1154
    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 1155
    new-array v1, v1, [I

    .line 1156
    iget v2, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->minOccurs:I

    aput v2, v1, v3

    .line 1157
    iget v2, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->maxOccurs:I

    aput v2, v1, v4

    .line 1158
    aget v2, p1, v5

    aput v2, v1, v5

    const/4 v2, 0x3

    .line 1159
    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->elemIndex:I

    aput v0, v1, v2

    .line 1160
    return-object v1

    .line 1151
    :cond_2
    aget v0, p1, v4

    goto :goto_0
.end method

.method public oneTransition(Lmf/org/apache/xerces/xni/QName;[ILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v3, 0x0

    .line 252
    aget v6, p2, v3

    .line 254
    if-ne v6, v8, :cond_1

    .line 257
    :cond_0
    if-eq v6, v8, :cond_3

    .line 260
    :goto_0
    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->findMatchingDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, -0x2

    .line 254
    if-eq v6, v0, :cond_0

    move v2, v3

    move v0, v3

    .line 267
    :goto_1
    iget v4, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ge v2, v4, :cond_10

    .line 268
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v0, v0, v6

    aget v4, v0, v2

    .line 269
    if-eq v4, v8, :cond_4

    .line 271
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapType:[I

    aget v0, v0, v2

    .line 272
    if-eq v0, v5, :cond_5

    .line 278
    if-eq v0, v9, :cond_7

    move-object v0, v1

    .line 267
    :cond_2
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    move v0, v4

    goto :goto_1

    :cond_3
    const/4 v0, -0x2

    .line 258
    aput v0, p2, v3

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 270
    goto :goto_2

    .line 273
    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {p3, p1, v0}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getMatchingElemDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_2

    .line 288
    :goto_3
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-eq v2, v1, :cond_9

    .line 294
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    if-nez v1, :cond_a

    .line 354
    :cond_6
    :goto_4
    aput v4, p2, v3

    .line 355
    return-object v0

    .line 279
    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object v7, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    move-object v0, v1

    goto :goto_2

    .line 280
    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v0, v0, v2

    goto :goto_3

    .line 289
    :cond_9
    aget v0, p2, v3

    aput v0, p2, v5

    .line 290
    aput v8, p2, v3

    .line 291
    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->findMatchingDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 295
    :cond_a
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    aget-object v1, v1, v6

    .line 296
    if-nez v1, :cond_c

    .line 343
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    aget-object v1, v1, v4

    .line 344
    if-eqz v1, :cond_6

    .line 349
    iget v1, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->elemIndex:I

    if-eq v2, v1, :cond_b

    move v5, v3

    :cond_b
    aput v5, p2, v9

    goto :goto_4

    .line 297
    :cond_c
    if-eq v6, v4, :cond_d

    .line 327
    aget v6, p2, v9

    iget v1, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->minOccurs:I

    if-lt v6, v1, :cond_e

    .line 336
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    aget-object v1, v1, v4

    .line 337
    if-eqz v1, :cond_6

    .line 338
    iget v1, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->elemIndex:I

    if-eq v2, v1, :cond_f

    move v1, v3

    :goto_5
    aput v1, p2, v9

    goto :goto_4

    .line 298
    :cond_d
    aget v5, p2, v9

    add-int/lit8 v5, v5, 0x1

    aput v5, p2, v9

    iget v6, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->maxOccurs:I

    if-le v5, v6, :cond_6

    .line 299
    iget v1, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->maxOccurs:I

    if-eq v1, v8, :cond_6

    .line 324
    invoke-virtual {p0, p1, p2, p3, v2}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->findMatchingDecl(Lmf/org/apache/xerces/xni/QName;[ILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 329
    :cond_e
    aget v0, p2, v3

    aput v0, p2, v5

    .line 330
    aput v8, p2, v3

    .line 331
    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->findMatchingDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_f
    move v1, v5

    .line 338
    goto :goto_5

    :cond_10
    move v4, v0

    move-object v0, v1

    goto :goto_3
.end method

.method public startContentModel()[I
    .locals 1

    .prologue
    const/4 v0, 0x3

    .line 426
    new-array v0, v0, [I

    return-object v0
.end method

.method public whatCanGoHere([I)Ljava/util/Vector;
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1114
    aget v0, p1, v2

    .line 1115
    if-ltz v0, :cond_1

    .line 1117
    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    if-nez v3, :cond_2

    :goto_1
    const/4 v3, 0x2

    .line 1119
    aget v3, p1, v3

    .line 1121
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 1122
    :goto_2
    iget v5, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ge v2, v5, :cond_7

    .line 1123
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v5, v5, v0

    aget v5, v5, v2

    .line 1124
    if-ne v5, v6, :cond_3

    .line 1122
    :cond_0
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x1

    .line 1116
    aget v0, p1, v0

    goto :goto_0

    .line 1118
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    aget-object v1, v1, v0

    goto :goto_1

    .line 1125
    :cond_3
    if-nez v1, :cond_5

    .line 1141
    :cond_4
    :goto_4
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    .line 1126
    :cond_5
    if-eq v0, v5, :cond_6

    .line 1137
    iget v5, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->minOccurs:I

    if-lt v3, v5, :cond_0

    goto :goto_4

    .line 1130
    :cond_6
    iget v5, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->maxOccurs:I

    if-lt v3, v5, :cond_4

    .line 1131
    iget v5, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->maxOccurs:I

    if-ne v5, v6, :cond_0

    goto :goto_4

    .line 1144
    :cond_7
    return-object v4
.end method
