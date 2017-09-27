.class public Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;
.super Ljava/lang/Object;
.source "XSGrammarBucket.java"


# instance fields
.field fGrammarRegistry:Ljava/util/Hashtable;

.field fNoNSGrammar:Lmf/org/apache/xerces/impl/xs/SchemaGrammar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->fGrammarRegistry:Ljava/util/Hashtable;

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->fNoNSGrammar:Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .line 32
    return-void
.end method


# virtual methods
.method public getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .locals 1

    .prologue
    .line 49
    if-eqz p1, :cond_0

    .line 51
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->fGrammarRegistry:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    return-object v0

    .line 50
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->fNoNSGrammar:Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    return-object v0
.end method

.method public getGrammars()[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 214
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->fGrammarRegistry:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->fNoNSGrammar:Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int v3, v2, v0

    .line 215
    new-array v4, v3, [Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .line 217
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->fGrammarRegistry:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v5

    .line 219
    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    add-int/lit8 v2, v1, 0x1

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aput-object v0, v4, v1

    move v1, v2

    goto :goto_1

    :cond_0
    move v0, v1

    .line 214
    goto :goto_0

    .line 222
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->fNoNSGrammar:Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-nez v0, :cond_2

    .line 224
    :goto_2
    return-object v4

    .line 223
    :cond_2
    add-int/lit8 v0, v3, -0x1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->fNoNSGrammar:Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aput-object v1, v4, v0

    goto :goto_2
.end method

.method public putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->fGrammarRegistry:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_0
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->fNoNSGrammar:Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    goto :goto_0
.end method

.method public putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Z)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 80
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    .line 81
    if-nez v0, :cond_1

    .line 86
    if-eqz p2, :cond_3

    .line 94
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_4

    .line 100
    invoke-virtual {v0}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    move v2, v3

    .line 104
    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_8

    .line 106
    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .line 108
    iget-object v4, v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v4

    .line 109
    if-eqz v4, :cond_5

    .line 123
    if-ne v4, v1, :cond_7

    .line 104
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 83
    :cond_1
    if-eq v0, p1, :cond_2

    return v3

    :cond_2
    return v7

    .line 87
    :cond_3
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    .line 88
    return v7

    .line 96
    :cond_4
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    .line 97
    return v7

    .line 111
    :cond_5
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object v5

    .line 114
    if-eqz v5, :cond_0

    .line 115
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    :goto_1
    if-ltz v4, :cond_0

    .line 116
    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .line 117
    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 115
    :goto_2
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    goto :goto_1

    .line 118
    :cond_6
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    .line 124
    :cond_7
    return v3

    .line 129
    :cond_8
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    .line 130
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_3
    if-ltz v2, :cond_9

    .line 131
    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    .line 130
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_3

    .line 133
    :cond_9
    return v7
.end method

.method public putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ZZ)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 149
    if-eqz p3, :cond_1

    .line 154
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_2

    .line 160
    :goto_0
    if-eqz p2, :cond_3

    .line 167
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_4

    .line 172
    invoke-virtual {v0}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    move v2, v1

    .line 176
    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_7

    .line 178
    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .line 180
    iget-object v3, v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v3

    .line 181
    if-eqz v3, :cond_5

    .line 195
    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 176
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 150
    :cond_1
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Z)Z

    move-result v0

    return v0

    .line 156
    :cond_2
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    goto :goto_0

    .line 161
    :cond_3
    return v6

    .line 169
    :cond_4
    return v6

    .line 183
    :cond_5
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object v4

    .line 186
    if-eqz v4, :cond_0

    .line 187
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_2
    if-ltz v3, :cond_0

    .line 188
    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .line 189
    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 187
    :goto_3
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_2

    .line 190
    :cond_6
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    .line 200
    :cond_7
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_4
    if-ltz v2, :cond_8

    .line 201
    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    .line 200
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_4

    .line 204
    :cond_8
    return v6
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 232
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->fNoNSGrammar:Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .line 233
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->fGrammarRegistry:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 234
    return-void
.end method
