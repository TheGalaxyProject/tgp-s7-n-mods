.class public Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
.super Ljava/lang/Object;
.source "XSModelGroupImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSModelGroup;


# static fields
.field public static final MODELGROUP_ALL:S = 0x67s

.field public static final MODELGROUP_CHOICE:S = 0x65s

.field public static final MODELGROUP_SEQUENCE:S = 0x66s


# instance fields
.field public fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

.field public fCompositor:S

.field private fDescription:Ljava/lang/String;

.field public fParticleCount:I

.field public fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    .line 55
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 146
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fDescription:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private maxEffectiveTotalRangeAllSeq()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    move v1, v0

    .line 114
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-ge v0, v2, :cond_1

    .line 115
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->maxEffectiveTotalRange()I

    move-result v2

    .line 116
    if-eq v2, v3, :cond_0

    .line 118
    add-int/2addr v1, v2

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_0
    return v3

    .line 120
    :cond_1
    return v1
.end method

.method private maxEffectiveTotalRangeChoice()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 127
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-gtz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    move v2, v1

    .line 133
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-ge v2, v1, :cond_4

    .line 134
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->maxEffectiveTotalRange()I

    move-result v1

    .line 135
    if-eq v1, v3, :cond_2

    .line 137
    if-gt v1, v0, :cond_3

    .line 133
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 128
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->maxEffectiveTotalRange()I

    move-result v0

    .line 129
    if-ne v0, v3, :cond_0

    .line 130
    return v3

    .line 136
    :cond_2
    return v3

    :cond_3
    move v0, v1

    .line 138
    goto :goto_1

    .line 140
    :cond_4
    return v0
.end method

.method private minEffectiveTotalRangeAllSeq()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    move v1, v0

    .line 83
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-ge v0, v2, :cond_0

    .line 84
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->minEffectiveTotalRange()I

    move-result v2

    add-int/2addr v1, v2

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    return v1
.end method

.method private minEffectiveTotalRangeChoice()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 91
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-gtz v1, :cond_0

    :goto_0
    const/4 v1, 0x1

    move v2, v1

    .line 94
    :goto_1
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-ge v2, v1, :cond_2

    .line 95
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->minEffectiveTotalRange()I

    move-result v1

    .line 96
    if-lt v1, v0, :cond_1

    .line 94
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 92
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->minEffectiveTotalRange()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 97
    goto :goto_2

    .line 100
    :cond_2
    return v0
.end method


# virtual methods
.method public getAnnotation()Lmf/org/apache/xerces/xs/XSAnnotation;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 227
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/XSAnnotation;

    goto :goto_0
.end method

.method public getAnnotations()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    if-nez v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    goto :goto_0
.end method

.method public getCompositor()S
    .locals 2

    .prologue
    .line 208
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    .line 210
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v1, 0x66

    if-eq v0, v1, :cond_1

    .line 213
    const/4 v0, 0x3

    return v0

    .line 209
    :cond_0
    const/4 v0, 0x2

    return v0

    .line 211
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 191
    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 200
    return-object v0
.end method

.method public getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 241
    return-object v0
.end method

.method public getParticles()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 3

    .prologue
    .line 220
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    return-object v0
.end method

.method public getType()S
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x7

    return v0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 59
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-ge v0, v2, :cond_1

    .line 60
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_0
    return v1

    .line 63
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public maxEffectiveTotalRange()I
    .locals 2

    .prologue
    .line 104
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    .line 107
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->maxEffectiveTotalRangeAllSeq()I

    move-result v0

    return v0

    .line 105
    :cond_0
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->maxEffectiveTotalRangeChoice()I

    move-result v0

    return v0
.end method

.method public minEffectiveTotalRange()I
    .locals 2

    .prologue
    .line 74
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    .line 77
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->minEffectiveTotalRangeAllSeq()I

    move-result v0

    return v0

    .line 75
    :cond_0
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->minEffectiveTotalRangeChoice()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    const/16 v0, 0x66

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    .line 173
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    const/4 v0, 0x0

    .line 174
    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    .line 175
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fDescription:Ljava/lang/String;

    .line 176
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 177
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 149
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fDescription:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 168
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fDescription:Ljava/lang/String;

    return-object v0

    .line 150
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 151
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v2, 0x67

    if-eq v0, v2, :cond_1

    .line 154
    const/16 v0, 0x28

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 155
    :goto_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-gtz v0, :cond_2

    :goto_2
    const/4 v0, 0x1

    .line 157
    :goto_3
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-ge v0, v2, :cond_4

    .line 158
    iget-short v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v3, 0x65

    if-eq v2, v3, :cond_3

    .line 161
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 162
    :goto_4
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1
    const-string/jumbo v0, "all("

    .line 152
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 156
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 159
    :cond_3
    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 165
    :cond_4
    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 166
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fDescription:Ljava/lang/String;

    goto :goto_0
.end method
