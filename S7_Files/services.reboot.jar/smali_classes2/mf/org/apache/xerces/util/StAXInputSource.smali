.class public final Lmf/org/apache/xerces/util/StAXInputSource;
.super Lmf/org/apache/xerces/xni/parser/XMLInputSource;
.source "StAXInputSource.java"


# instance fields
.field private final fConsumeRemainingContent:Z

.field private final fEventReader:Lmf/javax/xml/stream/XMLEventReader;

.field private final fStreamReader:Lmf/javax/xml/stream/XMLStreamReader;


# direct methods
.method public constructor <init>(Lmf/javax/xml/stream/XMLEventReader;)V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/util/StAXInputSource;-><init>(Lmf/javax/xml/stream/XMLEventReader;Z)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lmf/javax/xml/stream/XMLEventReader;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-static {p1}, Lmf/org/apache/xerces/util/StAXInputSource;->getEventReaderSystemId(Lmf/javax/xml/stream/XMLEventReader;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    if-eqz p1, :cond_0

    .line 60
    iput-object v1, p0, Lmf/org/apache/xerces/util/StAXInputSource;->fStreamReader:Lmf/javax/xml/stream/XMLStreamReader;

    .line 61
    iput-object p1, p0, Lmf/org/apache/xerces/util/StAXInputSource;->fEventReader:Lmf/javax/xml/stream/XMLEventReader;

    .line 62
    iput-boolean p2, p0, Lmf/org/apache/xerces/util/StAXInputSource;->fConsumeRemainingContent:Z

    .line 63
    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "XMLEventReader parameter cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lmf/javax/xml/stream/XMLStreamReader;)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/util/StAXInputSource;-><init>(Lmf/javax/xml/stream/XMLStreamReader;Z)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lmf/javax/xml/stream/XMLStreamReader;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v0

    invoke-interface {v0}, Lmf/javax/xml/stream/Location;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    if-eqz p1, :cond_0

    .line 46
    iput-object p1, p0, Lmf/org/apache/xerces/util/StAXInputSource;->fStreamReader:Lmf/javax/xml/stream/XMLStreamReader;

    .line 47
    iput-object v1, p0, Lmf/org/apache/xerces/util/StAXInputSource;->fEventReader:Lmf/javax/xml/stream/XMLEventReader;

    .line 48
    iput-boolean p2, p0, Lmf/org/apache/xerces/util/StAXInputSource;->fConsumeRemainingContent:Z

    .line 49
    return-void

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "XMLStreamReader parameter cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getEventReaderSystemId(Lmf/javax/xml/stream/XMLEventReader;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    if-nez p0, :cond_0

    .line 88
    :goto_0
    return-object v1

    .line 84
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lmf/javax/xml/stream/XMLEventReader;->peek()Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    invoke-interface {v0}, Lmf/javax/xml/stream/events/XMLEvent;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v0

    invoke-interface {v0}, Lmf/javax/xml/stream/Location;->getSystemId()Ljava/lang/String;
    :try_end_0
    .catch Lmf/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getXMLEventReader()Lmf/javax/xml/stream/XMLEventReader;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lmf/org/apache/xerces/util/StAXInputSource;->fEventReader:Lmf/javax/xml/stream/XMLEventReader;

    return-object v0
.end method

.method public getXMLStreamReader()Lmf/javax/xml/stream/XMLStreamReader;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lmf/org/apache/xerces/util/StAXInputSource;->fStreamReader:Lmf/javax/xml/stream/XMLStreamReader;

    return-object v0
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Cannot set the system ID on a StAXInputSource"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shouldConsumeRemainingContent()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lmf/org/apache/xerces/util/StAXInputSource;->fConsumeRemainingContent:Z

    return v0
.end method
