.class public Lmf/org/apache/xml/resolver/readers/SAXParserHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SAXParserHandler.java"


# instance fields
.field private ch:Lorg/xml/sax/ContentHandler;

.field private er:Lorg/xml/sax/EntityResolver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 39
    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->er:Lorg/xml/sax/EntityResolver;

    .line 40
    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    .line 44
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    goto :goto_0
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    if-nez v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    if-nez v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ignorableWhitespace([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    goto :goto_0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 58
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->er:Lorg/xml/sax/EntityResolver;

    if-nez v0, :cond_0

    .line 66
    return-object v2

    .line 60
    :cond_0
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->er:Lorg/xml/sax/EntityResolver;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 62
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "resolveEntity threw IOException!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    return-object v2
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    .line 52
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    if-nez v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    goto :goto_0
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->er:Lorg/xml/sax/EntityResolver;

    .line 48
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    if-nez v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_0
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->ch:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
