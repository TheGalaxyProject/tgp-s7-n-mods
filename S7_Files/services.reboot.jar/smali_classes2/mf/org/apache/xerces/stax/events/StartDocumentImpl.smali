.class public final Lmf/org/apache/xerces/stax/events/StartDocumentImpl;
.super Lmf/org/apache/xerces/stax/events/XMLEventImpl;
.source "StartDocumentImpl.java"

# interfaces
.implements Lmf/javax/xml/stream/events/StartDocument;


# instance fields
.field private final fCharEncoding:Ljava/lang/String;

.field private final fEncodingSet:Z

.field private final fIsStandalone:Z

.field private final fStandaloneSet:Z

.field private final fVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZZLjava/lang/String;Lmf/javax/xml/stream/Location;)V
    .locals 1

    .prologue
    const/4 v0, 0x7

    .line 46
    invoke-direct {p0, v0, p6}, Lmf/org/apache/xerces/stax/events/XMLEventImpl;-><init>(ILmf/javax/xml/stream/Location;)V

    .line 47
    iput-object p1, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fCharEncoding:Ljava/lang/String;

    .line 48
    iput-boolean p2, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fEncodingSet:Z

    .line 49
    iput-boolean p3, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fIsStandalone:Z

    .line 50
    iput-boolean p4, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fStandaloneSet:Z

    .line 51
    iput-object p5, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fVersion:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public encodingSet()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fEncodingSet:Z

    return v0
.end method

.method public getCharacterEncodingScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fCharEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v0

    invoke-interface {v0}, Lmf/javax/xml/stream/Location;->getSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isStandalone()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fIsStandalone:Z

    return v0
.end method

.method public standaloneSet()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fStandaloneSet:Z

    return v0
.end method

.method public writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    :try_start_0
    const-string/jumbo v0, "<?xml version=\""

    .line 98
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fVersion:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "1.0"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v0, 0x22

    .line 100
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 101
    invoke-virtual {p0}, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->encodingSet()Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    :goto_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->standaloneSet()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    const-string/jumbo v0, "?>"

    .line 111
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 116
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fVersion:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, " encoding=\""

    .line 102
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fCharEncoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v0, 0x22

    .line 104
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 112
    :catch_0
    move-exception v0

    .line 114
    new-instance v1, Lmf/javax/xml/stream/XMLStreamException;

    invoke-direct {v1, v0}, Lmf/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    :try_start_1
    const-string/jumbo v0, " standalone=\""

    .line 107
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 108
    iget-boolean v0, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fIsStandalone:Z

    if-nez v0, :cond_4

    const-string/jumbo v0, "no"

    :goto_3
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v0, 0x22

    .line 109
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    :cond_4
    const-string/jumbo v0, "yes"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
