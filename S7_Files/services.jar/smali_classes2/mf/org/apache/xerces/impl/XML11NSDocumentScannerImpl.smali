.class public Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;
.super Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;
.source "XML11NSDocumentScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;
    }
.end annotation


# instance fields
.field protected fBindNamespaces:Z

.field private fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

.field protected fPerformValidation:Z

.field private fSawSpace:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    return-object v0
.end method


# virtual methods
.method protected createContentDispatcher()Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;
    .locals 1

    .prologue
    .line 773
    new-instance v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;-><init>(Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;)V

    return-object v0
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 766
    invoke-super {p0, p1}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 767
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fPerformValidation:Z

    .line 768
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    .line 769
    return-void
.end method

.method protected scanAttribute(Lmf/org/apache/xerces/util/XMLAttributesImpl;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 555
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanQName(Lmf/org/apache/xerces/xni/QName;)Z

    .line 558
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    .line 559
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 566
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    .line 571
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    if-nez v0, :cond_2

    .line 578
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v1

    .line 581
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    .line 582
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    .line 580
    invoke-virtual {p1, v0, v2, v7}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 586
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v2

    if-eq v1, v2, :cond_3

    move v6, v0

    .line 596
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fTempString2:Lmf/org/apache/xerces/xni/XMLString;

    .line 597
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fIsEntityDeclaredVC:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v0, p0

    .line 596
    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->scanAttributeValue(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    .line 599
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v2

    .line 600
    invoke-virtual {p1, v6, v2}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setValue(ILjava/lang/String;)V

    .line 602
    if-eqz v0, :cond_4

    .line 605
    :goto_2
    invoke-virtual {p1, v6, v10}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setSpecified(IZ)V

    .line 608
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    if-nez v0, :cond_5

    .line 692
    :cond_0
    :goto_3
    return-void

    :cond_1
    const-string/jumbo v0, "EqRequiredInAttribute"

    .line 562
    new-array v1, v11, [Ljava/lang/Object;

    .line 563
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v9

    .line 564
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v10

    .line 560
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 572
    :cond_2
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v0

    .line 574
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    .line 575
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    .line 573
    invoke-virtual {p1, v1, v2, v7}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->addAttributeNS(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    move v6, v0

    .line 577
    goto :goto_1

    :cond_3
    const-string/jumbo v1, "AttributeNotUnique"

    .line 589
    new-array v2, v11, [Ljava/lang/Object;

    .line 590
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v2, v9

    .line 591
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v2, v10

    .line 587
    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v6, v0

    goto :goto_1

    .line 603
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fTempString2:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setNonNormalizedValue(ILjava/lang/String;)V

    goto :goto_2

    .line 610
    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    .line 612
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 614
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 617
    :goto_4
    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v0, v3, :cond_a

    .line 622
    :cond_6
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v3, v2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 625
    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v0, v3, :cond_c

    .line 635
    :cond_7
    :goto_5
    sget-object v0, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-eq v2, v0, :cond_d

    .line 644
    :goto_6
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    if-eq v1, v0, :cond_e

    .line 655
    sget-object v0, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-eq v2, v0, :cond_f

    .line 665
    :cond_8
    :goto_7
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v1, v0, :cond_10

    .line 667
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 672
    :goto_8
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    .line 674
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_11

    move-object v1, v7

    .line 672
    :goto_9
    invoke-interface {v3, v0, v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 678
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 676
    invoke-virtual {p1, v6, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setURI(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 613
    :cond_9
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    goto :goto_4

    .line 618
    :cond_a
    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v0, v3, :cond_b

    .line 682
    :goto_a
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 683
    invoke-virtual {p1, v6, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setURI(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 619
    :cond_b
    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v1, v3, :cond_6

    goto :goto_a

    .line 626
    :cond_c
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v1, v0, :cond_7

    .line 627
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v4, "CantBindXMLNS"

    .line 630
    new-array v5, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    aput-object v8, v5, v9

    .line 627
    invoke-virtual {v0, v3, v4, v5, v11}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_5

    .line 636
    :cond_d
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v4, "CantBindXMLNS"

    .line 639
    new-array v5, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    aput-object v8, v5, v9

    .line 636
    invoke-virtual {v0, v3, v4, v5, v11}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_6

    .line 645
    :cond_e
    sget-object v0, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-eq v2, v0, :cond_8

    .line 646
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v4, "CantBindXML"

    .line 649
    new-array v5, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    aput-object v8, v5, v9

    .line 646
    invoke-virtual {v0, v3, v4, v5, v11}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_7

    .line 656
    :cond_f
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v4, "CantBindXML"

    .line 659
    new-array v5, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    aput-object v8, v5, v9

    .line 656
    invoke-virtual {v0, v3, v4, v5, v11}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_7

    :cond_10
    move-object v0, v1

    .line 666
    goto/16 :goto_8

    :cond_11
    move-object v1, v2

    .line 674
    goto/16 :goto_9
.end method

.method protected scanEndElement()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 713
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement(Lmf/org/apache/xerces/xni/QName;)V

    .line 724
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 731
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    .line 732
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 737
    :goto_1
    iget v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fMarkupDepth:I

    .line 740
    iget v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fMarkupDepth:I

    .line 743
    iget v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fMarkupDepth:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityStack:[I

    iget v2, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityDepth:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    if-lt v0, v1, :cond_3

    .line 750
    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_4

    .line 759
    :cond_0
    :goto_3
    iget v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fMarkupDepth:I

    return v0

    :cond_1
    const-string/jumbo v0, "ETagRequired"

    .line 727
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 725
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "ETagUnterminated"

    .line 735
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 733
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "ElementEntityMismatch"

    .line 746
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 744
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 752
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {v0, v1, v5}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 753
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/NamespaceContext;->popContext()V

    goto :goto_3
.end method

.method protected scanStartElement()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 133
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanQName(Lmf/org/apache/xerces/xni/QName;)Z

    .line 135
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 136
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    if-nez v3, :cond_3

    .line 159
    :cond_0
    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->pushElement(Lmf/org/apache/xerces/xni/QName;)Lmf/org/apache/xerces/xni/QName;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    .line 163
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    .line 166
    :goto_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v3

    .line 169
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v4

    const/16 v5, 0x3e

    .line 170
    if-eq v4, v5, :cond_6

    const/16 v5, 0x2f

    .line 173
    if-eq v4, v5, :cond_8

    .line 182
    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->isValidNameStartChar(I)Z

    move-result v5

    if-nez v5, :cond_a

    .line 185
    :cond_1
    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->isValidNameStartHighSurrogate(I)Z

    move-result v4

    if-nez v4, :cond_b

    :cond_2
    const-string/jumbo v3, "ElementUnterminated"

    .line 188
    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    .line 186
    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    :goto_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->scanAttribute(Lmf/org/apache/xerces/util/XMLAttributesImpl;)V

    goto :goto_1

    .line 137
    :cond_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/NamespaceContext;->pushContext()V

    .line 138
    iget v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fScannerState:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 139
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fPerformValidation:Z

    if-eqz v3, :cond_0

    .line 140
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v5, "MSG_GRAMMAR_NOT_FOUND"

    .line 143
    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v2

    .line 140
    invoke-virtual {v3, v4, v5, v6, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 146
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 148
    :cond_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v5, "RootElementTypeMustMatchDoctypedecl"

    .line 151
    new-array v6, v13, [Ljava/lang/Object;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    aput-object v7, v6, v2

    aput-object v0, v6, v1

    .line 148
    invoke-virtual {v3, v4, v5, v6, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_0

    .line 147
    :cond_5
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 171
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move v0, v2

    .line 197
    :goto_3
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    if-nez v3, :cond_c

    .line 290
    :cond_7
    :goto_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v3, :cond_1a

    .line 317
    :goto_5
    return v0

    .line 174
    :cond_8
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 175
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v3

    if-eqz v3, :cond_9

    :goto_6
    move v0, v1

    .line 181
    goto :goto_3

    :cond_9
    const-string/jumbo v3, "ElementUnterminated"

    .line 178
    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    .line 176
    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 182
    :cond_a
    if-eqz v3, :cond_1

    goto :goto_2

    .line 185
    :cond_b
    if-eqz v3, :cond_2

    goto :goto_2

    .line 199
    :cond_c
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v3, v4, :cond_10

    .line 209
    :goto_7
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v3, :cond_11

    .line 211
    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 213
    :goto_8
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v5, v3}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 215
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iput-object v4, v3, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 217
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v3, :cond_12

    .line 222
    :cond_d
    :goto_9
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v3, :cond_13

    .line 233
    :cond_e
    :goto_a
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v5

    move v4, v2

    .line 234
    :goto_b
    if-ge v4, v5, :cond_18

    .line 235
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v3, v4, v6}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getName(ILmf/org/apache/xerces/xni/QName;)V

    .line 238
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v3, :cond_14

    .line 240
    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 241
    :goto_c
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v6, v3}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 244
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v7, :cond_15

    .line 248
    :goto_d
    sget-object v7, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v3, v7, :cond_16

    .line 234
    :cond_f
    :goto_e
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_b

    .line 200
    :cond_10
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v4, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v5, "ElementXMLNSPrefix"

    .line 203
    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v6, v2

    .line 200
    invoke-virtual {v3, v4, v5, v6, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_7

    .line 210
    :cond_11
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    goto :goto_8

    .line 217
    :cond_12
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v3, :cond_d

    .line 218
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v4, v3, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 220
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v4, v3, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    goto :goto_9

    .line 222
    :cond_13
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v3, :cond_e

    .line 223
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v4, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v5, "ElementPrefixUnbound"

    .line 226
    new-array v6, v13, [Ljava/lang/Object;

    .line 227
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    aput-object v7, v6, v2

    .line 228
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v6, v1

    .line 223
    invoke-virtual {v3, v4, v5, v6, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_a

    .line 239
    :cond_14
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    goto :goto_c

    .line 245
    :cond_15
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eq v7, v6, :cond_f

    goto :goto_d

    .line 249
    :cond_16
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iput-object v6, v7, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 250
    if-eqz v6, :cond_17

    .line 260
    :goto_f
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v3, v4, v6}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setURI(ILjava/lang/String;)V

    goto :goto_e

    .line 251
    :cond_17
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v8, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v9, "AttributePrefixUnbound"

    .line 254
    new-array v10, v14, [Ljava/lang/Object;

    .line 255
    iget-object v11, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v11, v10, v2

    .line 256
    iget-object v11, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v11, v10, v1

    .line 257
    aput-object v3, v10, v13

    .line 251
    invoke-virtual {v7, v8, v9, v10, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_f

    .line 264
    :cond_18
    if-le v5, v1, :cond_7

    .line 265
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->checkDuplicatesNS()Lmf/org/apache/xerces/xni/QName;

    move-result-object v3

    .line 266
    if-eqz v3, :cond_7

    .line 267
    iget-object v4, v3, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v4, :cond_19

    .line 277
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v5, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v6, "AttributeNotUnique"

    .line 280
    new-array v7, v13, [Ljava/lang/Object;

    .line 281
    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v8, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v8, v7, v2

    .line 282
    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v7, v1

    .line 277
    invoke-virtual {v4, v5, v6, v7, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_4

    .line 268
    :cond_19
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v5, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v6, "AttributeNSNotUnique"

    .line 271
    new-array v7, v14, [Ljava/lang/Object;

    .line 272
    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v8, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v8, v7, v2

    .line 273
    iget-object v8, v3, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    aput-object v8, v7, v1

    .line 274
    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    aput-object v3, v7, v13

    .line 268
    invoke-virtual {v4, v5, v6, v7, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_4

    .line 291
    :cond_1a
    if-nez v0, :cond_1b

    .line 311
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {v1, v2, v3, v12}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_5

    .line 294
    :cond_1b
    iget v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fMarkupDepth:I

    .line 297
    iget v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fMarkupDepth:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityStack:[I

    iget v5, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityDepth:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    if-lt v3, v4, :cond_1c

    .line 303
    :goto_10
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {v1, v2, v3, v12}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 305
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    if-nez v1, :cond_1d

    .line 309
    :goto_11
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement(Lmf/org/apache/xerces/xni/QName;)V

    goto/16 :goto_5

    :cond_1c
    const-string/jumbo v3, "ElementEntityMismatch"

    .line 300
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v1, v2

    .line 298
    invoke-virtual {p0, v3, v1}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10

    .line 306
    :cond_1d
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->popContext()V

    goto :goto_11
.end method

.method protected scanStartElementAfterName()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 345
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 346
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    if-nez v3, :cond_3

    .line 369
    :cond_0
    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->pushElement(Lmf/org/apache/xerces/xni/QName;)Lmf/org/apache/xerces/xni/QName;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    .line 373
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    .line 377
    :goto_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v3

    const/16 v4, 0x3e

    .line 378
    if-eq v3, v4, :cond_6

    const/16 v4, 0x2f

    .line 381
    if-eq v3, v4, :cond_8

    .line 390
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->isValidNameStartChar(I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 393
    :cond_1
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->isValidNameStartHighSurrogate(I)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_2
    const-string/jumbo v3, "ElementUnterminated"

    .line 396
    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    .line 394
    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    :goto_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->scanAttribute(Lmf/org/apache/xerces/util/XMLAttributesImpl;)V

    .line 404
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v3

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fSawSpace:Z

    goto :goto_1

    .line 347
    :cond_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/NamespaceContext;->pushContext()V

    .line 348
    iget v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fScannerState:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 349
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fPerformValidation:Z

    if-eqz v3, :cond_0

    .line 350
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v5, "MSG_GRAMMAR_NOT_FOUND"

    .line 353
    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v2

    .line 350
    invoke-virtual {v3, v4, v5, v6, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 356
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 358
    :cond_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v5, "RootElementTypeMustMatchDoctypedecl"

    .line 361
    new-array v6, v13, [Ljava/lang/Object;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    aput-object v7, v6, v2

    aput-object v0, v6, v1

    .line 358
    invoke-virtual {v3, v4, v5, v6, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_0

    .line 357
    :cond_5
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 379
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move v0, v2

    .line 408
    :goto_3
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    if-nez v3, :cond_c

    .line 501
    :cond_7
    :goto_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v3, :cond_1a

    .line 528
    :goto_5
    return v0

    .line 382
    :cond_8
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 383
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v3

    if-eqz v3, :cond_9

    :goto_6
    move v0, v1

    .line 389
    goto :goto_3

    :cond_9
    const-string/jumbo v3, "ElementUnterminated"

    .line 386
    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    .line 384
    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 390
    :cond_a
    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fSawSpace:Z

    if-eqz v4, :cond_1

    goto :goto_2

    .line 393
    :cond_b
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fSawSpace:Z

    if-eqz v3, :cond_2

    goto :goto_2

    .line 410
    :cond_c
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v3, v4, :cond_10

    .line 420
    :goto_7
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v3, :cond_11

    .line 422
    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 424
    :goto_8
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v5, v3}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 426
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iput-object v4, v3, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 428
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v3, :cond_12

    .line 433
    :cond_d
    :goto_9
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v3, :cond_13

    .line 444
    :cond_e
    :goto_a
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v5

    move v4, v2

    .line 445
    :goto_b
    if-ge v4, v5, :cond_18

    .line 446
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v3, v4, v6}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getName(ILmf/org/apache/xerces/xni/QName;)V

    .line 449
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v3, :cond_14

    .line 451
    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 452
    :goto_c
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v6, v3}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 455
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v7, :cond_15

    .line 459
    :goto_d
    sget-object v7, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v3, v7, :cond_16

    .line 445
    :cond_f
    :goto_e
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_b

    .line 411
    :cond_10
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v4, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v5, "ElementXMLNSPrefix"

    .line 414
    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v6, v2

    .line 411
    invoke-virtual {v3, v4, v5, v6, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_7

    .line 421
    :cond_11
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    goto :goto_8

    .line 428
    :cond_12
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v3, :cond_d

    .line 429
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v4, v3, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 431
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v4, v3, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    goto :goto_9

    .line 433
    :cond_13
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v3, :cond_e

    .line 434
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v4, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v5, "ElementPrefixUnbound"

    .line 437
    new-array v6, v13, [Ljava/lang/Object;

    .line 438
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    aput-object v7, v6, v2

    .line 439
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v6, v1

    .line 434
    invoke-virtual {v3, v4, v5, v6, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_a

    .line 450
    :cond_14
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    goto :goto_c

    .line 456
    :cond_15
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eq v7, v6, :cond_f

    goto :goto_d

    .line 460
    :cond_16
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iput-object v6, v7, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 461
    if-eqz v6, :cond_17

    .line 471
    :goto_f
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v3, v4, v6}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setURI(ILjava/lang/String;)V

    goto :goto_e

    .line 462
    :cond_17
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v8, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v9, "AttributePrefixUnbound"

    .line 465
    new-array v10, v14, [Ljava/lang/Object;

    .line 466
    iget-object v11, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v11, v10, v2

    .line 467
    iget-object v11, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v11, v10, v1

    .line 468
    aput-object v3, v10, v13

    .line 462
    invoke-virtual {v7, v8, v9, v10, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_f

    .line 475
    :cond_18
    if-le v5, v1, :cond_7

    .line 476
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->checkDuplicatesNS()Lmf/org/apache/xerces/xni/QName;

    move-result-object v3

    .line 477
    if-eqz v3, :cond_7

    .line 478
    iget-object v4, v3, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v4, :cond_19

    .line 488
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v5, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v6, "AttributeNotUnique"

    .line 491
    new-array v7, v13, [Ljava/lang/Object;

    .line 492
    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v8, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v8, v7, v2

    .line 493
    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v7, v1

    .line 488
    invoke-virtual {v4, v5, v6, v7, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_4

    .line 479
    :cond_19
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v5, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v6, "AttributeNSNotUnique"

    .line 482
    new-array v7, v14, [Ljava/lang/Object;

    .line 483
    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v8, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v8, v7, v2

    .line 484
    iget-object v8, v3, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    aput-object v8, v7, v1

    .line 485
    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    aput-object v3, v7, v13

    .line 479
    invoke-virtual {v4, v5, v6, v7, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_4

    .line 502
    :cond_1a
    if-nez v0, :cond_1b

    .line 522
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {v1, v2, v3, v12}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_5

    .line 505
    :cond_1b
    iget v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fMarkupDepth:I

    .line 508
    iget v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fMarkupDepth:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityStack:[I

    iget v5, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityDepth:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    if-lt v3, v4, :cond_1c

    .line 514
    :goto_10
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {v1, v2, v3, v12}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 516
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    if-nez v1, :cond_1d

    .line 520
    :goto_11
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement(Lmf/org/apache/xerces/xni/QName;)V

    goto/16 :goto_5

    :cond_1c
    const-string/jumbo v3, "ElementEntityMismatch"

    .line 511
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v1, v2

    .line 509
    invoke-virtual {p0, v3, v1}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10

    .line 517
    :cond_1d
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->popContext()V

    goto :goto_11
.end method

.method protected scanStartElementName()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 329
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanQName(Lmf/org/apache/xerces/xni/QName;)Z

    .line 332
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fSawSpace:Z

    .line 333
    return-void
.end method

.method public setDTDValidator(Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    .line 105
    return-void
.end method
