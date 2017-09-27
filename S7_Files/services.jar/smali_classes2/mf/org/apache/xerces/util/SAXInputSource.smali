.class public final Lmf/org/apache/xerces/util/SAXInputSource;
.super Lmf/org/apache/xerces/xni/parser/XMLInputSource;
.source "SAXInputSource.java"


# instance fields
.field private fInputSource:Lorg/xml/sax/InputSource;

.field private fXMLReader:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/util/SAXInputSource;-><init>(Lorg/xml/sax/InputSource;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/InputSource;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/util/SAXInputSource;-><init>(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 47
    if-nez p2, :cond_0

    move-object v2, v1

    .line 48
    :goto_0
    if-nez p2, :cond_1

    move-object v0, v1

    :goto_1
    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    if-nez p2, :cond_2

    .line 54
    :goto_2
    iput-object p2, p0, Lmf/org/apache/xerces/util/SAXInputSource;->fInputSource:Lorg/xml/sax/InputSource;

    .line 55
    iput-object p1, p0, Lmf/org/apache/xerces/util/SAXInputSource;->fXMLReader:Lorg/xml/sax/XMLReader;

    .line 56
    return-void

    .line 47
    :cond_0
    invoke-virtual {p2}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p2}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 50
    :cond_2
    invoke-virtual {p2}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/util/SAXInputSource;->setByteStream(Ljava/io/InputStream;)V

    .line 51
    invoke-virtual {p2}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/util/SAXInputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 52
    invoke-virtual {p2}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/util/SAXInputSource;->setEncoding(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public getInputSource()Lorg/xml/sax/InputSource;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lmf/org/apache/xerces/util/SAXInputSource;->fInputSource:Lorg/xml/sax/InputSource;

    return-object v0
.end method

.method public getXMLReader()Lorg/xml/sax/XMLReader;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lmf/org/apache/xerces/util/SAXInputSource;->fXMLReader:Lorg/xml/sax/XMLReader;

    return-object v0
.end method

.method public setByteStream(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0, p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setByteStream(Ljava/io/InputStream;)V

    .line 125
    iget-object v0, p0, Lmf/org/apache/xerces/util/SAXInputSource;->fInputSource:Lorg/xml/sax/InputSource;

    if-eqz v0, :cond_0

    .line 128
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/SAXInputSource;->fInputSource:Lorg/xml/sax/InputSource;

    invoke-virtual {v0, p1}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V

    .line 129
    return-void

    .line 126
    :cond_0
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0}, Lorg/xml/sax/InputSource;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/util/SAXInputSource;->fInputSource:Lorg/xml/sax/InputSource;

    goto :goto_0
.end method

.method public setCharacterStream(Ljava/io/Reader;)V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0, p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 144
    iget-object v0, p0, Lmf/org/apache/xerces/util/SAXInputSource;->fInputSource:Lorg/xml/sax/InputSource;

    if-eqz v0, :cond_0

    .line 147
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/SAXInputSource;->fInputSource:Lorg/xml/sax/InputSource;

    invoke-virtual {v0, p1}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 148
    return-void

    .line 145
    :cond_0
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0}, Lorg/xml/sax/InputSource;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/util/SAXInputSource;->fInputSource:Lorg/xml/sax/InputSource;

    goto :goto_0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 156
    invoke-super {p0, p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setEncoding(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lmf/org/apache/xerces/util/SAXInputSource;->fInputSource:Lorg/xml/sax/InputSource;

    if-eqz v0, :cond_0

    .line 160
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/SAXInputSource;->fInputSource:Lorg/xml/sax/InputSource;

    invoke-virtual {v0, p1}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 161
    return-void

    .line 158
    :cond_0
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0}, Lorg/xml/sax/InputSource;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/util/SAXInputSource;->fInputSource:Lorg/xml/sax/InputSource;

    goto :goto_0
.end method

.method public setInputSource(Lorg/xml/sax/InputSource;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    if-nez p1, :cond_0

    .line 75
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/util/SAXInputSource;->setPublicId(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/util/SAXInputSource;->setSystemId(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/util/SAXInputSource;->setByteStream(Ljava/io/InputStream;)V

    .line 78
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/util/SAXInputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 79
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/util/SAXInputSource;->setEncoding(Ljava/lang/String;)V

    .line 81
    :goto_0
    iput-object p1, p0, Lmf/org/apache/xerces/util/SAXInputSource;->fInputSource:Lorg/xml/sax/InputSource;

    .line 82
    return-void

    .line 68
    :cond_0
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/util/SAXInputSource;->setPublicId(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/util/SAXInputSource;->setSystemId(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/util/SAXInputSource;->setByteStream(Ljava/io/InputStream;)V

    .line 71
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/util/SAXInputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 72
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/util/SAXInputSource;->setEncoding(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0, p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setPublicId(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lmf/org/apache/xerces/util/SAXInputSource;->fInputSource:Lorg/xml/sax/InputSource;

    if-eqz v0, :cond_0

    .line 98
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/SAXInputSource;->fInputSource:Lorg/xml/sax/InputSource;

    invoke-virtual {v0, p1}, Lorg/xml/sax/InputSource;->setPublicId(Ljava/lang/String;)V

    .line 99
    return-void

    .line 96
    :cond_0
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0}, Lorg/xml/sax/InputSource;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/util/SAXInputSource;->fInputSource:Lorg/xml/sax/InputSource;

    goto :goto_0
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0, p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setSystemId(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lmf/org/apache/xerces/util/SAXInputSource;->fInputSource:Lorg/xml/sax/InputSource;

    if-eqz v0, :cond_0

    .line 111
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/SAXInputSource;->fInputSource:Lorg/xml/sax/InputSource;

    invoke-virtual {v0, p1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 112
    return-void

    .line 109
    :cond_0
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0}, Lorg/xml/sax/InputSource;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/util/SAXInputSource;->fInputSource:Lorg/xml/sax/InputSource;

    goto :goto_0
.end method

.method public setXMLReader(Lorg/xml/sax/XMLReader;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lmf/org/apache/xerces/util/SAXInputSource;->fXMLReader:Lorg/xml/sax/XMLReader;

    .line 60
    return-void
.end method
