.class public Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;
.super Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;
.source "XMLEntityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/XMLEntityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScannedEntity"
.end annotation


# instance fields
.field public baseCharOffset:I

.field public ch:[C

.field public columnNumber:I

.field public count:I

.field public encoding:Ljava/lang/String;

.field public entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

.field externallySpecifiedEncoding:Z

.field private fByteBuffer:[B

.field private fCharacterBuffer:Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

.field public isExternal:Z

.field public lineNumber:I

.field public literal:Z

.field public mayReadChunks:Z

.field public position:I

.field public reader:Ljava/io/Reader;

.field public startPosition:I

.field public stream:Ljava/io/InputStream;

.field final synthetic this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

.field public xmlVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/XMLEntityManager;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/io/InputStream;Ljava/io/Reader;[BLjava/lang/String;ZZZ)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2691
    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    .line 2692
    iget-boolean v0, p1, Lmf/org/apache/xerces/impl/XMLEntityManager;->fInExternalSubset:Z

    invoke-direct {p0, p2, v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;-><init>(Ljava/lang/String;Z)V

    .line 2628
    iput v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    .line 2631
    iput v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 2642
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->externallySpecifiedEncoding:Z

    const-string/jumbo v0, "1.0"

    .line 2647
    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->xmlVersion:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2660
    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 2693
    iput-object p3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    .line 2694
    iput-object p4, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->stream:Ljava/io/InputStream;

    .line 2695
    iput-object p5, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->reader:Ljava/io/Reader;

    .line 2696
    iput-object p7, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->encoding:Ljava/lang/String;

    .line 2697
    iput-boolean p8, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->literal:Z

    .line 2698
    iput-boolean p9, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->mayReadChunks:Z

    .line 2699
    iput-boolean p10, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal:Z

    .line 2700
    # getter for: Lmf/org/apache/xerces/impl/XMLEntityManager;->fCharacterBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;
    invoke-static {p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->access$0(Lmf/org/apache/xerces/impl/XMLEntityManager;)Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;

    move-result-object v0

    invoke-virtual {v0, p10}, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->getBuffer(Z)Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->fCharacterBuffer:Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    .line 2701
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->fCharacterBuffer:Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    # getter for: Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;->ch:[C
    invoke-static {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;->access$0(Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;)[C

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 2702
    iput-object p6, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->fByteBuffer:[B

    .line 2703
    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;)Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;
    .locals 1

    .prologue
    .line 2678
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->fCharacterBuffer:Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    return-object v0
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;)[B
    .locals 1

    .prologue
    .line 2681
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->fByteBuffer:[B

    return-object v0
.end method


# virtual methods
.method public getCharacterOffset()I
    .locals 3

    .prologue
    .line 2793
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    .line 2794
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 2795
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    .line 2796
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2794
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 2797
    :cond_0
    iget v1, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iget v2, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int v0, v2, v0

    add-int/2addr v0, v1

    return v0

    :cond_1
    const/4 v0, -0x1

    .line 2800
    return v0
.end method

.method public getColumnNumber()I
    .locals 3

    .prologue
    .line 2779
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    .line 2780
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 2781
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    .line 2782
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2780
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 2783
    :cond_0
    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    return v0

    :cond_1
    const/4 v0, -0x1

    .line 2786
    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2806
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    .line 2807
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 2808
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    .line 2809
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2807
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 2810
    :cond_0
    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->encoding:Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 2813
    return-object v0
.end method

.method public getExpandedSystemId()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2731
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    .line 2732
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 2734
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    .line 2736
    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    if-nez v2, :cond_1

    .line 2732
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 2737
    :cond_1
    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2738
    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2741
    :cond_2
    return-object v3
.end method

.method public getLineNumber()I
    .locals 3

    .prologue
    .line 2765
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    .line 2766
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 2767
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    .line 2768
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2766
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 2769
    :cond_0
    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    return v0

    :cond_1
    const/4 v0, -0x1

    .line 2772
    return v0
.end method

.method public getLiteralSystemId()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2748
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    .line 2749
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 2751
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    .line 2753
    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    if-nez v2, :cond_1

    .line 2749
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 2754
    :cond_1
    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2755
    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2758
    :cond_2
    return-object v3
.end method

.method public getXMLVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2819
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    .line 2820
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 2821
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    .line 2822
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2820
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 2823
    :cond_0
    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->xmlVersion:Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 2826
    return-object v0
.end method

.method public isEncodingExternallySpecified()Z
    .locals 1

    .prologue
    .line 2831
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->externallySpecifiedEncoding:Z

    return v0
.end method

.method public final isExternal()Z
    .locals 1

    .prologue
    .line 2711
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal:Z

    return v0
.end method

.method public final isUnparsed()Z
    .locals 1

    .prologue
    .line 2716
    const/4 v0, 0x0

    return v0
.end method

.method public setEncodingExternallySpecified(Z)V
    .locals 0

    .prologue
    .line 2836
    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->externallySpecifiedEncoding:Z

    .line 2837
    return-void
.end method

.method public setReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2720
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->fByteBuffer:[B

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->access$1(Lmf/org/apache/xerces/impl/XMLEntityManager;[B)V

    .line 2721
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->reader:Ljava/io/Reader;

    .line 2722
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    # getter for: Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B
    invoke-static {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->access$2(Lmf/org/apache/xerces/impl/XMLEntityManager;)[B

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->fByteBuffer:[B

    .line 2723
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2846
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "name=\""

    .line 2847
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v1, ",ch="

    .line 2848
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2849
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string/jumbo v1, ",position="

    .line 2850
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v1, ",count="

    .line 2851
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v1, ",baseCharOffset="

    .line 2852
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v1, ",startPosition="

    .line 2853
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2854
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
