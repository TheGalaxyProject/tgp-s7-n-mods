.class public final Lmf/org/apache/xerces/stax/events/ProcessingInstructionImpl;
.super Lmf/org/apache/xerces/stax/events/XMLEventImpl;
.source "ProcessingInstructionImpl.java"

# interfaces
.implements Lmf/javax/xml/stream/events/ProcessingInstruction;


# instance fields
.field private final fData:Ljava/lang/String;

.field private final fTarget:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lmf/javax/xml/stream/Location;)V
    .locals 1

    .prologue
    const/4 v0, 0x3

    .line 44
    invoke-direct {p0, v0, p3}, Lmf/org/apache/xerces/stax/events/XMLEventImpl;-><init>(ILmf/javax/xml/stream/Location;)V

    .line 45
    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    :cond_0
    iput-object p1, p0, Lmf/org/apache/xerces/stax/events/ProcessingInstructionImpl;->fTarget:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lmf/org/apache/xerces/stax/events/ProcessingInstructionImpl;->fData:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/ProcessingInstructionImpl;->fData:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/ProcessingInstructionImpl;->fTarget:Ljava/lang/String;

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
    const-string/jumbo v0, "<?"

    .line 65
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/ProcessingInstructionImpl;->fTarget:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/ProcessingInstructionImpl;->fData:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v0, "?>"

    .line 71
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 76
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/ProcessingInstructionImpl;->fData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x20

    .line 68
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 69
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/ProcessingInstructionImpl;->fData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 74
    new-instance v1, Lmf/javax/xml/stream/XMLStreamException;

    invoke-direct {v1, v0}, Lmf/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
