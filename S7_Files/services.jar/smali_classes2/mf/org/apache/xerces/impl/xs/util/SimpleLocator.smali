.class public final Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;
.super Ljava/lang/Object;
.source "SimpleLocator.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/XMLLocator;


# instance fields
.field private charOffset:I

.field private column:I

.field private esid:Ljava/lang/String;

.field private line:I

.field private lsid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 42
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p3, p0, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;->line:I

    .line 51
    iput p4, p0, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;->column:I

    .line 52
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;->lsid:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;->esid:Ljava/lang/String;

    .line 54
    iput p5, p0, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;->charOffset:I

    .line 55
    return-void
.end method


# virtual methods
.method public getBaseSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 90
    return-object v0
.end method

.method public getCharacterOffset()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;->charOffset:I

    return v0
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;->column:I

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 137
    return-object v0
.end method

.method public getExpandedSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;->esid:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;->line:I

    return v0
.end method

.method public getLiteralSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;->lsid:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    return-object v0
.end method

.method public getXMLVersion()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 141
    return-object v0
.end method

.method public setBaseSystemId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public setCharacterOffset(I)V
    .locals 0

    .prologue
    .line 102
    iput p1, p0, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;->charOffset:I

    .line 103
    return-void
.end method

.method public setColumnNumber(I)V
    .locals 0

    .prologue
    .line 94
    iput p1, p0, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;->column:I

    .line 95
    return-void
.end method

.method public setExpandedSystemId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;->esid:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setLineNumber(I)V
    .locals 0

    .prologue
    .line 98
    iput p1, p0, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;->line:I

    .line 99
    return-void
.end method

.method public setLiteralSystemId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;->lsid:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public setValues(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 46
    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;->setValues(Ljava/lang/String;Ljava/lang/String;III)V

    .line 47
    return-void
.end method

.method public setValues(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .prologue
    .line 58
    iput p3, p0, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;->line:I

    .line 59
    iput p4, p0, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;->column:I

    .line 60
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;->lsid:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;->esid:Ljava/lang/String;

    .line 62
    iput p5, p0, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;->charOffset:I

    .line 63
    return-void
.end method
