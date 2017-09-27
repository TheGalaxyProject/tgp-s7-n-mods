.class public Lmf/org/apache/xerces/impl/xs/models/XSAllCM;
.super Ljava/lang/Object;
.source "XSAllCM.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;


# static fields
.field private static final STATE_CHILD:S = 0x1s

.field private static final STATE_START:S = 0x0s

.field private static final STATE_VALID:S = 0x1s


# instance fields
.field private final fAllElements:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

.field private final fHasOptionalContent:Z

.field private final fIsOptionalElement:[Z

.field private fNumElements:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fNumElements:I

    .line 63
    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fHasOptionalContent:Z

    .line 64
    new-array v0, p2, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fAllElements:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 65
    new-array v0, p2, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fIsOptionalElement:[Z

    .line 66
    return-void
.end method


# virtual methods
.method public addElement(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Z)V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fAllElements:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fNumElements:I

    aput-object p1, v0, v1

    .line 70
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fIsOptionalElement:[Z

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fNumElements:I

    aput-boolean p2, v0, v1

    .line 71
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fNumElements:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fNumElements:I

    .line 72
    return-void
.end method

.method public checkUniqueParticleAttribution(Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    move v1, v2

    .line 184
    :goto_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fNumElements:I

    if-ge v1, v0, :cond_2

    .line 185
    add-int/lit8 v0, v1, 0x1

    :goto_1
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fNumElements:I

    if-ge v0, v3, :cond_1

    .line 186
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fAllElements:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    aget-object v3, v3, v1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fAllElements:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    aget-object v4, v4, v0

    invoke-static {v3, v4, p1}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->overlapUPA(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 188
    :cond_0
    new-instance v3, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v4, "cos-nonambig"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fAllElements:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    aget-object v1, v6, v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    const/4 v1, 0x1

    .line 189
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fAllElements:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 188
    invoke-direct {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 184
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 194
    :cond_2
    return v2
.end method

.method public endContentModel([I)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 155
    aget v0, p1, v1

    const/4 v2, -0x1

    .line 157
    if-ne v0, v2, :cond_1

    .line 158
    :cond_0
    return v1

    :cond_1
    const/4 v2, -0x2

    .line 157
    if-eq v0, v2, :cond_0

    .line 163
    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fHasOptionalContent:Z

    if-nez v2, :cond_4

    :cond_2
    move v0, v1

    .line 167
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fNumElements:I

    if-ge v0, v2, :cond_6

    .line 169
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fIsOptionalElement:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_5

    .line 167
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_4
    if-nez v0, :cond_2

    .line 164
    return v3

    .line 169
    :cond_5
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    if-nez v2, :cond_3

    .line 170
    return v1

    .line 173
    :cond_6
    return v3
.end method

.method findMatchingDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 100
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fNumElements:I

    if-ge v0, v2, :cond_0

    .line 101
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fAllElements:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    aget-object v1, v1, v0

    invoke-virtual {p2, p1, v1}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getMatchingElemDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v1

    .line 102
    if-nez v1, :cond_0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    return-object v1
.end method

.method public getTermName(I)Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 222
    return-object v0
.end method

.method public isCompactedForUPA()Z
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public occurenceInfo([I)[I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 218
    return-object v0
.end method

.method public oneTransition(Lmf/org/apache/xerces/xni/QName;[ILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 118
    aget v0, p2, v1

    if-ltz v0, :cond_1

    .line 124
    aput v3, p2, v1

    move v0, v1

    .line 128
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fNumElements:I

    if-ge v0, v2, :cond_3

    .line 131
    add-int/lit8 v2, v0, 0x1

    aget v2, p2, v2

    if-nez v2, :cond_0

    .line 133
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fAllElements:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    aget-object v2, v2, v0

    invoke-virtual {p3, p1, v2}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getMatchingElemDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v2

    .line 134
    if-nez v2, :cond_2

    .line 128
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x2

    .line 119
    aput v0, p2, v1

    .line 120
    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->findMatchingDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 136
    :cond_2
    add-int/lit8 v0, v0, 0x1

    aput v3, p2, v0

    .line 137
    return-object v2

    :cond_3
    const/4 v0, -0x1

    .line 142
    aput v0, p2, v1

    .line 143
    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->findMatchingDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public startContentModel()[I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 88
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fNumElements:I

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [I

    move v0, v1

    .line 90
    :goto_0
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fNumElements:I

    if-gt v0, v3, :cond_0

    .line 91
    aput v1, v2, v0

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    return-object v2
.end method

.method public whatCanGoHere([I)Ljava/util/Vector;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 207
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 208
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fNumElements:I

    if-ge v0, v2, :cond_1

    .line 211
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    if-eqz v2, :cond_0

    .line 208
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->fAllElements:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 214
    :cond_1
    return-object v1
.end method
