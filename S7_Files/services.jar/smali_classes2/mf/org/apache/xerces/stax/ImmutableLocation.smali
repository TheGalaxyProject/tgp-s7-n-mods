.class public Lmf/org/apache/xerces/stax/ImmutableLocation;
.super Ljava/lang/Object;
.source "ImmutableLocation.java"

# interfaces
.implements Lmf/javax/xml/stream/Location;


# instance fields
.field private final fCharacterOffset:I

.field private final fColumnNumber:I

.field private final fLineNumber:I

.field private final fPublicId:Ljava/lang/String;

.field private final fSystemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lmf/org/apache/xerces/stax/ImmutableLocation;->fCharacterOffset:I

    .line 47
    iput p2, p0, Lmf/org/apache/xerces/stax/ImmutableLocation;->fColumnNumber:I

    .line 48
    iput p3, p0, Lmf/org/apache/xerces/stax/ImmutableLocation;->fLineNumber:I

    .line 49
    iput-object p4, p0, Lmf/org/apache/xerces/stax/ImmutableLocation;->fPublicId:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lmf/org/apache/xerces/stax/ImmutableLocation;->fSystemId:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Lmf/javax/xml/stream/Location;)V
    .locals 6

    .prologue
    .line 40
    invoke-interface {p1}, Lmf/javax/xml/stream/Location;->getCharacterOffset()I

    move-result v1

    invoke-interface {p1}, Lmf/javax/xml/stream/Location;->getColumnNumber()I

    move-result v2

    .line 41
    invoke-interface {p1}, Lmf/javax/xml/stream/Location;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lmf/javax/xml/stream/Location;->getPublicId()Ljava/lang/String;

    move-result-object v4

    .line 42
    invoke-interface {p1}, Lmf/javax/xml/stream/Location;->getSystemId()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/stax/ImmutableLocation;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getCharacterOffset()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lmf/org/apache/xerces/stax/ImmutableLocation;->fCharacterOffset:I

    return v0
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lmf/org/apache/xerces/stax/ImmutableLocation;->fColumnNumber:I

    return v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lmf/org/apache/xerces/stax/ImmutableLocation;->fLineNumber:I

    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lmf/org/apache/xerces/stax/ImmutableLocation;->fPublicId:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lmf/org/apache/xerces/stax/ImmutableLocation;->fSystemId:Ljava/lang/String;

    return-object v0
.end method
