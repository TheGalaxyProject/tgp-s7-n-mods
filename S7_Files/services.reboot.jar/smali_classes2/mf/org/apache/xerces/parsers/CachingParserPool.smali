.class public Lmf/org/apache/xerces/parsers/CachingParserPool;
.super Ljava/lang/Object;
.source "CachingParserPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/parsers/CachingParserPool$ShadowedGrammarPool;,
        Lmf/org/apache/xerces/parsers/CachingParserPool$SynchronizedGrammarPool;
    }
.end annotation


# static fields
.field public static final DEFAULT_SHADOW_GRAMMAR_POOL:Z

.field public static final DEFAULT_SHADOW_SYMBOL_TABLE:Z


# instance fields
.field protected fShadowGrammarPool:Z

.field protected fShadowSymbolTable:Z

.field protected fSynchronizedGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

.field protected fSynchronizedSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 114
    new-instance v0, Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    new-instance v1, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;

    invoke-direct {v1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;-><init>()V

    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/parsers/CachingParserPool;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/CachingParserPool;->fShadowSymbolTable:Z

    .line 106
    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/CachingParserPool;->fShadowGrammarPool:Z

    .line 125
    new-instance v0, Lmf/org/apache/xerces/util/SynchronizedSymbolTable;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/util/SynchronizedSymbolTable;-><init>(Lmf/org/apache/xerces/util/SymbolTable;)V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/CachingParserPool;->fSynchronizedSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 126
    new-instance v0, Lmf/org/apache/xerces/parsers/CachingParserPool$SynchronizedGrammarPool;

    invoke-direct {v0, p2}, Lmf/org/apache/xerces/parsers/CachingParserPool$SynchronizedGrammarPool;-><init>(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/CachingParserPool;->fSynchronizedGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    .line 127
    return-void
.end method


# virtual methods
.method public createDOMParser()Lmf/org/apache/xerces/parsers/DOMParser;
    .locals 3

    .prologue
    .line 165
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/CachingParserPool;->fShadowSymbolTable:Z

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/CachingParserPool;->fSynchronizedSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 168
    :goto_0
    iget-boolean v1, p0, Lmf/org/apache/xerces/parsers/CachingParserPool;->fShadowGrammarPool:Z

    if-nez v1, :cond_1

    .line 170
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/CachingParserPool;->fSynchronizedGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    .line 171
    :goto_1
    new-instance v2, Lmf/org/apache/xerces/parsers/DOMParser;

    invoke-direct {v2, v0, v1}, Lmf/org/apache/xerces/parsers/DOMParser;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    return-object v2

    .line 166
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/util/ShadowedSymbolTable;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/CachingParserPool;->fSynchronizedSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/ShadowedSymbolTable;-><init>(Lmf/org/apache/xerces/util/SymbolTable;)V

    goto :goto_0

    .line 169
    :cond_1
    new-instance v1, Lmf/org/apache/xerces/parsers/CachingParserPool$ShadowedGrammarPool;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/CachingParserPool;->fSynchronizedGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/parsers/CachingParserPool$ShadowedGrammarPool;-><init>(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    goto :goto_1
.end method

.method public createSAXParser()Lmf/org/apache/xerces/parsers/SAXParser;
    .locals 3

    .prologue
    .line 176
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/CachingParserPool;->fShadowSymbolTable:Z

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/CachingParserPool;->fSynchronizedSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 179
    :goto_0
    iget-boolean v1, p0, Lmf/org/apache/xerces/parsers/CachingParserPool;->fShadowGrammarPool:Z

    if-nez v1, :cond_1

    .line 181
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/CachingParserPool;->fSynchronizedGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    .line 182
    :goto_1
    new-instance v2, Lmf/org/apache/xerces/parsers/SAXParser;

    invoke-direct {v2, v0, v1}, Lmf/org/apache/xerces/parsers/SAXParser;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    return-object v2

    .line 177
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/util/ShadowedSymbolTable;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/CachingParserPool;->fSynchronizedSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/ShadowedSymbolTable;-><init>(Lmf/org/apache/xerces/util/SymbolTable;)V

    goto :goto_0

    .line 180
    :cond_1
    new-instance v1, Lmf/org/apache/xerces/parsers/CachingParserPool$ShadowedGrammarPool;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/CachingParserPool;->fSynchronizedGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/parsers/CachingParserPool$ShadowedGrammarPool;-><init>(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    goto :goto_1
.end method

.method public getSymbolTable()Lmf/org/apache/xerces/util/SymbolTable;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/CachingParserPool;->fSynchronizedSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    return-object v0
.end method

.method public getXMLGrammarPool()Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/CachingParserPool;->fSynchronizedGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    return-object v0
.end method

.method public setShadowSymbolTable(Z)V
    .locals 0

    .prologue
    .line 158
    iput-boolean p1, p0, Lmf/org/apache/xerces/parsers/CachingParserPool;->fShadowSymbolTable:Z

    .line 159
    return-void
.end method
