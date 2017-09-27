.class public Lmf/org/apache/xerces/xni/parser/XMLInputSource;
.super Ljava/lang/Object;
.source "XMLInputSource.java"


# instance fields
.field protected fBaseSystemId:Ljava/lang/String;

.field protected fByteStream:Ljava/io/InputStream;

.field protected fCharStream:Ljava/io/Reader;

.field protected fEncoding:Ljava/lang/String;

.field protected fPublicId:Ljava/lang/String;

.field protected fSystemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fPublicId:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fSystemId:Ljava/lang/String;

    .line 86
    iput-object p3, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fBaseSystemId:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fPublicId:Ljava/lang/String;

    .line 122
    iput-object p2, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fSystemId:Ljava/lang/String;

    .line 123
    iput-object p3, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fBaseSystemId:Ljava/lang/String;

    .line 124
    iput-object p4, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fByteStream:Ljava/io/InputStream;

    .line 125
    iput-object p5, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fEncoding:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fPublicId:Ljava/lang/String;

    .line 148
    iput-object p2, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fSystemId:Ljava/lang/String;

    .line 149
    iput-object p3, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fBaseSystemId:Ljava/lang/String;

    .line 150
    iput-object p4, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fCharStream:Ljava/io/Reader;

    .line 151
    iput-object p5, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fEncoding:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fPublicId:Ljava/lang/String;

    .line 99
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fSystemId:Ljava/lang/String;

    .line 100
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fBaseSystemId:Ljava/lang/String;

    .line 101
    return-void
.end method


# virtual methods
.method public getBaseSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fBaseSystemId:Ljava/lang/String;

    return-object v0
.end method

.method public getByteStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fByteStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getCharacterStream()Ljava/io/Reader;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fCharStream:Ljava/io/Reader;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fPublicId:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fSystemId:Ljava/lang/String;

    return-object v0
.end method

.method public setBaseSystemId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fBaseSystemId:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setByteStream(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fByteStream:Ljava/io/InputStream;

    .line 211
    return-void
.end method

.method public setCharacterStream(Ljava/io/Reader;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fCharStream:Ljava/io/Reader;

    .line 231
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fEncoding:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fPublicId:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fSystemId:Ljava/lang/String;

    .line 179
    return-void
.end method
