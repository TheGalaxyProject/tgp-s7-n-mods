.class final Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;
.super Ljava/lang/Object;
.source "SchemaContentHandler.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# instance fields
.field private final fAttributeQName:Lmf/org/apache/xerces/xni/QName;

.field private final fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

.field private final fElementQName:Lmf/org/apache/xerces/xni/QName;

.field private fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

.field private fNamespacePrefixes:Z

.field private fNeedPushNSContext:Z

.field private final fSAXLocatorWrapper:Lmf/org/apache/xerces/util/SAXLocatorWrapper;

.field private fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

.field private final fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

.field private fStringsInternalized:Z

.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field private final fTempString:Lmf/org/apache/xerces/xni/XMLString;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lmf/org/apache/xerces/util/SAXLocatorWrapper;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SAXLocatorWrapper;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSAXLocatorWrapper:Lmf/org/apache/xerces/util/SAXLocatorWrapper;

    .line 64
    new-instance v0, Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    .line 70
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNamespacePrefixes:Z

    .line 73
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fStringsInternalized:Z

    .line 76
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    .line 77
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    .line 78
    new-instance v0, Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    .line 79
    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    .line 80
    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    .line 85
    return-void
.end method

.method private addNamespaceDeclarations(I)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    move v4, v0

    .line 324
    :goto_0
    if-ge v4, p1, :cond_2

    .line 325
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/util/NamespaceSupport;->getDeclaredPrefixAt(I)Ljava/lang/String;

    move-result-object v1

    .line 326
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 327
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 337
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 338
    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    .line 339
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    .line 341
    :goto_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    sget-object v6, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {v5, v2, v1, v0, v6}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    .line 343
    if-nez v3, :cond_1

    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 342
    :goto_2
    invoke-virtual {v1, v2, v5, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 328
    :cond_0
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    .line 330
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 331
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 333
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v5, v5, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v6, v6, Lmf/org/apache/xerces/util/XMLStringBuffer;->offset:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v7, v7, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-virtual {v0, v5, v6, v7}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v3

    .line 343
    goto :goto_2

    .line 345
    :cond_2
    return-void
.end method

.method static convertToSAXException(Lmf/org/apache/xerces/xni/XNIException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 379
    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v0

    .line 380
    if-eqz v0, :cond_0

    .line 383
    instance-of v1, v0, Lorg/xml/sax/SAXException;

    if-nez v1, :cond_1

    .line 386
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 381
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/XNIException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_1
    check-cast v0, Lorg/xml/sax/SAXException;

    throw v0
.end method

.method static convertToSAXParseException(Lmf/org/apache/xerces/xni/parser/XMLParseException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 360
    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getException()Ljava/lang/Exception;

    move-result-object v0

    .line 361
    if-eqz v0, :cond_0

    .line 371
    instance-of v1, v0, Lorg/xml/sax/SAXException;

    if-nez v1, :cond_1

    .line 375
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 364
    :cond_0
    new-instance v0, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    .line 365
    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    .line 368
    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    .line 369
    new-instance v1, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v1

    .line 373
    :cond_1
    check-cast v0, Lorg/xml/sax/SAXException;

    throw v0
.end method

.method private fillQName(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 275
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fStringsInternalized:Z

    if-eqz v1, :cond_1

    .line 281
    if-nez p2, :cond_6

    :goto_0
    move-object v0, p2

    .line 284
    :cond_0
    if-eqz p3, :cond_7

    move-object v1, p3

    .line 287
    :goto_1
    if-eqz p4, :cond_8

    .line 291
    :goto_2
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    const/16 v3, 0x3a

    .line 292
    invoke-virtual {p4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    .line 293
    if-ne v3, v4, :cond_9

    .line 301
    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v1, v3, :cond_b

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    .line 304
    :goto_3
    invoke-virtual {p1, v1, v2, p4, v0}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    return-void

    .line 276
    :cond_1
    if-nez p2, :cond_3

    .line 277
    :cond_2
    :goto_4
    if-nez p3, :cond_4

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 278
    :goto_5
    if-nez p4, :cond_5

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_6
    move-object p4, v2

    .line 279
    goto :goto_2

    .line 276
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 277
    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v1, p3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 278
    :cond_5
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v2, p4}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 281
    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 285
    :cond_7
    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_1

    .line 288
    :cond_8
    sget-object p4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_2

    .line 294
    :cond_9
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {p4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 296
    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v1, v4, :cond_a

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_3

    .line 297
    :cond_a
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    .line 299
    goto :goto_3

    :cond_b
    move-object v1, v2

    move-object v2, p4

    .line 302
    goto :goto_3
.end method

.method private fillXMLAttributes(Lorg/xml/sax/Attributes;)V
    .locals 6

    .prologue
    .line 308
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    .line 309
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    .line 310
    :goto_0
    if-ge v1, v2, :cond_1

    .line 311
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fillQName(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v0

    .line 313
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    if-nez v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    :cond_0
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v0, v5}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->addAttributeNS(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setSpecified(IZ)V

    .line 310
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 316
    :cond_1
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 220
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 221
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1

    .line 229
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 224
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->convertToSAXParseException(Lmf/org/apache/xerces/xni/parser/XMLParseException;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 227
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->convertToSAXException(Lmf/org/apache/xerces/xni/XNIException;)V

    goto :goto_0
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 122
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSAXLocatorWrapper:Lmf/org/apache/xerces/util/SAXLocatorWrapper;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SAXLocatorWrapper;->setLocator(Lorg/xml/sax/Locator;)V

    .line 124
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1

    .line 132
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 127
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->convertToSAXParseException(Lmf/org/apache/xerces/xni/parser/XMLParseException;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 130
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->convertToSAXException(Lmf/org/apache/xerces/xni/XNIException;)V

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-direct {p0, v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fillQName(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;->popContext()V

    .line 213
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 205
    :try_start_1
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->convertToSAXParseException(Lmf/org/apache/xerces/xni/parser/XMLParseException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;->popContext()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 208
    :try_start_2
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->convertToSAXException(Lmf/org/apache/xerces/xni/XNIException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 211
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;->popContext()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/NamespaceSupport;->popContext()V

    .line 212
    throw v0
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 162
    return-void
.end method

.method public getDocument()Lmf/org/w3c/dom/Document;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->getDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 236
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 237
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1

    .line 245
    :goto_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 240
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->convertToSAXParseException(Lmf/org/apache/xerces/xni/parser/XMLParseException;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 243
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->convertToSAXException(Lmf/org/apache/xerces/xni/XNIException;)V

    goto :goto_0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 252
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 253
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1

    .line 261
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 256
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->convertToSAXParseException(Lmf/org/apache/xerces/xni/parser/XMLParseException;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 259
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->convertToSAXException(Lmf/org/apache/xerces/xni/XNIException;)V

    goto :goto_0
.end method

.method public reset(Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;Lmf/org/apache/xerces/util/SymbolTable;ZZ)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    .line 350
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 351
    iput-boolean p3, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNamespacePrefixes:Z

    .line 352
    iput-boolean p4, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fStringsInternalized:Z

    .line 353
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSAXLocatorWrapper:Lmf/org/apache/xerces/util/SAXLocatorWrapper;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SAXLocatorWrapper;->setLocator(Lorg/xml/sax/Locator;)V

    .line 99
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 268
    return-void
.end method

.method public startDocument()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNeedPushNSContext:Z

    .line 106
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;->reset()V

    .line 108
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSAXLocatorWrapper:Lmf/org/apache/xerces/util/SAXLocatorWrapper;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1

    .line 116
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 111
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->convertToSAXParseException(Lmf/org/apache/xerces/xni/parser/XMLParseException;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 114
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->convertToSAXException(Lmf/org/apache/xerces/xni/XNIException;)V

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 168
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNeedPushNSContext:Z

    if-nez v0, :cond_1

    .line 171
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNeedPushNSContext:Z

    .line 174
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-direct {p0, v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fillQName(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-direct {p0, p4}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fillXMLAttributes(Lorg/xml/sax/Attributes;)V

    .line 178
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNamespacePrefixes:Z

    if-eqz v0, :cond_2

    .line 186
    :cond_0
    :goto_1
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1

    .line 194
    :goto_2
    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;->pushContext()V

    goto :goto_0

    .line 179
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;->getDeclaredPrefixCount()I

    move-result v0

    .line 180
    if-lez v0, :cond_0

    .line 181
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->addNamespaceDeclarations(I)V

    goto :goto_1

    .line 187
    :catch_0
    move-exception v0

    .line 189
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->convertToSAXParseException(Lmf/org/apache/xerces/xni/parser/XMLParseException;)V

    goto :goto_2

    :catch_1
    move-exception v0

    .line 192
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->convertToSAXException(Lmf/org/apache/xerces/xni/XNIException;)V

    goto :goto_2
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 138
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNeedPushNSContext:Z

    if-nez v0, :cond_1

    .line 142
    :goto_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fStringsInternalized:Z

    if-eqz v0, :cond_2

    .line 147
    if-eqz p1, :cond_6

    move-object v0, p1

    .line 150
    :goto_1
    if-nez p2, :cond_7

    .line 154
    :cond_0
    :goto_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v1, v0, p2}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 155
    return-void

    .line 139
    :cond_1
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNeedPushNSContext:Z

    .line 140
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;->pushContext()V

    goto :goto_0

    .line 143
    :cond_2
    if-nez p1, :cond_4

    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 144
    :goto_3
    if-nez p2, :cond_5

    :cond_3
    :goto_4
    move-object p2, v1

    .line 145
    goto :goto_2

    .line 143
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 144
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v1, p2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 148
    :cond_6
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_1

    .line 150
    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    move-object p2, v1

    .line 151
    goto :goto_2
.end method
