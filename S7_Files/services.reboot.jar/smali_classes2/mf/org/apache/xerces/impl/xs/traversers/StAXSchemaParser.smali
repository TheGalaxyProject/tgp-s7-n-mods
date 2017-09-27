.class final Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;
.super Ljava/lang/Object;
.source "StAXSchemaParser.java"


# static fields
.field private static final CHUNK_MASK:I = 0x3ff

.field private static final CHUNK_SIZE:I = 0x400


# instance fields
.field private final fAttributeQName:Lmf/org/apache/xerces/xni/QName;

.field private final fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

.field private final fCharBuffer:[C

.field private final fDeclaredPrefixes:Ljava/util/ArrayList;

.field private fDepth:I

.field private final fElementQName:Lmf/org/apache/xerces/xni/QName;

.field private final fLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

.field private final fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

.field private fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

.field private final fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field private final fTempString:Lmf/org/apache/xerces/xni/XMLString;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    .line 65
    new-array v0, v0, [C

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fCharBuffer:[C

    .line 74
    new-instance v0, Lmf/org/apache/xerces/util/StAXLocationWrapper;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/StAXLocationWrapper;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    .line 77
    new-instance v0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;-><init>(Lmf/org/apache/xerces/util/SymbolTable;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    .line 80
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    .line 81
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    .line 82
    new-instance v0, Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    .line 83
    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDeclaredPrefixes:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    .line 89
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDeclaredPrefixes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->setDeclaredPrefixes(Ljava/util/List;)V

    .line 90
    return-void
.end method

.method private addNamespaceDeclarations()V
    .locals 9

    .prologue
    .line 347
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDeclaredPrefixes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 348
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 350
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 351
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    .line 361
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 362
    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    .line 363
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    .line 365
    :goto_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    sget-object v6, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {v5, v2, v1, v0, v6}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    .line 367
    if-nez v3, :cond_1

    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 366
    :goto_2
    invoke-virtual {v1, v2, v5, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 352
    :cond_0
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    .line 354
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 355
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v5, 0x3a

    invoke-virtual {v1, v5}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 357
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v5, v5, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v6, v6, Lmf/org/apache/xerces/util/XMLStringBuffer;->offset:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v7, v7, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-virtual {v1, v5, v6, v7}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 359
    goto :goto_1

    :cond_1
    move-object v0, v3

    .line 367
    goto :goto_2

    .line 369
    :cond_2
    return-void
.end method

.method private fillDeclaredPrefixes(Ljava/util/Iterator;)V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDeclaredPrefixes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 384
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/events/Namespace;

    .line 386
    invoke-interface {v0}, Lmf/javax/xml/stream/events/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 387
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDeclaredPrefixes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 389
    :cond_1
    return-void
.end method

.method private fillDeclaredPrefixes(Lmf/javax/xml/stream/XMLStreamReader;)V
    .locals 4

    .prologue
    .line 393
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDeclaredPrefixes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 394
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getNamespaceCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    .line 395
    :goto_0
    if-ge v1, v2, :cond_1

    .line 396
    invoke-interface {p1, v1}, Lmf/javax/xml/stream/XMLStreamReader;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v0

    .line 397
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDeclaredPrefixes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 399
    :cond_1
    return-void
.end method

.method private fillDeclaredPrefixes(Lmf/javax/xml/stream/events/EndElement;)V
    .locals 1

    .prologue
    .line 378
    invoke-interface {p1}, Lmf/javax/xml/stream/events/EndElement;->getNamespaces()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillDeclaredPrefixes(Ljava/util/Iterator;)V

    .line 379
    return-void
.end method

.method private fillDeclaredPrefixes(Lmf/javax/xml/stream/events/StartElement;)V
    .locals 1

    .prologue
    .line 373
    invoke-interface {p1}, Lmf/javax/xml/stream/events/StartElement;->getNamespaces()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillDeclaredPrefixes(Ljava/util/Iterator;)V

    .line 374
    return-void
.end method

.method private fillProcessingInstruction(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 300
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 301
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fCharBuffer:[C

    .line 302
    array-length v2, v0

    if-lt v2, v1, :cond_0

    .line 308
    invoke-virtual {p1, v3, v1, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 310
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v2, v0, v3, v1}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 311
    return-void

    .line 305
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0
.end method

.method private fillQName(Lmf/org/apache/xerces/xni/QName;Lmf/javax/xml/namespace/QName;)V
    .locals 3

    .prologue
    .line 403
    invoke-virtual {p2}, Lmf/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lmf/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lmf/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillQName(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method private fillXMLAttributes(Lmf/javax/xml/stream/XMLStreamReader;)V
    .locals 6

    .prologue
    .line 328
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    .line 329
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getAttributeCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    .line 330
    :goto_0
    if-ge v1, v2, :cond_1

    .line 331
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p1, v1}, Lmf/javax/xml/stream/XMLStreamReader;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v3

    .line 332
    invoke-interface {p1, v1}, Lmf/javax/xml/stream/XMLStreamReader;->getAttributeLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1}, Lmf/javax/xml/stream/XMLStreamReader;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v5

    .line 331
    invoke-virtual {p0, v0, v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillQName(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-interface {p1, v1}, Lmf/javax/xml/stream/XMLStreamReader;->getAttributeType(I)Ljava/lang/String;

    move-result-object v0

    .line 334
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    .line 335
    if-nez v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    :cond_0
    invoke-interface {p1, v1}, Lmf/javax/xml/stream/XMLStreamReader;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 334
    invoke-virtual {v3, v4, v0, v5}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->addAttributeNS(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {p1, v1}, Lmf/javax/xml/stream/XMLStreamReader;->isAttributeSpecified(I)Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setSpecified(IZ)V

    .line 330
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 338
    :cond_1
    return-void
.end method

.method private fillXMLAttributes(Lmf/javax/xml/stream/events/StartElement;)V
    .locals 7

    .prologue
    .line 314
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    .line 315
    invoke-interface {p1}, Lmf/javax/xml/stream/events/StartElement;->getAttributes()Ljava/util/Iterator;

    move-result-object v2

    .line 316
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/events/Attribute;

    .line 318
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {v0}, Lmf/javax/xml/stream/events/Attribute;->getName()Lmf/javax/xml/namespace/QName;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillQName(Lmf/org/apache/xerces/xni/QName;Lmf/javax/xml/namespace/QName;)V

    .line 319
    invoke-interface {v0}, Lmf/javax/xml/stream/events/Attribute;->getDTDType()Ljava/lang/String;

    move-result-object v1

    .line 320
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v3

    .line 321
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    .line 322
    if-nez v1, :cond_0

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    :cond_0
    invoke-interface {v0}, Lmf/javax/xml/stream/events/Attribute;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 321
    invoke-virtual {v4, v5, v1, v6}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->addAttributeNS(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {v0}, Lmf/javax/xml/stream/events/Attribute;->isSpecified()Z

    move-result v0

    invoke-virtual {v1, v3, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setSpecified(IZ)V

    goto :goto_0

    .line 325
    :cond_1
    return-void
.end method

.method private sendCharactersToSchemaParser(Ljava/lang/String;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 271
    if-nez p1, :cond_1

    .line 296
    :cond_0
    return-void

    .line 272
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 273
    and-int/lit16 v0, v2, 0x3ff

    .line 274
    if-gtz v0, :cond_2

    .line 285
    :goto_0
    if-ge v0, v2, :cond_0

    .line 286
    add-int/lit16 v1, v0, 0x400

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fCharBuffer:[C

    invoke-virtual {p1, v0, v1, v3, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 287
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fCharBuffer:[C

    const/16 v4, 0x400

    invoke-virtual {v0, v3, v5, v4}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 288
    if-nez p2, :cond_4

    .line 292
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v0, v3, v6}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    move v0, v1

    goto :goto_0

    .line 275
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fCharBuffer:[C

    invoke-virtual {p1, v5, v0, v1, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 276
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fCharBuffer:[C

    invoke-virtual {v1, v3, v5, v0}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 277
    if-nez p2, :cond_3

    .line 281
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v1, v3, v6}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0

    .line 278
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v1, v3, v6}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0

    .line 289
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v0, v3, v6}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    move v0, v1

    .line 290
    goto :goto_0
.end method


# virtual methods
.method final fillQName(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 408
    if-nez p2, :cond_2

    .line 409
    :cond_0
    :goto_0
    if-nez p3, :cond_3

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 410
    :goto_1
    if-nez p4, :cond_4

    :cond_1
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 412
    :goto_2
    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v2, v3, :cond_5

    move-object v3, v1

    .line 419
    :goto_3
    invoke-virtual {p1, v2, v1, v3, v0}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    return-void

    .line 408
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 409
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v1, p3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 410
    :cond_4
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v2, p4}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 413
    :cond_5
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 414
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v3, v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 415
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 416
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 417
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v4, v4, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v5, v5, Lmf/org/apache/xerces/util/XMLStringBuffer;->offset:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v6, v6, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-virtual {v3, v4, v5, v6}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v3

    goto :goto_3
.end method

.method public getDocument()Lmf/org/w3c/dom/Document;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->getDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lmf/javax/xml/stream/XMLEventReader;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 104
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLEventReader;->peek()Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 105
    if-nez v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-interface {v0}, Lmf/javax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v1

    const/4 v2, 0x7

    .line 107
    if-ne v1, v2, :cond_3

    .line 111
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    invoke-interface {v0}, Lmf/javax/xml/stream/events/XMLEvent;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/StAXLocationWrapper;->setLocation(Lmf/javax/xml/stream/Location;)V

    .line 112
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v0, v1, v3, v2, v3}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 113
    :cond_2
    :goto_1
    :pswitch_0
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLEventReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 114
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLEventReader;->nextEvent()Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 115
    invoke-interface {v0}, Lmf/javax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v1

    .line 116
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 118
    :pswitch_1
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    .line 119
    invoke-interface {v0}, Lmf/javax/xml/stream/events/XMLEvent;->asStartElement()Lmf/javax/xml/stream/events/StartElement;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {v0}, Lmf/javax/xml/stream/events/StartElement;->getName()Lmf/javax/xml/namespace/QName;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillQName(Lmf/org/apache/xerces/xni/QName;Lmf/javax/xml/namespace/QName;)V

    .line 121
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    invoke-interface {v0}, Lmf/javax/xml/stream/events/StartElement;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/StAXLocationWrapper;->setLocation(Lmf/javax/xml/stream/Location;)V

    .line 122
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-interface {v0}, Lmf/javax/xml/stream/events/StartElement;->getNamespaceContext()Lmf/javax/xml/namespace/NamespaceContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->setNamespaceContext(Lmf/javax/xml/namespace/NamespaceContext;)V

    .line 123
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillXMLAttributes(Lmf/javax/xml/stream/events/StartElement;)V

    .line 124
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillDeclaredPrefixes(Lmf/javax/xml/stream/events/StartElement;)V

    .line 125
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->addNamespaceDeclarations()V

    .line 126
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->pushContext()V

    .line 127
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_1

    .line 108
    :cond_3
    if-eq v1, v5, :cond_1

    .line 109
    new-instance v0, Lmf/javax/xml/stream/XMLStreamException;

    invoke-direct {v0}, Lmf/javax/xml/stream/XMLStreamException;-><init>()V

    throw v0

    .line 130
    :pswitch_2
    invoke-interface {v0}, Lmf/javax/xml/stream/events/XMLEvent;->asEndElement()Lmf/javax/xml/stream/events/EndElement;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {v0}, Lmf/javax/xml/stream/events/EndElement;->getName()Lmf/javax/xml/namespace/QName;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillQName(Lmf/org/apache/xerces/xni/QName;Lmf/javax/xml/namespace/QName;)V

    .line 132
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillDeclaredPrefixes(Lmf/javax/xml/stream/events/EndElement;)V

    .line 133
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    invoke-interface {v0}, Lmf/javax/xml/stream/events/EndElement;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/StAXLocationWrapper;->setLocation(Lmf/javax/xml/stream/Location;)V

    .line 134
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, v1, v3}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 135
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->popContext()V

    .line 136
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    .line 137
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    if-gtz v0, :cond_2

    .line 175
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/util/StAXLocationWrapper;->setLocation(Lmf/javax/xml/stream/Location;)V

    .line 176
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->setNamespaceContext(Lmf/javax/xml/namespace/NamespaceContext;)V

    .line 177
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_0

    .line 142
    :pswitch_3
    invoke-interface {v0}, Lmf/javax/xml/stream/events/XMLEvent;->asCharacters()Lmf/javax/xml/stream/events/Characters;

    move-result-object v0

    invoke-interface {v0}, Lmf/javax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->sendCharactersToSchemaParser(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 145
    :pswitch_4
    invoke-interface {v0}, Lmf/javax/xml/stream/events/XMLEvent;->asCharacters()Lmf/javax/xml/stream/events/Characters;

    move-result-object v0

    invoke-interface {v0}, Lmf/javax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->sendCharactersToSchemaParser(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 148
    :pswitch_5
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 149
    invoke-interface {v0}, Lmf/javax/xml/stream/events/XMLEvent;->asCharacters()Lmf/javax/xml/stream/events/Characters;

    move-result-object v0

    invoke-interface {v0}, Lmf/javax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->sendCharactersToSchemaParser(Ljava/lang/String;Z)V

    .line 150
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_1

    .line 153
    :pswitch_6
    check-cast v0, Lmf/javax/xml/stream/events/ProcessingInstruction;

    .line 154
    invoke-interface {v0}, Lmf/javax/xml/stream/events/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillProcessingInstruction(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-interface {v0}, Lmf/javax/xml/stream/events/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v1, v0, v2, v3}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_1

    .line 167
    :pswitch_7
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    goto/16 :goto_1

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public parse(Lmf/javax/xml/stream/XMLStreamReader;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 182
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 267
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v1

    const/4 v3, 0x7

    .line 184
    if-ne v1, v3, :cond_3

    .line 188
    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/util/StAXLocationWrapper;->setLocation(Lmf/javax/xml/stream/Location;)V

    .line 189
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v3, v4, v7, v5, v7}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 191
    :cond_2
    :goto_1
    :pswitch_0
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 192
    if-eqz v0, :cond_4

    move v0, v2

    .line 198
    :goto_2
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 200
    :pswitch_1
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    .line 201
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/util/StAXLocationWrapper;->setLocation(Lmf/javax/xml/stream/Location;)V

    .line 202
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getNamespaceContext()Lmf/javax/xml/namespace/NamespaceContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->setNamespaceContext(Lmf/javax/xml/namespace/NamespaceContext;)V

    .line 203
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    .line 204
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getPrefix()Ljava/lang/String;

    move-result-object v6

    .line 203
    invoke-virtual {p0, v3, v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillQName(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillXMLAttributes(Lmf/javax/xml/stream/XMLStreamReader;)V

    .line 206
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillDeclaredPrefixes(Lmf/javax/xml/stream/XMLStreamReader;)V

    .line 207
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->addNamespaceDeclarations()V

    .line 208
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v3}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->pushContext()V

    .line 209
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v3, v4, v5, v7}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_1

    .line 185
    :cond_3
    if-eq v1, v0, :cond_1

    .line 186
    new-instance v0, Lmf/javax/xml/stream/XMLStreamException;

    invoke-direct {v0}, Lmf/javax/xml/stream/XMLStreamException;-><init>()V

    throw v0

    .line 193
    :cond_4
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->next()I

    move-result v1

    goto :goto_2

    .line 212
    :pswitch_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/util/StAXLocationWrapper;->setLocation(Lmf/javax/xml/stream/Location;)V

    .line 213
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getNamespaceContext()Lmf/javax/xml/namespace/NamespaceContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->setNamespaceContext(Lmf/javax/xml/namespace/NamespaceContext;)V

    .line 214
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    .line 215
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getPrefix()Ljava/lang/String;

    move-result-object v6

    .line 214
    invoke-virtual {p0, v3, v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillQName(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillDeclaredPrefixes(Lmf/javax/xml/stream/XMLStreamReader;)V

    .line 217
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v3, v4, v7}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 218
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v3}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->popContext()V

    .line 219
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    .line 220
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    if-gtz v3, :cond_2

    .line 263
    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    invoke-virtual {v0, v7}, Lmf/org/apache/xerces/util/StAXLocationWrapper;->setLocation(Lmf/javax/xml/stream/Location;)V

    .line 264
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v0, v7}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->setNamespaceContext(Lmf/javax/xml/namespace/NamespaceContext;)V

    .line 265
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v0, v7}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_0

    .line 225
    :pswitch_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getTextCharacters()[C

    move-result-object v4

    .line 226
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getTextStart()I

    move-result v5

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getTextLength()I

    move-result v6

    .line 225
    invoke-virtual {v3, v4, v5, v6}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 227
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v3, v4, v7}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_1

    .line 230
    :pswitch_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getTextCharacters()[C

    move-result-object v4

    .line 231
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getTextStart()I

    move-result v5

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getTextLength()I

    move-result v6

    .line 230
    invoke-virtual {v3, v4, v5, v6}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 232
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v3, v4, v7}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_1

    .line 235
    :pswitch_5
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v3, v7}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 236
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getTextCharacters()[C

    move-result-object v4

    .line 237
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getTextStart()I

    move-result v5

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getTextLength()I

    move-result v6

    .line 236
    invoke-virtual {v3, v4, v5, v6}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 238
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v3, v4, v7}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 239
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v3, v7}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_1

    .line 242
    :pswitch_6
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillProcessingInstruction(Ljava/lang/String;)V

    .line 243
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v3, v4, v5, v7}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_1

    .line 255
    :pswitch_7
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    goto/16 :goto_1

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public reset(Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 2

    .prologue
    .line 93
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    .line 94
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 95
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->setSymbolTable(Lmf/org/apache/xerces/util/SymbolTable;)V

    .line 96
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->reset()V

    .line 97
    return-void
.end method
