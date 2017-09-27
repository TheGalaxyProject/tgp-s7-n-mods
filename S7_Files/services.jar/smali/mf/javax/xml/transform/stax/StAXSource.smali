.class public Lmf/javax/xml/transform/stax/StAXSource;
.super Ljava/lang/Object;
.source "StAXSource.java"

# interfaces
.implements Lmf/javax/xml/transform/Source;


# static fields
.field public static final FEATURE:Ljava/lang/String; = "http://javax.xml.transform.stax.StAXSource/feature"


# instance fields
.field private systemId:Ljava/lang/String;

.field private xmlEventReader:Lmf/javax/xml/stream/XMLEventReader;

.field private xmlStreamReader:Lmf/javax/xml/stream/XMLStreamReader;


# direct methods
.method public constructor <init>(Lmf/javax/xml/stream/XMLEventReader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object v0, p0, Lmf/javax/xml/transform/stax/StAXSource;->xmlEventReader:Lmf/javax/xml/stream/XMLEventReader;

    .line 90
    iput-object v0, p0, Lmf/javax/xml/transform/stax/StAXSource;->xmlStreamReader:Lmf/javax/xml/stream/XMLStreamReader;

    .line 93
    iput-object v0, p0, Lmf/javax/xml/transform/stax/StAXSource;->systemId:Ljava/lang/String;

    .line 120
    if-eqz p1, :cond_1

    .line 131
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLEventReader;->peek()Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 132
    invoke-interface {v0}, Lmf/javax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v1

    const/4 v2, 0x7

    .line 133
    if-ne v1, v2, :cond_2

    .line 141
    :cond_0
    iput-object p1, p0, Lmf/javax/xml/transform/stax/StAXSource;->xmlEventReader:Lmf/javax/xml/stream/XMLEventReader;

    .line 142
    invoke-interface {v0}, Lmf/javax/xml/stream/events/XMLEvent;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v0

    invoke-interface {v0}, Lmf/javax/xml/stream/Location;->getSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/javax/xml/transform/stax/StAXSource;->systemId:Ljava/lang/String;

    .line 143
    return-void

    .line 121
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "StAXSource(XMLEventReader) with XMLEventReader == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v2, 0x1

    .line 134
    if-eq v1, v2, :cond_0

    .line 135
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "StAXSource(XMLEventReader) with XMLEventReader not in XMLStreamConstants.START_DOCUMENT or XMLStreamConstants.START_ELEMENT state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lmf/javax/xml/stream/XMLStreamReader;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object v0, p0, Lmf/javax/xml/transform/stax/StAXSource;->xmlEventReader:Lmf/javax/xml/stream/XMLEventReader;

    .line 90
    iput-object v0, p0, Lmf/javax/xml/transform/stax/StAXSource;->xmlStreamReader:Lmf/javax/xml/stream/XMLStreamReader;

    .line 93
    iput-object v0, p0, Lmf/javax/xml/transform/stax/StAXSource;->systemId:Ljava/lang/String;

    .line 167
    if-eqz p1, :cond_1

    .line 172
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v0

    const/4 v1, 0x7

    .line 173
    if-ne v0, v1, :cond_2

    .line 181
    :cond_0
    iput-object p1, p0, Lmf/javax/xml/transform/stax/StAXSource;->xmlStreamReader:Lmf/javax/xml/stream/XMLStreamReader;

    .line 182
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v0

    invoke-interface {v0}, Lmf/javax/xml/stream/Location;->getSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/javax/xml/transform/stax/StAXSource;->systemId:Ljava/lang/String;

    .line 183
    return-void

    .line 168
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "StAXSource(XMLStreamReader) with XMLStreamReader == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v1, 0x1

    .line 174
    if-eq v0, v1, :cond_0

    .line 175
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "StAXSource(XMLStreamReader) with XMLStreamReadernot in XMLStreamConstants.START_DOCUMENT or XMLStreamConstants.START_ELEMENT state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lmf/javax/xml/transform/stax/StAXSource;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public getXMLEventReader()Lmf/javax/xml/stream/XMLEventReader;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lmf/javax/xml/transform/stax/StAXSource;->xmlEventReader:Lmf/javax/xml/stream/XMLEventReader;

    return-object v0
.end method

.method public getXMLStreamReader()Lmf/javax/xml/stream/XMLStreamReader;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lmf/javax/xml/transform/stax/StAXSource;->xmlStreamReader:Lmf/javax/xml/stream/XMLStreamReader;

    return-object v0
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 234
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "StAXSource#setSystemId(systemId) cannot set the system identifier for a StAXSource"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
