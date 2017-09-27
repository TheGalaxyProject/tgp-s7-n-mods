.class final Lmf/org/apache/xerces/jaxp/validation/XMLSchema;
.super Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;
.source "XMLSchema.java"


# instance fields
.field private final fFullyComposed:Z

.field private final fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchema;-><init>(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Z)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Z)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;-><init>()V

    .line 42
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchema;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    .line 43
    iput-boolean p2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchema;->fFullyComposed:Z

    .line 44
    return-void
.end method


# virtual methods
.method public getGrammarPool()Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchema;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    return-object v0
.end method

.method public isFullyComposed()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchema;->fFullyComposed:Z

    return v0
.end method
