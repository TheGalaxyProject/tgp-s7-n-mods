.class final Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;
.super Ljava/lang/Object;
.source "StAXStreamResultBuilder.java"

# interfaces
.implements Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;


# instance fields
.field private final fAttrName:Lmf/org/apache/xerces/xni/QName;

.field private fIgnoreChars:Z

.field private fInCDATA:Z

.field private final fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

.field private fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;

    .line 63
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    .line 64
    return-void
.end method


# virtual methods
.method public cdata(Lmf/javax/xml/stream/events/Characters;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Lmf/javax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmf/javax/xml/stream/XMLStreamWriter;->writeCData(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public characters(Lmf/javax/xml/stream/events/Characters;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Lmf/javax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmf/javax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 240
    iget-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fIgnoreChars:Z

    if-eqz v0, :cond_0

    .line 253
    :goto_0
    return-void

    .line 242
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fInCDATA:Z

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmf/javax/xml/stream/XMLStreamWriter;->writeCData(Ljava/lang/String;)V
    :try_end_0
    .catch Lmf/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 250
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 243
    :cond_1
    :try_start_1
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    iget-object v1, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v2, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-interface {v0, v1, v2, v3}, Lmf/javax/xml/stream/XMLStreamWriter;->writeCharacters([CII)V
    :try_end_1
    .catch Lmf/javax/xml/stream/XMLStreamException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public comment(Lmf/javax/xml/stream/XMLStreamReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmf/javax/xml/stream/XMLStreamWriter;->writeComment(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public comment(Lmf/javax/xml/stream/events/Comment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Lmf/javax/xml/stream/events/Comment;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmf/javax/xml/stream/XMLStreamWriter;->writeComment(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 170
    return-void
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 168
    return-void
.end method

.method public doctypeDecl(Lmf/javax/xml/stream/events/DTD;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Lmf/javax/xml/stream/events/DTD;->getDocumentTypeDeclaration()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmf/javax/xml/stream/XMLStreamWriter;->writeDTD(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 225
    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 226
    return-void
.end method

.method public endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 275
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fInCDATA:Z

    .line 276
    return-void
.end method

.method public endDocument(Lmf/javax/xml/stream/XMLStreamReader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamWriter;->writeEndDocument()V

    .line 86
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamWriter;->flush()V

    .line 87
    return-void
.end method

.method public endDocument(Lmf/javax/xml/stream/events/EndDocument;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamWriter;->writeEndDocument()V

    .line 117
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamWriter;->flush()V

    .line 118
    return-void
.end method

.method public endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 278
    return-void
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 263
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamWriter;->writeEndElement()V
    :try_end_0
    .catch Lmf/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 266
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 236
    return-void
.end method

.method public entityReference(Lmf/javax/xml/stream/XMLStreamReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmf/javax/xml/stream/XMLStreamWriter;->writeEntityRef(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public entityReference(Lmf/javax/xml/stream/events/EntityReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Lmf/javax/xml/stream/events/EntityReference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmf/javax/xml/stream/XMLStreamWriter;->writeEntityRef(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 283
    return-object v0
.end method

.method public ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 258
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 173
    return-void
.end method

.method public processingInstruction(Lmf/javax/xml/stream/XMLStreamReader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v0

    .line 96
    if-nez v0, :cond_1

    .line 100
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmf/javax/xml/stream/XMLStreamWriter;->writeProcessingInstruction(Ljava/lang/String;)V

    .line 102
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 97
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lmf/javax/xml/stream/XMLStreamWriter;->writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processingInstruction(Lmf/javax/xml/stream/events/ProcessingInstruction;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-interface {p1}, Lmf/javax/xml/stream/events/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v0

    .line 139
    if-nez v0, :cond_1

    .line 143
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Lmf/javax/xml/stream/events/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmf/javax/xml/stream/XMLStreamWriter;->writeProcessingInstruction(Ljava/lang/String;)V

    .line 145
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 140
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Lmf/javax/xml/stream/events/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lmf/javax/xml/stream/XMLStreamWriter;->writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V
    .locals 0

    .prologue
    .line 280
    return-void
.end method

.method public setIgnoringCharacters(Z)V
    .locals 0

    .prologue
    .line 153
    iput-boolean p1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fIgnoreChars:Z

    .line 154
    return-void
.end method

.method public setStAXResult(Lmf/javax/xml/transform/stax/StAXResult;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 71
    iput-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fIgnoreChars:Z

    .line 72
    iput-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fInCDATA:Z

    .line 73
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v1}, Lmf/org/apache/xerces/xni/QName;->clear()V

    .line 74
    if-nez p1, :cond_0

    :goto_0
    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    .line 75
    return-void

    .line 74
    :cond_0
    invoke-virtual {p1}, Lmf/javax/xml/transform/stax/StAXResult;->getXMLStreamWriter()Lmf/javax/xml/stream/XMLStreamWriter;

    move-result-object v0

    goto :goto_0
.end method

.method public startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fInCDATA:Z

    .line 272
    return-void
.end method

.method public startDocument(Lmf/javax/xml/stream/XMLStreamReader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v1

    .line 80
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    if-nez v1, :cond_0

    const-string/jumbo v1, "UTF-8"

    .line 81
    :cond_0
    if-nez v0, :cond_1

    const-string/jumbo v0, "1.0"

    .line 80
    :cond_1
    invoke-interface {v2, v1, v0}, Lmf/javax/xml/stream/XMLStreamWriter;->writeStartDocument(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public startDocument(Lmf/javax/xml/stream/events/StartDocument;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-interface {p1}, Lmf/javax/xml/stream/events/StartDocument;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-interface {p1}, Lmf/javax/xml/stream/events/StartDocument;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v1

    .line 111
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    if-nez v1, :cond_0

    const-string/jumbo v1, "UTF-8"

    .line 112
    :cond_0
    if-nez v0, :cond_1

    const-string/jumbo v0, "1.0"

    .line 111
    :cond_1
    invoke-interface {v2, v1, v0}, Lmf/javax/xml/stream/XMLStreamWriter;->writeStartDocument(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 162
    return-void
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 178
    :try_start_0
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 182
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 186
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-interface {v0, v2}, Lmf/javax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    .line 188
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->getDeclaredPrefixCount()I

    move-result v3

    .line 189
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->getNamespaceContext()Lmf/javax/xml/namespace/NamespaceContext;

    move-result-object v4

    move v0, v1

    .line 190
    :goto_1
    if-ge v0, v3, :cond_6

    .line 191
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->getDeclaredPrefixAt(I)Ljava/lang/String;

    move-result-object v5

    .line 192
    invoke-interface {v4, v5}, Lmf/javax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    .line 197
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    if-nez v2, :cond_0

    const-string/jumbo v2, ""

    :cond_0
    invoke-interface {v6, v5, v2}, Lmf/javax/xml/stream/XMLStreamWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 179
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 180
    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    .line 179
    :goto_3
    invoke-interface {v2, v3, v4, v0}, Lmf/javax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lmf/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 218
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 180
    :cond_2
    :try_start_1
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    goto :goto_3

    .line 183
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lmf/javax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_4
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    if-nez v2, :cond_5

    const-string/jumbo v2, ""

    :cond_5
    invoke-interface {v5, v2}, Lmf/javax/xml/stream/XMLStreamWriter;->writeDefaultNamespace(Ljava/lang/String;)V

    goto :goto_2

    .line 200
    :cond_6
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v2

    move v0, v1

    .line 201
    :goto_4
    if-ge v0, v2, :cond_a

    .line 202
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p2, v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getName(ILmf/org/apache/xerces/xni/QName;)V

    .line 203
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_7

    .line 208
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 213
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-interface {p2, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lmf/javax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 204
    :cond_7
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 205
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v1, :cond_8

    const-string/jumbo v1, ""

    .line 206
    :goto_6
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-interface {p2, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v6

    .line 204
    invoke-interface {v3, v4, v1, v5, v6}, Lmf/javax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 205
    :cond_8
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    goto :goto_6

    .line 209
    :cond_9
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 210
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-interface {p2, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    .line 209
    invoke-interface {v1, v3, v4, v5}, Lmf/javax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lmf/javax/xml/stream/XMLStreamException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 220
    :cond_a
    return-void
.end method

.method public startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 230
    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 233
    return-void
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 165
    return-void
.end method
