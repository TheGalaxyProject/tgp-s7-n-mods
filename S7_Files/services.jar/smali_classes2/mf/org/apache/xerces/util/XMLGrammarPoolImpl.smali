.class public Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;
.super Ljava/lang/Object;
.source "XMLGrammarPoolImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field protected static final TABLE_SIZE:I = 0xb


# instance fields
.field protected fGrammarCount:I

.field protected fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

.field protected fPoolIsLocked:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    .line 60
    iput v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    const/16 v0, 0xb

    .line 70
    new-array v0, v0, [Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    .line 71
    iput-boolean v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

    .line 72
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    .line 60
    iput v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    .line 76
    new-array v0, p1, [Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    .line 77
    iput-boolean v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

    .line 78
    return-void
.end method


# virtual methods
.method public cacheGrammars(Ljava/lang/String;[Lmf/org/apache/xerces/xni/grammars/Grammar;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 124
    iget-boolean v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

    if-eqz v1, :cond_1

    .line 134
    :cond_0
    return-void

    .line 131
    :goto_0
    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->putGrammar(Lmf/org/apache/xerces/xni/grammars/Grammar;)V

    .line 125
    add-int/lit8 v0, v0, 0x1

    :cond_1
    array-length v1, p2

    if-ge v0, v1, :cond_0

    goto :goto_0
.end method

.method public clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    move v0, v1

    .line 280
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 281
    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    .line 280
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->clear()V

    .line 283
    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aput-object v3, v2, v0

    goto :goto_1

    .line 286
    :cond_1
    iput v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    .line 287
    return-void
.end method

.method public containsGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 248
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    monitor-enter v1

    .line 249
    :try_start_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v2

    const v0, 0x7fffffff

    .line 250
    and-int/2addr v0, v2

    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    array-length v3, v3

    rem-int/2addr v0, v3

    .line 251
    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v0, v3, v0

    :goto_0
    if-eqz v0, :cond_2

    .line 252
    iget v3, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->hash:I

    if-eq v3, v2, :cond_1

    .line 251
    :cond_0
    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    goto :goto_0

    .line 252
    :cond_1
    iget-object v3, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v3, p1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 253
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    .line 256
    :cond_2
    monitor-exit v1

    return v4

    :catchall_0
    move-exception v0

    .line 248
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 196
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    monitor-enter v1

    .line 197
    :try_start_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v2

    const v0, 0x7fffffff

    .line 198
    and-int/2addr v0, v2

    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    array-length v3, v3

    rem-int/2addr v0, v3

    .line 199
    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v0, v3, v0

    :goto_0
    if-eqz v0, :cond_2

    .line 200
    iget v3, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->hash:I

    if-eq v3, v2, :cond_1

    .line 199
    :cond_0
    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    goto :goto_0

    .line 200
    :cond_1
    iget-object v3, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v3, p1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 201
    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->grammar:Lmf/org/apache/xerces/xni/grammars/Grammar;

    monitor-exit v1

    return-object v0

    .line 204
    :cond_2
    monitor-exit v1

    return-object v4

    :catchall_0
    move-exception v0

    .line 196
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public lockPool()V
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

    .line 265
    return-void
.end method

.method public putGrammar(Lmf/org/apache/xerces/xni/grammars/Grammar;)V
    .locals 6

    .prologue
    .line 169
    iget-boolean v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

    if-eqz v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    monitor-enter v1

    .line 171
    :try_start_0
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/grammars/Grammar;->getGrammarDescription()Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    move-result-object v2

    .line 172
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v3

    const v0, 0x7fffffff

    .line 173
    and-int/2addr v0, v3

    iget-object v4, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    array-length v4, v4

    rem-int v4, v0, v4

    .line 174
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v0, v0, v4

    :goto_1
    if-eqz v0, :cond_3

    .line 175
    iget v5, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->hash:I

    if-eq v5, v3, :cond_2

    .line 174
    :cond_1
    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    goto :goto_1

    .line 175
    :cond_2
    iget-object v5, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v5, v2}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 176
    iput-object p1, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->grammar:Lmf/org/apache/xerces/xni/grammars/Grammar;

    .line 177
    monitor-exit v1

    return-void

    .line 181
    :cond_3
    new-instance v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    iget-object v5, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v5, v5, v4

    invoke-direct {v0, v3, v2, p1, v5}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;-><init>(ILmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/Grammar;Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;)V

    .line 182
    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aput-object v0, v2, v4

    .line 183
    iget v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    .line 170
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 218
    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    monitor-enter v3

    .line 219
    :try_start_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v4

    const v0, 0x7fffffff

    .line 220
    and-int/2addr v0, v4

    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    array-length v2, v2

    rem-int v5, v0, v2

    .line 221
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v2, v0, v5

    move-object v0, v1

    :goto_0
    if-eqz v2, :cond_3

    .line 222
    iget v6, v2, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->hash:I

    if-eq v6, v4, :cond_1

    .line 221
    :cond_0
    iget-object v0, v2, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_0

    .line 222
    :cond_1
    iget-object v6, v2, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v6, p1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 223
    if-nez v0, :cond_2

    .line 227
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    iget-object v1, v2, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aput-object v1, v0, v5

    .line 229
    :goto_1
    iget-object v0, v2, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->grammar:Lmf/org/apache/xerces/xni/grammars/Grammar;

    const/4 v1, 0x0

    .line 230
    iput-object v1, v2, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->grammar:Lmf/org/apache/xerces/xni/grammars/Grammar;

    .line 231
    iget v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    .line 232
    monitor-exit v3

    return-object v0

    .line 224
    :cond_2
    iget-object v1, v2, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    iput-object v1, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    goto :goto_1

    .line 235
    :catchall_0
    move-exception v0

    .line 218
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 235
    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public retrieveGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->getGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

    return-object v0
.end method

.method public retrieveInitialGrammarSet(Ljava/lang/String;)[Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 95
    iget-object v4, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    monitor-enter v4

    .line 96
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    array-length v5, v1

    .line 97
    iget v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    new-array v6, v1, [Lmf/org/apache/xerces/xni/grammars/Grammar;

    move v1, v0

    .line 99
    :goto_0
    if-ge v0, v5, :cond_2

    .line 100
    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v2, v2, v0

    :goto_1
    if-eqz v2, :cond_1

    .line 101
    iget-object v3, v2, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;->getGrammarType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v1

    .line 100
    :goto_2
    iget-object v1, v2, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    move-object v2, v1

    move v1, v3

    goto :goto_1

    .line 102
    :cond_0
    add-int/lit8 v3, v1, 0x1

    iget-object v7, v2, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->grammar:Lmf/org/apache/xerces/xni/grammars/Grammar;

    aput-object v7, v6, v1

    goto :goto_2

    .line 108
    :catchall_0
    move-exception v0

    .line 95
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 99
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_2
    :try_start_1
    new-array v0, v1, [Lmf/org/apache/xerces/xni/grammars/Grammar;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 107
    invoke-static {v6, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public unlockPool()V
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

    .line 273
    return-void
.end method
