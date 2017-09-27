.class final Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;
.super Ljava/lang/Object;
.source "SoftReferenceGrammarPool.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;,
        Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;
    }
.end annotation


# static fields
.field protected static final TABLE_SIZE:I = 0xb

.field protected static final ZERO_LENGTH_GRAMMAR_ARRAY:[Lmf/org/apache/xerces/xni/grammars/Grammar;


# instance fields
.field protected fGrammarCount:I

.field protected fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

.field protected fPoolIsLocked:Z

.field protected final fReferenceQueue:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    new-array v0, v0, [Lmf/org/apache/xerces/xni/grammars/Grammar;

    sput-object v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->ZERO_LENGTH_GRAMMAR_ARRAY:[Lmf/org/apache/xerces/xni/grammars/Grammar;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    .line 62
    iput v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammarCount:I

    .line 65
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    const/16 v0, 0xb

    .line 73
    new-array v0, v0, [Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    .line 74
    iput-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fPoolIsLocked:Z

    .line 75
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    .line 62
    iput v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammarCount:I

    .line 65
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 79
    new-array v0, p1, [Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    .line 80
    iput-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fPoolIsLocked:Z

    .line 81
    return-void
.end method

.method private clean()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    .line 371
    :goto_0
    if-eqz v0, :cond_1

    .line 372
    check-cast v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    iget-object v0, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;->entry:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    .line 373
    if-nez v0, :cond_0

    .line 376
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    goto :goto_0

    .line 374
    :cond_0
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->removeEntry(Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    goto :goto_1

    .line 378
    :cond_1
    return-void
.end method

.method private removeEntry(Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 352
    iget-object v0, p1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->prev:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    if-nez v0, :cond_0

    .line 356
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iget v1, p1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->bucket:I

    iget-object v2, p1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    aput-object v2, v0, v1

    .line 358
    :goto_0
    iget-object v0, p1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    if-nez v0, :cond_1

    .line 361
    :goto_1
    iget v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammarCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammarCount:I

    .line 362
    iget-object v0, p1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->grammar:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    iput-object v3, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;->entry:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    .line 363
    iget-object v0, p1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->grammar:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/grammars/Grammar;

    return-object v0

    .line 353
    :cond_0
    iget-object v0, p1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->prev:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iget-object v1, p1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iput-object v1, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    goto :goto_0

    .line 359
    :cond_1
    iget-object v0, p1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iget-object v1, p1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->prev:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iput-object v1, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->prev:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    goto :goto_1
.end method


# virtual methods
.method public cacheGrammars(Ljava/lang/String;[Lmf/org/apache/xerces/xni/grammars/Grammar;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 120
    iget-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fPoolIsLocked:Z

    if-eqz v1, :cond_1

    .line 125
    :cond_0
    return-void

    .line 122
    :goto_0
    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->putGrammar(Lmf/org/apache/xerces/xni/grammars/Grammar;)V

    .line 121
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

    .line 274
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 275
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    .line 274
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->clear()V

    .line 277
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    aput-object v3, v2, v0

    goto :goto_1

    .line 280
    :cond_1
    iput v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammarCount:I

    .line 281
    return-void
.end method

.method public containsGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 236
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    monitor-enter v2

    .line 237
    :try_start_0
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->clean()V

    .line 238
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v3

    const v0, 0x7fffffff

    .line 239
    and-int/2addr v0, v3

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 240
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    aget-object v0, v1, v0

    :goto_0
    move-object v1, v0

    if-eqz v1, :cond_3

    .line 241
    iget-object v0, v1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->grammar:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/grammars/Grammar;

    .line 243
    if-eqz v0, :cond_1

    .line 246
    iget v0, v1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->hash:I

    if-eq v0, v3, :cond_2

    .line 240
    :cond_0
    :goto_1
    iget-object v0, v1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    goto :goto_0

    .line 244
    :cond_1
    invoke-direct {p0, v1}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->removeEntry(Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    goto :goto_1

    .line 250
    :catchall_0
    move-exception v0

    .line 236
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 246
    :cond_2
    :try_start_1
    iget-object v0, v1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    monitor-exit v2

    const/4 v0, 0x1

    return v0

    .line 250
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v4
.end method

.method public equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 293
    instance-of v0, p1, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;

    if-nez v0, :cond_0

    .line 324
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 294
    :cond_0
    instance-of v0, p2, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;

    if-eqz v0, :cond_3

    .line 297
    check-cast p1, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;

    .line 298
    check-cast p2, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;

    .line 299
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v0

    .line 300
    if-nez v0, :cond_4

    .line 305
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 313
    :cond_1
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    .line 314
    if-nez v0, :cond_6

    .line 319
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 322
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 295
    :cond_3
    return v2

    .line 301
    :cond_4
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 302
    return v2

    .line 306
    :cond_5
    return v2

    .line 315
    :cond_6
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 316
    return v2

    .line 320
    :cond_7
    return v2
.end method

.method public getGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 186
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    monitor-enter v2

    .line 187
    :try_start_0
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->clean()V

    .line 188
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v3

    const v0, 0x7fffffff

    .line 189
    and-int/2addr v0, v3

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 190
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    aget-object v0, v1, v0

    :goto_0
    move-object v1, v0

    if-eqz v1, :cond_3

    .line 191
    iget-object v0, v1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->grammar:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/grammars/Grammar;

    .line 193
    if-eqz v0, :cond_1

    .line 196
    iget v4, v1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->hash:I

    if-eq v4, v3, :cond_2

    .line 190
    :cond_0
    :goto_1
    iget-object v0, v1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    goto :goto_0

    .line 194
    :cond_1
    invoke-direct {p0, v1}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->removeEntry(Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    goto :goto_1

    .line 200
    :catchall_0
    move-exception v0

    .line 186
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 196
    :cond_2
    :try_start_1
    iget-object v4, v1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v4, p1}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 197
    monitor-exit v2

    return-object v0

    .line 200
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v5
.end method

.method public hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 334
    instance-of v0, p1, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;

    if-nez v0, :cond_0

    .line 342
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 335
    :cond_0
    check-cast p1, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;

    .line 336
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v2

    .line 338
    if-nez v0, :cond_1

    move v0, v1

    .line 339
    :goto_0
    if-nez v2, :cond_2

    :goto_1
    xor-int/2addr v0, v1

    .line 340
    return v0

    .line 338
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 339
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public lockPool()V
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fPoolIsLocked:Z

    .line 259
    return-void
.end method

.method public putGrammar(Lmf/org/apache/xerces/xni/grammars/Grammar;)V
    .locals 8

    .prologue
    .line 156
    iget-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fPoolIsLocked:Z

    if-eqz v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    monitor-enter v7

    .line 158
    :try_start_0
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->clean()V

    .line 159
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/grammars/Grammar;->getGrammarDescription()Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    move-result-object v3

    .line 160
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v1

    const v0, 0x7fffffff

    .line 161
    and-int/2addr v0, v1

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    array-length v2, v2

    rem-int v2, v0, v2

    .line 162
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    aget-object v0, v0, v2

    :goto_1
    if-eqz v0, :cond_4

    .line 163
    iget v4, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->hash:I

    if-eq v4, v1, :cond_2

    .line 162
    :cond_1
    iget-object v0, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    goto :goto_1

    .line 163
    :cond_2
    iget-object v4, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v4, v3}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 164
    iget-object v1, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->grammar:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    invoke-virtual {v1}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_3

    .line 167
    :goto_2
    monitor-exit v7

    return-void

    .line 165
    :cond_3
    new-instance v1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, v0, p1, v2}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;-><init>(Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;Lmf/org/apache/xerces/xni/grammars/Grammar;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v1, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->grammar:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    goto :goto_2

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 171
    :cond_4
    :try_start_1
    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    aget-object v5, v4, v2

    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;-><init>(IILmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/Grammar;Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;Ljava/lang/ref/ReferenceQueue;)V

    .line 172
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    aput-object v0, v1, v2

    .line 173
    iget v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammarCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammarCount:I

    .line 157
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public removeGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 214
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    monitor-enter v1

    .line 215
    :try_start_0
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->clean()V

    .line 216
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v2

    const v0, 0x7fffffff

    .line 217
    and-int/2addr v0, v2

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    array-length v3, v3

    rem-int/2addr v0, v3

    .line 218
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    aget-object v0, v3, v0

    :goto_0
    if-eqz v0, :cond_2

    .line 219
    iget v3, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->hash:I

    if-eq v3, v2, :cond_1

    .line 218
    :cond_0
    iget-object v0, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    goto :goto_0

    .line 219
    :cond_1
    iget-object v3, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v3, p1}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 220
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->removeEntry(Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 223
    :cond_2
    monitor-exit v1

    return-object v4

    :catchall_0
    move-exception v0

    .line 214
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public retrieveGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->getGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

    return-object v0
.end method

.method public retrieveInitialGrammarSet(Ljava/lang/String;)[Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 2

    .prologue
    .line 98
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    monitor-enter v1

    .line 99
    :try_start_0
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->clean()V

    .line 104
    sget-object v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->ZERO_LENGTH_GRAMMAR_ARRAY:[Lmf/org/apache/xerces/xni/grammars/Grammar;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    .line 98
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unlockPool()V
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fPoolIsLocked:Z

    .line 267
    return-void
.end method
