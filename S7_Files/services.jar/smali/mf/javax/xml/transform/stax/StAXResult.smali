.class public Lmf/javax/xml/transform/stax/StAXResult;
.super Ljava/lang/Object;
.source "StAXResult.java"

# interfaces
.implements Lmf/javax/xml/transform/Result;


# static fields
.field public static final FEATURE:Ljava/lang/String; = "http://javax.xml.transform.stax.StAXResult/feature"


# instance fields
.field private systemId:Ljava/lang/String;

.field private xmlEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

.field private xmlStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;


# direct methods
.method public constructor <init>(Lmf/javax/xml/stream/XMLEventWriter;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object v0, p0, Lmf/javax/xml/transform/stax/StAXResult;->xmlEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    .line 89
    iput-object v0, p0, Lmf/javax/xml/transform/stax/StAXResult;->xmlStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    .line 92
    iput-object v0, p0, Lmf/javax/xml/transform/stax/StAXResult;->systemId:Ljava/lang/String;

    .line 109
    if-eqz p1, :cond_0

    .line 114
    iput-object p1, p0, Lmf/javax/xml/transform/stax/StAXResult;->xmlEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    .line 115
    return-void

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "StAXResult(XMLEventWriter) with XMLEventWriter == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lmf/javax/xml/stream/XMLStreamWriter;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object v0, p0, Lmf/javax/xml/transform/stax/StAXResult;->xmlEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    .line 89
    iput-object v0, p0, Lmf/javax/xml/transform/stax/StAXResult;->xmlStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    .line 92
    iput-object v0, p0, Lmf/javax/xml/transform/stax/StAXResult;->systemId:Ljava/lang/String;

    .line 132
    if-eqz p1, :cond_0

    .line 137
    iput-object p1, p0, Lmf/javax/xml/transform/stax/StAXResult;->xmlStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    .line 138
    return-void

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "StAXResult(XMLStreamWriter) with XMLStreamWriter == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 201
    return-object v0
.end method

.method public getXMLEventWriter()Lmf/javax/xml/stream/XMLEventWriter;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lmf/javax/xml/transform/stax/StAXResult;->xmlEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    return-object v0
.end method

.method public getXMLStreamWriter()Lmf/javax/xml/stream/XMLStreamWriter;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lmf/javax/xml/transform/stax/StAXResult;->xmlStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    return-object v0
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 189
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "StAXResult#setSystemId(systemId) cannot set the system identifier for a StAXResult"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
