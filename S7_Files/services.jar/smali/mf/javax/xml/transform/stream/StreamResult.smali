.class public Lmf/javax/xml/transform/stream/StreamResult;
.super Ljava/lang/Object;
.source "StreamResult.java"

# interfaces
.implements Lmf/javax/xml/transform/Result;


# static fields
.field public static final FEATURE:Ljava/lang/String; = "http://javax.xml.transform.stream.StreamResult/feature"


# instance fields
.field private outputStream:Ljava/io/OutputStream;

.field private systemId:Ljava/lang/String;

.field private writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/javax/xml/transform/stream/StreamResult;->setSystemId(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p0, p1}, Lmf/javax/xml/transform/stream/StreamResult;->setOutputStream(Ljava/io/OutputStream;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p0, p1}, Lmf/javax/xml/transform/stream/StreamResult;->setWriter(Ljava/io/Writer;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lmf/javax/xml/transform/stream/StreamResult;->systemId:Ljava/lang/String;

    .line 108
    return-void
.end method


# virtual methods
.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lmf/javax/xml/transform/stream/StreamResult;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lmf/javax/xml/transform/stream/StreamResult;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lmf/javax/xml/transform/stream/StreamResult;->writer:Ljava/io/Writer;

    return-object v0
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lmf/javax/xml/transform/stream/StreamResult;->outputStream:Ljava/io/OutputStream;

    .line 132
    return-void
.end method

.method public setSystemId(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/javax/xml/transform/stream/StreamResult;->systemId:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lmf/javax/xml/transform/stream/StreamResult;->systemId:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setWriter(Ljava/io/Writer;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lmf/javax/xml/transform/stream/StreamResult;->writer:Ljava/io/Writer;

    .line 156
    return-void
.end method
