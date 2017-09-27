.class public Lmf/javax/xml/transform/stream/StreamSource;
.super Ljava/lang/Object;
.source "StreamSource.java"

# interfaces
.implements Lmf/javax/xml/transform/Source;


# static fields
.field public static final FEATURE:Ljava/lang/String; = "http://javax.xml.transform.stream.StreamSource/feature"


# instance fields
.field private inputStream:Ljava/io/InputStream;

.field private publicId:Ljava/lang/String;

.field private reader:Ljava/io/Reader;

.field private systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/javax/xml/transform/stream/StreamSource;->setSystemId(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p0, p1}, Lmf/javax/xml/transform/stream/StreamSource;->setInputStream(Ljava/io/InputStream;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-virtual {p0, p1}, Lmf/javax/xml/transform/stream/StreamSource;->setInputStream(Ljava/io/InputStream;)V

    .line 116
    invoke-virtual {p0, p2}, Lmf/javax/xml/transform/stream/StreamSource;->setSystemId(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-virtual {p0, p1}, Lmf/javax/xml/transform/stream/StreamSource;->setReader(Ljava/io/Reader;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    invoke-virtual {p0, p1}, Lmf/javax/xml/transform/stream/StreamSource;->setReader(Ljava/io/Reader;)V

    .line 146
    invoke-virtual {p0, p2}, Lmf/javax/xml/transform/stream/StreamSource;->setSystemId(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lmf/javax/xml/transform/stream/StreamSource;->systemId:Ljava/lang/String;

    .line 156
    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lmf/javax/xml/transform/stream/StreamSource;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lmf/javax/xml/transform/stream/StreamSource;->publicId:Ljava/lang/String;

    return-object v0
.end method

.method public getReader()Ljava/io/Reader;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lmf/javax/xml/transform/stream/StreamSource;->reader:Ljava/io/Reader;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lmf/javax/xml/transform/stream/StreamSource;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lmf/javax/xml/transform/stream/StreamSource;->inputStream:Ljava/io/InputStream;

    .line 184
    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lmf/javax/xml/transform/stream/StreamSource;->publicId:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public setReader(Ljava/io/Reader;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lmf/javax/xml/transform/stream/StreamSource;->reader:Ljava/io/Reader;

    .line 208
    return-void
.end method

.method public setSystemId(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 278
    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/javax/xml/transform/stream/StreamSource;->systemId:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lmf/javax/xml/transform/stream/StreamSource;->systemId:Ljava/lang/String;

    .line 257
    return-void
.end method
