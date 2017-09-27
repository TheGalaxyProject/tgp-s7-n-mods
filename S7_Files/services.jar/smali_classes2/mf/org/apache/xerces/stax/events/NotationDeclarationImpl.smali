.class public final Lmf/org/apache/xerces/stax/events/NotationDeclarationImpl;
.super Lmf/org/apache/xerces/stax/events/XMLEventImpl;
.source "NotationDeclarationImpl.java"

# interfaces
.implements Lmf/javax/xml/stream/events/NotationDeclaration;


# instance fields
.field private final fName:Ljava/lang/String;

.field private final fPublicId:Ljava/lang/String;

.field private final fSystemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/javax/xml/stream/Location;)V
    .locals 1

    .prologue
    const/16 v0, 0xe

    .line 47
    invoke-direct {p0, v0, p4}, Lmf/org/apache/xerces/stax/events/XMLEventImpl;-><init>(ILmf/javax/xml/stream/Location;)V

    .line 48
    iput-object p1, p0, Lmf/org/apache/xerces/stax/events/NotationDeclarationImpl;->fName:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lmf/org/apache/xerces/stax/events/NotationDeclarationImpl;->fPublicId:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lmf/org/apache/xerces/stax/events/NotationDeclarationImpl;->fSystemId:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/NotationDeclarationImpl;->fName:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/NotationDeclarationImpl;->fPublicId:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/NotationDeclarationImpl;->fSystemId:Ljava/lang/String;

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
    const-string/jumbo v0, "<!NOTATION "

    .line 76
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/NotationDeclarationImpl;->fPublicId:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, "SYSTEM \""

    .line 88
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/NotationDeclarationImpl;->fSystemId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v0, 0x22

    .line 90
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 92
    :cond_0
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/NotationDeclarationImpl;->fName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v0, 0x3e

    .line 93
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 98
    return-void

    :cond_1
    const-string/jumbo v0, "PUBLIC \""

    .line 78
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/NotationDeclarationImpl;->fPublicId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v0, 0x22

    .line 80
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 81
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/NotationDeclarationImpl;->fSystemId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, " \""

    .line 82
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/NotationDeclarationImpl;->fSystemId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v0, 0x22

    .line 84
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 96
    new-instance v1, Lmf/javax/xml/stream/XMLStreamException;

    invoke-direct {v1, v0}, Lmf/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
