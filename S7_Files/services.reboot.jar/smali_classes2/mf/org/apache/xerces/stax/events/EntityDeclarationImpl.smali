.class public final Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;
.super Lmf/org/apache/xerces/stax/events/XMLEventImpl;
.source "EntityDeclarationImpl.java"

# interfaces
.implements Lmf/javax/xml/stream/events/EntityDeclaration;


# instance fields
.field private final fName:Ljava/lang/String;

.field private final fNotationName:Ljava/lang/String;

.field private final fPublicId:Ljava/lang/String;

.field private final fSystemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/javax/xml/stream/Location;)V
    .locals 1

    .prologue
    const/16 v0, 0xf

    .line 48
    invoke-direct {p0, v0, p5}, Lmf/org/apache/xerces/stax/events/XMLEventImpl;-><init>(ILmf/javax/xml/stream/Location;)V

    .line 49
    iput-object p1, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fPublicId:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fSystemId:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fName:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fNotationName:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public getBaseURI()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 96
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fName:Ljava/lang/String;

    return-object v0
.end method

.method public getNotationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fNotationName:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fPublicId:Ljava/lang/String;

    return-object v0
.end method

.method public getReplacementText()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fSystemId:Ljava/lang/String;

    return-object v0
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
    const-string/jumbo v0, "<!ENTITY "

    .line 101
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fPublicId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, " SYSTEM \""

    .line 111
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fSystemId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v0, 0x22

    .line 113
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 115
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fNotationName:Ljava/lang/String;

    if-nez v0, :cond_1

    :goto_1
    const/16 v0, 0x3e

    .line 119
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 124
    return-void

    :cond_0
    const-string/jumbo v0, " PUBLIC \""

    .line 104
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fPublicId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "\" \""

    .line 106
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fSystemId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v0, 0x22

    .line 108
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 122
    new-instance v1, Lmf/javax/xml/stream/XMLStreamException;

    invoke-direct {v1, v0}, Lmf/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_1
    const-string/jumbo v0, " NDATA "

    .line 116
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fNotationName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
