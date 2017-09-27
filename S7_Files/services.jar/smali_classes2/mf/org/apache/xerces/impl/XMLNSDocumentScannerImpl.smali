.class public Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;
.super Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;
.source "XMLNSDocumentScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;
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
    .line 67
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    return-object v0
.end method


# virtual methods
.method protected createContentDispatcher()Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;
    .locals 1

    .prologue
    .line 696
    new-instance v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;-><init>(Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;)V

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

    .line 689
    invoke-super {p0, p1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 690
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fPerformValidation:Z

    .line 691
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    .line 692
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

    .line 500
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanQName(Lmf/org/apache/xerces/xni/QName;)Z

    .line 503
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    .line 504
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    .line 513
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    if-nez v0, :cond_2

    .line 518
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v1

    .line 519
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v7}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 522
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v2

    if-eq v1, v2, :cond_3

    move v6, v0

    .line 530
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fTempString2:Lmf/org/apache/xerces/xni/XMLString;

    .line 531
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fIsEntityDeclaredVC:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v0, p0

    .line 530
    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->scanAttributeValue(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    .line 533
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v2

    .line 534
    invoke-virtual {p1, v6, v2}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setValue(ILjava/lang/String;)V

    .line 536
    if-eqz v0, :cond_4

    .line 539
    :goto_2
    invoke-virtual {p1, v6, v10}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setSpecified(IZ)V

    .line 542
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    if-nez v0, :cond_5

    .line 617
    :cond_0
    :goto_3
    return-void

    :cond_1
    const-string/jumbo v0, "EqRequiredInAttribute"

    .line 506
    new-array v1, v11, [Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v9

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v10

    .line 505
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 514
    :cond_2
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v0

    .line 515
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v7}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->addAttributeNS(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    move v6, v0

    .line 516
    goto :goto_1

    :cond_3
    const-string/jumbo v1, "AttributeNotUnique"

    .line 524
    new-array v2, v11, [Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v2, v9

    .line 525
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v2, v10

    .line 523
    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v6, v0

    goto :goto_1

    .line 537
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fTempString2:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setNonNormalizedValue(ILjava/lang/String;)V

    goto :goto_2

    .line 544
    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    .line 545
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 546
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 549
    :goto_4
    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v0, v3, :cond_b

    .line 553
    :cond_6
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v3, v2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 556
    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v0, v3, :cond_d

    .line 564
    :cond_7
    :goto_5
    sget-object v0, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-eq v2, v0, :cond_e

    .line 572
    :goto_6
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    if-eq v1, v0, :cond_f

    .line 582
    sget-object v0, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-eq v2, v0, :cond_10

    .line 590
    :cond_8
    :goto_7
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v1, v0, :cond_11

    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 595
    :goto_8
    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v2, v3, :cond_12

    .line 603
    :cond_9
    :goto_9
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_13

    move-object v1, v7

    :goto_a
    invoke-interface {v3, v0, v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 605
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setURI(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 546
    :cond_a
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    goto :goto_4

    .line 550
    :cond_b
    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v0, v3, :cond_c

    .line 610
    :goto_b
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setURI(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 550
    :cond_c
    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v1, v3, :cond_6

    goto :goto_b

    .line 556
    :cond_d
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v1, v0, :cond_7

    .line 557
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v4, "CantBindXMLNS"

    .line 559
    new-array v5, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    aput-object v8, v5, v9

    .line 557
    invoke-virtual {v0, v3, v4, v5, v11}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_5

    .line 565
    :cond_e
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v4, "CantBindXMLNS"

    .line 567
    new-array v5, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    aput-object v8, v5, v9

    .line 565
    invoke-virtual {v0, v3, v4, v5, v11}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_6

    .line 573
    :cond_f
    sget-object v0, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-eq v2, v0, :cond_8

    .line 574
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v4, "CantBindXML"

    .line 576
    new-array v5, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    aput-object v8, v5, v9

    .line 574
    invoke-virtual {v0, v3, v4, v5, v11}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_7

    .line 583
    :cond_10
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v4, "CantBindXML"

    .line 585
    new-array v5, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    aput-object v8, v5, v9

    .line 583
    invoke-virtual {v0, v3, v4, v5, v11}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_7

    :cond_11
    move-object v0, v1

    .line 590
    goto/16 :goto_8

    .line 595
    :cond_12
    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v1, v3, :cond_9

    .line 596
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v4, "EmptyPrefixedAttName"

    .line 598
    new-array v5, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    aput-object v8, v5, v9

    .line 596
    invoke-virtual {v1, v3, v4, v5, v11}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_9

    :cond_13
    move-object v1, v2

    .line 603
    goto/16 :goto_a
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

    .line 639
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement(Lmf/org/apache/xerces/xni/QName;)V

    .line 650
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 655
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    .line 656
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 660
    :goto_1
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    .line 663
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    .line 666
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityStack:[I

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityDepth:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    if-lt v0, v1, :cond_3

    .line 672
    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_4

    .line 681
    :cond_0
    :goto_3
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    return v0

    :cond_1
    const-string/jumbo v0, "ETagRequired"

    .line 651
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "ETagUnterminated"

    .line 658
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 657
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "ElementEntityMismatch"

    .line 668
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 667
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 674
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {v0, v1, v5}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 675
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

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

    .line 130
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanQName(Lmf/org/apache/xerces/xni/QName;)Z

    .line 132
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 133
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    if-nez v3, :cond_2

    .line 153
    :cond_0
    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->pushElement(Lmf/org/apache/xerces/xni/QName;)Lmf/org/apache/xerces/xni/QName;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    .line 157
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    .line 160
    :goto_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v3

    .line 163
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v4

    const/16 v5, 0x3e

    .line 164
    if-eq v4, v5, :cond_5

    const/16 v5, 0x2f

    .line 168
    if-eq v4, v5, :cond_7

    .line 177
    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->isValidNameStartChar(I)Z

    move-result v4

    if-nez v4, :cond_9

    :cond_1
    const-string/jumbo v3, "ElementUnterminated"

    .line 178
    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    :goto_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->scanAttribute(Lmf/org/apache/xerces/util/XMLAttributesImpl;)V

    goto :goto_1

    .line 134
    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/NamespaceContext;->pushContext()V

    .line 135
    iget v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fScannerState:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 136
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fPerformValidation:Z

    if-eqz v3, :cond_0

    .line 137
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v5, "MSG_GRAMMAR_NOT_FOUND"

    .line 139
    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v2

    .line 137
    invoke-virtual {v3, v4, v5, v6, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 142
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 143
    :cond_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v5, "RootElementTypeMustMatchDoctypedecl"

    .line 145
    new-array v6, v13, [Ljava/lang/Object;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    aput-object v7, v6, v2

    aput-object v0, v6, v1

    .line 143
    invoke-virtual {v3, v4, v5, v6, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_0

    .line 142
    :cond_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 165
    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move v0, v2

    .line 186
    :goto_3
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    if-nez v3, :cond_a

    .line 264
    :cond_6
    :goto_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v3, :cond_18

    .line 289
    :goto_5
    return v0

    .line 169
    :cond_7
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 170
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_6
    move v0, v1

    .line 175
    goto :goto_3

    :cond_8
    const-string/jumbo v3, "ElementUnterminated"

    .line 172
    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    .line 171
    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 177
    :cond_9
    if-eqz v3, :cond_1

    goto :goto_2

    .line 188
    :cond_a
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v3, v4, :cond_e

    .line 196
    :goto_7
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v3, :cond_f

    .line 197
    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 199
    :goto_8
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v5, v3}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 201
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iput-object v4, v3, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 203
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v3, :cond_10

    .line 208
    :cond_b
    :goto_9
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v3, :cond_11

    .line 216
    :cond_c
    :goto_a
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v5

    move v4, v2

    .line 218
    :goto_b
    if-ge v4, v5, :cond_16

    .line 219
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v3, v4, v6}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getName(ILmf/org/apache/xerces/xni/QName;)V

    .line 221
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v3, :cond_12

    .line 222
    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 223
    :goto_c
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v6, v3}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 226
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v7, :cond_13

    .line 230
    :goto_d
    sget-object v7, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v3, v7, :cond_14

    .line 218
    :cond_d
    :goto_e
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_b

    .line 189
    :cond_e
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v4, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v5, "ElementXMLNSPrefix"

    .line 191
    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v6, v2

    .line 189
    invoke-virtual {v3, v4, v5, v6, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_7

    .line 197
    :cond_f
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    goto :goto_8

    .line 203
    :cond_10
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 204
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v4, v3, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 206
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v4, v3, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    goto :goto_9

    .line 208
    :cond_11
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 209
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v4, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v5, "ElementPrefixUnbound"

    .line 211
    new-array v6, v13, [Ljava/lang/Object;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    aput-object v7, v6, v2

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v6, v1

    .line 209
    invoke-virtual {v3, v4, v5, v6, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_a

    .line 222
    :cond_12
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    goto :goto_c

    .line 226
    :cond_13
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eq v7, v6, :cond_d

    goto :goto_d

    .line 231
    :cond_14
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iput-object v6, v7, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 232
    if-eqz v6, :cond_15

    .line 238
    :goto_f
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v3, v4, v6}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setURI(ILjava/lang/String;)V

    goto :goto_e

    .line 233
    :cond_15
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v8, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v9, "AttributePrefixUnbound"

    .line 235
    new-array v10, v14, [Ljava/lang/Object;

    iget-object v11, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v11, v10, v2

    iget-object v11, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v11, v10, v1

    aput-object v3, v10, v13

    .line 233
    invoke-virtual {v7, v8, v9, v10, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_f

    .line 243
    :cond_16
    if-le v5, v1, :cond_6

    .line 244
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->checkDuplicatesNS()Lmf/org/apache/xerces/xni/QName;

    move-result-object v3

    .line 245
    if-eqz v3, :cond_6

    .line 246
    iget-object v4, v3, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v4, :cond_17

    .line 253
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v5, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v6, "AttributeNotUnique"

    .line 255
    new-array v7, v13, [Ljava/lang/Object;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v8, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v8, v7, v2

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v7, v1

    .line 253
    invoke-virtual {v4, v5, v6, v7, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_4

    .line 247
    :cond_17
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v5, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v6, "AttributeNSNotUnique"

    .line 249
    new-array v7, v14, [Ljava/lang/Object;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v8, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v8, v7, v2

    iget-object v8, v3, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    aput-object v8, v7, v1

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    aput-object v3, v7, v13

    .line 247
    invoke-virtual {v4, v5, v6, v7, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_4

    .line 265
    :cond_18
    if-nez v0, :cond_19

    .line 284
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {v1, v2, v3, v12}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_5

    .line 268
    :cond_19
    iget v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    .line 271
    iget v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityStack:[I

    iget v5, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityDepth:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    if-lt v3, v4, :cond_1a

    .line 276
    :goto_10
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {v1, v2, v3, v12}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 278
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    if-nez v1, :cond_1b

    .line 282
    :goto_11
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement(Lmf/org/apache/xerces/xni/QName;)V

    goto/16 :goto_5

    :cond_1a
    const-string/jumbo v3, "ElementEntityMismatch"

    .line 273
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v1, v2

    .line 272
    invoke-virtual {p0, v3, v1}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10

    .line 279
    :cond_1b
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

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

    .line 317
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 318
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    if-nez v3, :cond_2

    .line 338
    :cond_0
    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->pushElement(Lmf/org/apache/xerces/xni/QName;)Lmf/org/apache/xerces/xni/QName;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    .line 342
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    .line 346
    :goto_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v3

    const/16 v4, 0x3e

    .line 347
    if-eq v3, v4, :cond_5

    const/16 v4, 0x2f

    .line 351
    if-eq v3, v4, :cond_7

    .line 360
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->isValidNameStartChar(I)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_1
    const-string/jumbo v3, "ElementUnterminated"

    .line 361
    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    :goto_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->scanAttribute(Lmf/org/apache/xerces/util/XMLAttributesImpl;)V

    .line 368
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v3

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fSawSpace:Z

    goto :goto_1

    .line 319
    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/NamespaceContext;->pushContext()V

    .line 320
    iget v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fScannerState:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 321
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fPerformValidation:Z

    if-eqz v3, :cond_0

    .line 322
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v5, "MSG_GRAMMAR_NOT_FOUND"

    .line 324
    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v2

    .line 322
    invoke-virtual {v3, v4, v5, v6, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 327
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 328
    :cond_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v5, "RootElementTypeMustMatchDoctypedecl"

    .line 330
    new-array v6, v13, [Ljava/lang/Object;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    aput-object v7, v6, v2

    aput-object v0, v6, v1

    .line 328
    invoke-virtual {v3, v4, v5, v6, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_0

    .line 327
    :cond_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 348
    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move v0, v2

    .line 372
    :goto_3
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    if-nez v3, :cond_a

    .line 450
    :cond_6
    :goto_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v3, :cond_18

    .line 475
    :goto_5
    return v0

    .line 352
    :cond_7
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 353
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_6
    move v0, v1

    .line 358
    goto :goto_3

    :cond_8
    const-string/jumbo v3, "ElementUnterminated"

    .line 355
    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    .line 354
    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 360
    :cond_9
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fSawSpace:Z

    if-eqz v3, :cond_1

    goto :goto_2

    .line 374
    :cond_a
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v3, v4, :cond_e

    .line 382
    :goto_7
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v3, :cond_f

    .line 383
    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 385
    :goto_8
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v5, v3}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 387
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iput-object v4, v3, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 389
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v3, :cond_10

    .line 394
    :cond_b
    :goto_9
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v3, :cond_11

    .line 402
    :cond_c
    :goto_a
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v5

    move v4, v2

    .line 404
    :goto_b
    if-ge v4, v5, :cond_16

    .line 405
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v3, v4, v6}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getName(ILmf/org/apache/xerces/xni/QName;)V

    .line 407
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v3, :cond_12

    .line 408
    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 409
    :goto_c
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v6, v3}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 412
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v7, :cond_13

    .line 416
    :goto_d
    sget-object v7, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v3, v7, :cond_14

    .line 404
    :cond_d
    :goto_e
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_b

    .line 375
    :cond_e
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v4, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v5, "ElementXMLNSPrefix"

    .line 377
    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v6, v2

    .line 375
    invoke-virtual {v3, v4, v5, v6, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_7

    .line 383
    :cond_f
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    goto :goto_8

    .line 389
    :cond_10
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 390
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v4, v3, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 392
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v4, v3, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    goto :goto_9

    .line 394
    :cond_11
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 395
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v4, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v5, "ElementPrefixUnbound"

    .line 397
    new-array v6, v13, [Ljava/lang/Object;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    aput-object v7, v6, v2

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v6, v1

    .line 395
    invoke-virtual {v3, v4, v5, v6, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_a

    .line 408
    :cond_12
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    goto :goto_c

    .line 412
    :cond_13
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eq v7, v6, :cond_d

    goto :goto_d

    .line 417
    :cond_14
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iput-object v6, v7, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 418
    if-eqz v6, :cond_15

    .line 424
    :goto_f
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v3, v4, v6}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setURI(ILjava/lang/String;)V

    goto :goto_e

    .line 419
    :cond_15
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v8, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v9, "AttributePrefixUnbound"

    .line 421
    new-array v10, v14, [Ljava/lang/Object;

    iget-object v11, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v11, v10, v2

    iget-object v11, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v11, v10, v1

    aput-object v3, v10, v13

    .line 419
    invoke-virtual {v7, v8, v9, v10, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_f

    .line 429
    :cond_16
    if-le v5, v1, :cond_6

    .line 430
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->checkDuplicatesNS()Lmf/org/apache/xerces/xni/QName;

    move-result-object v3

    .line 431
    if-eqz v3, :cond_6

    .line 432
    iget-object v4, v3, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v4, :cond_17

    .line 439
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v5, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v6, "AttributeNotUnique"

    .line 441
    new-array v7, v13, [Ljava/lang/Object;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v8, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v8, v7, v2

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v7, v1

    .line 439
    invoke-virtual {v4, v5, v6, v7, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_4

    .line 433
    :cond_17
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v5, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string/jumbo v6, "AttributeNSNotUnique"

    .line 435
    new-array v7, v14, [Ljava/lang/Object;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v8, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v8, v7, v2

    iget-object v8, v3, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    aput-object v8, v7, v1

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    aput-object v3, v7, v13

    .line 433
    invoke-virtual {v4, v5, v6, v7, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_4

    .line 451
    :cond_18
    if-nez v0, :cond_19

    .line 470
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {v1, v2, v3, v12}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_5

    .line 454
    :cond_19
    iget v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    .line 457
    iget v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityStack:[I

    iget v5, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityDepth:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    if-lt v3, v4, :cond_1a

    .line 462
    :goto_10
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {v1, v2, v3, v12}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 464
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    if-nez v1, :cond_1b

    .line 468
    :goto_11
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement(Lmf/org/apache/xerces/xni/QName;)V

    goto/16 :goto_5

    :cond_1a
    const-string/jumbo v3, "ElementEntityMismatch"

    .line 459
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v1, v2

    .line 458
    invoke-virtual {p0, v3, v1}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10

    .line 465
    :cond_1b
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

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
    .line 301
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanQName(Lmf/org/apache/xerces/xni/QName;)Z

    .line 304
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fSawSpace:Z

    .line 305
    return-void
.end method

.method public setDTDValidator(Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    .line 102
    return-void
.end method
