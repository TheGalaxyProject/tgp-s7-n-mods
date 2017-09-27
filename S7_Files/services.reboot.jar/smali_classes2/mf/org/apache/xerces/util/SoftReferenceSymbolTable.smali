.class public Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;
.super Lmf/org/apache/xerces/util/SymbolTable;
.source "SoftReferenceSymbolTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;,
        Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;
    }
.end annotation


# instance fields
.field protected fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

.field private final fReferenceQueue:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v0, 0x65

    const/high16 v1, 0x3f400000    # 0.75f

    .line 109
    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;-><init>(IF)V

    .line 110
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    const/high16 v0, 0x3f400000    # 0.75f

    .line 101
    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;-><init>(IF)V

    .line 102
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    const/4 v1, 0x0

    .line 49
    iput-object v1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    .line 71
    if-ltz p1, :cond_0

    const/4 v1, 0x0

    .line 75
    cmpg-float v1, p2, v1

    if-gtz v1, :cond_1

    move v1, v0

    :goto_0
    if-nez v1, :cond_2

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_2

    .line 79
    if-eqz p1, :cond_3

    .line 83
    :goto_1
    iput p2, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fLoadFactor:F

    .line 84
    iput p1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

    .line 85
    iget v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

    new-array v0, v0, [Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    iput-object v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    .line 86
    iget v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fThreshold:I

    .line 87
    iput v2, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    .line 89
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 90
    return-void

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Illegal Capacity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v1, v2

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Illegal Load: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move p1, v0

    .line 80
    goto :goto_1
.end method

.method private clean()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    .line 315
    :goto_0
    if-eqz v0, :cond_0

    .line 316
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->removeEntry(Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;)V

    .line 317
    iget-object v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    goto :goto_0

    .line 319
    :cond_0
    return-void
.end method

.method private removeEntry(Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;)V
    .locals 3

    .prologue
    .line 298
    iget-object v0, p1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    if-nez v0, :cond_0

    .line 301
    :goto_0
    iget-object v0, p1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->prev:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    if-nez v0, :cond_1

    .line 305
    iget-object v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    iget v1, p1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->bucket:I

    iget-object v2, p1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    aput-object v2, v0, v1

    .line 307
    :goto_1
    iget v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    .line 308
    return-void

    .line 299
    :cond_0
    iget-object v0, p1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    iget-object v1, p1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->prev:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    iput-object v1, v0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->prev:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    goto :goto_0

    .line 302
    :cond_1
    iget-object v0, p1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->prev:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    iget-object v1, p1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    iput-object v1, v0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    goto :goto_1
.end method


# virtual methods
.method public addSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 125
    invoke-direct {p0}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->clean()V

    .line 127
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->hash(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

    rem-int v1, v0, v1

    .line 128
    iget-object v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    aget-object v0, v0, v1

    :goto_0
    move-object v2, v0

    if-eqz v2, :cond_2

    .line 129
    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;

    .line 130
    if-eqz v0, :cond_0

    .line 133
    iget-object v3, v0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->symbol:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 128
    :cond_0
    iget-object v0, v2, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, v0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->symbol:Ljava/lang/String;

    return-object v0

    .line 138
    :cond_2
    iget v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    iget v2, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fThreshold:I

    if-ge v0, v2, :cond_3

    move v0, v1

    .line 145
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 146
    new-instance v2, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    iget-object v3, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    aget-object v3, v3, v0

    iget-object v4, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, v1, v3, v0, v4}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;ILjava/lang/ref/ReferenceQueue;)V

    .line 147
    iget-object v3, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    aput-object v2, v3, v0

    .line 148
    iget v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    .line 149
    return-object v1

    .line 140
    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->rehash()V

    .line 141
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->hash(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

    rem-int/2addr v0, v1

    goto :goto_1
.end method

.method public addSymbol([CII)Ljava/lang/String;
    .locals 8

    .prologue
    .line 163
    invoke-direct {p0}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->clean()V

    .line 165
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->hash([CII)I

    move-result v0

    iget v1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

    rem-int v6, v0, v1

    .line 166
    iget-object v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    aget-object v0, v0, v6

    :goto_0
    move-object v1, v0

    if-eqz v1, :cond_3

    .line 167
    invoke-virtual {v1}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;

    .line 168
    if-eqz v0, :cond_0

    .line 171
    iget-object v2, v0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    array-length v2, v2

    if-eq p3, v2, :cond_1

    .line 166
    :cond_0
    iget-object v0, v1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 172
    :goto_1
    if-ge v2, p3, :cond_2

    .line 173
    add-int v3, p2, v2

    aget-char v3, p1, v3

    iget-object v4, v0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    aget-char v4, v4, v2

    if-ne v3, v4, :cond_0

    .line 172
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 177
    :cond_2
    iget-object v0, v0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->symbol:Ljava/lang/String;

    return-object v0

    .line 181
    :cond_3
    iget v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    iget v1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fThreshold:I

    if-ge v0, v1, :cond_4

    .line 188
    :goto_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 189
    new-instance v0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    iget-object v2, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    aget-object v5, v2, v6

    iget-object v7, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v7}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;-><init>(Ljava/lang/String;[CIILmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;ILjava/lang/ref/ReferenceQueue;)V

    .line 190
    iget-object v2, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    aput-object v0, v2, v6

    .line 191
    iget v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    .line 192
    return-object v1

    .line 183
    :cond_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->rehash()V

    .line 184
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->hash([CII)I

    move-result v0

    iget v1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

    rem-int v6, v0, v1

    goto :goto_2
.end method

.method public containsSymbol(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 245
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->hash(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

    rem-int/2addr v0, v1

    .line 246
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 247
    iget-object v1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    aget-object v0, v1, v0

    :goto_0
    move-object v1, v0

    if-eqz v1, :cond_3

    .line 248
    invoke-virtual {v1}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;

    .line 249
    if-eqz v0, :cond_0

    .line 252
    iget-object v2, v0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    array-length v2, v2

    if-eq v4, v2, :cond_1

    .line 247
    :cond_0
    iget-object v0, v1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    goto :goto_0

    :cond_1
    move v2, v3

    .line 253
    :goto_1
    if-ge v2, v4, :cond_2

    .line 254
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iget-object v6, v0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    aget-char v6, v6, v2

    if-ne v5, v6, :cond_0

    .line 253
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 258
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 262
    :cond_3
    return v3
.end method

.method public containsSymbol([CII)Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 277
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->hash([CII)I

    move-result v0

    iget v1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

    rem-int/2addr v0, v1

    .line 278
    iget-object v1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    aget-object v0, v1, v0

    :goto_0
    move-object v1, v0

    if-eqz v1, :cond_3

    .line 279
    invoke-virtual {v1}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;

    .line 280
    if-eqz v0, :cond_0

    .line 283
    iget-object v2, v0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    array-length v2, v2

    if-eq p3, v2, :cond_1

    .line 278
    :cond_0
    iget-object v0, v1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    goto :goto_0

    :cond_1
    move v2, v3

    .line 284
    :goto_1
    if-ge v2, p3, :cond_2

    .line 285
    add-int v4, p2, v2

    aget-char v4, p1, v4

    iget-object v5, v0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    aget-char v5, v5, v2

    if-ne v4, v5, :cond_0

    .line 284
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 289
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 293
    :cond_3
    return v3
.end method

.method protected rehash()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 204
    iget-object v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    array-length v0, v0

    .line 205
    iget-object v4, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    .line 207
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v5, v1, 0x1

    .line 208
    new-array v6, v5, [Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    .line 210
    int-to-float v1, v5

    iget v2, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fLoadFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fThreshold:I

    .line 211
    iput-object v6, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    .line 212
    iget-object v1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    array-length v1, v1

    iput v1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

    .line 214
    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_2

    .line 215
    aget-object v0, v4, v1

    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_3

    .line 217
    iget-object v3, v2, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    .line 219
    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;

    .line 220
    if-nez v0, :cond_0

    .line 230
    iget v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    move-object v2, v3

    goto :goto_1

    .line 221
    :cond_0
    iget-object v7, v0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    iget-object v0, v0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    array-length v0, v0

    invoke-virtual {p0, v7, v9, v0}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;->hash([CII)I

    move-result v0

    rem-int/2addr v0, v5

    .line 222
    aget-object v7, v6, v0

    if-nez v7, :cond_1

    .line 225
    :goto_2
    aget-object v7, v6, v0

    iput-object v7, v2, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    .line 226
    iput-object v8, v2, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->prev:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    .line 227
    aput-object v2, v6, v0

    move-object v2, v3

    .line 228
    goto :goto_1

    .line 223
    :cond_1
    aget-object v7, v6, v0

    iput-object v2, v7, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->prev:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    goto :goto_2

    .line 234
    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method
