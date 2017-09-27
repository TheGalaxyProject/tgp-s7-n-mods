.class public Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;
.super Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;
.source "Field.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/identity/Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Matcher"
.end annotation


# instance fields
.field protected fMayMatch:Z

.field protected final fStore:Lmf/org/apache/xerces/impl/xs/identity/ValueStore;

.field final synthetic this$0:Lmf/org/apache/xerces/impl/xs/identity/Field;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/identity/Field;Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;Lmf/org/apache/xerces/impl/xs/identity/ValueStore;)V
    .locals 1

    .prologue
    .line 220
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->this$0:Lmf/org/apache/xerces/impl/xs/identity/Field;

    .line 221
    invoke-direct {p0, p2}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;-><init>(Lmf/org/apache/xerces/impl/xpath/XPath;)V

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->fMayMatch:Z

    .line 222
    iput-object p3, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->fStore:Lmf/org/apache/xerces/impl/xs/identity/ValueStore;

    .line 223
    return-void
.end method

.method private convertToPrimitiveKind(Lmf/org/apache/xerces/xs/ShortList;)Lmf/org/apache/xerces/xs/ShortList;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 265
    if-nez p1, :cond_1

    .line 285
    :cond_0
    return-object p1

    .line 267
    :cond_1
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ShortList;->getLength()I

    move-result v2

    move v0, v1

    .line 268
    :goto_0
    if-ge v0, v2, :cond_2

    .line 269
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xs/ShortList;->item(I)S

    move-result v3

    .line 270
    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->convertToPrimitiveKind(S)S

    move-result v4

    if-ne v3, v4, :cond_2

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_2
    if-eq v0, v2, :cond_0

    .line 275
    new-array v3, v2, [S

    .line 276
    :goto_1
    if-ge v1, v0, :cond_4

    .line 277
    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xs/ShortList;->item(I)S

    move-result v4

    int-to-short v4, v4

    aput-short v4, v3, v1

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 280
    :cond_3
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xs/ShortList;->item(I)S

    move-result v1

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->convertToPrimitiveKind(S)S

    move-result v1

    int-to-short v1, v1

    aput-short v1, v3, v0

    .line 279
    add-int/lit8 v0, v0, 0x1

    :cond_4
    if-lt v0, v2, :cond_3

    .line 282
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;

    array-length v1, v3

    invoke-direct {v0, v3, v1}, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;-><init>([SI)V

    return-object v0
.end method

.method private convertToPrimitiveKind(S)S
    .locals 1

    .prologue
    const/16 v0, 0x14

    .line 249
    if-le p1, v0, :cond_0

    const/16 v0, 0x1d

    .line 253
    if-le p1, v0, :cond_1

    const/16 v0, 0x2a

    .line 257
    if-le p1, v0, :cond_2

    .line 261
    return p1

    .line 250
    :cond_0
    return p1

    .line 254
    :cond_1
    const/4 v0, 0x2

    return v0

    .line 258
    :cond_2
    const/4 v0, 0x4

    return v0
.end method


# virtual methods
.method protected handleContent(Lmf/org/apache/xerces/xs/XSTypeDefinition;ZLjava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 289
    if-nez p1, :cond_2

    .line 295
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->fStore:Lmf/org/apache/xerces/impl/xs/identity/ValueStore;

    const-string/jumbo v1, "cvc-id.3"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 296
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->this$0:Lmf/org/apache/xerces/impl/xs/identity/Field;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xs/identity/Field;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 297
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->this$0:Lmf/org/apache/xerces/impl/xs/identity/Field;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/identity/Field;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getElementName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 295
    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/identity/ValueStore;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    :cond_1
    :goto_0
    iput-object p3, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->fMatchedString:Ljava/lang/Object;

    .line 301
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->fMatchedString:Ljava/lang/Object;

    invoke-virtual {p0, v0, p4, p5, p2}, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->matched(Ljava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;Z)V

    .line 302
    return-void

    .line 290
    :cond_2
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 291
    check-cast p1, Lmf/org/apache/xerces/xs/XSComplexTypeDefinition;

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSComplexTypeDefinition;->getContentType()S

    move-result v0

    if-ne v0, v5, :cond_0

    goto :goto_0
.end method

.method protected matched(Ljava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;Z)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 234
    invoke-super {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->matched(Ljava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;Z)V

    .line 235
    if-nez p4, :cond_1

    .line 240
    :cond_0
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->fStore:Lmf/org/apache/xerces/impl/xs/identity/ValueStore;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->this$0:Lmf/org/apache/xerces/impl/xs/identity/Field;

    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->fMayMatch:Z

    invoke-direct {p0, p2}, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->convertToPrimitiveKind(S)S

    move-result v4

    invoke-direct {p0, p3}, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->convertToPrimitiveKind(Lmf/org/apache/xerces/xs/ShortList;)Lmf/org/apache/xerces/xs/ShortList;

    move-result-object v5

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/identity/ValueStore;->addValue(Lmf/org/apache/xerces/impl/xs/identity/Field;ZLjava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;)V

    .line 244
    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->fMayMatch:Z

    .line 245
    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->this$0:Lmf/org/apache/xerces/impl/xs/identity/Field;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/identity/Field;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v0

    if-ne v0, v4, :cond_0

    const-string/jumbo v0, "KeyMatchesNillable"

    .line 237
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->fStore:Lmf/org/apache/xerces/impl/xs/identity/ValueStore;

    const/4 v2, 0x2

    .line 238
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->this$0:Lmf/org/apache/xerces/impl/xs/identity/Field;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/identity/Field;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getElementName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->this$0:Lmf/org/apache/xerces/impl/xs/identity/Field;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/identity/Field;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 237
    invoke-interface {v1, v0, v2}, Lmf/org/apache/xerces/impl/xs/identity/ValueStore;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
