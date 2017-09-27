.class public Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;
.super Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;
.source "XMLSchemaValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "KeyRefValueStore"
.end annotation


# instance fields
.field protected fKeyValueStore:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

.field final synthetic this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;Lmf/org/apache/xerces/impl/xs/identity/KeyRef;Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;)V
    .locals 0

    .prologue
    .line 4215
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    .line 4216
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;-><init>(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    .line 4217
    iput-object p3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;->fKeyValueStore:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    .line 4218
    return-void
.end method


# virtual methods
.method public endDocument()V
    .locals 0

    .prologue
    .line 4257
    invoke-super {p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->endDocument()V

    .line 4259
    return-void
.end method

.method public endDocumentFragment()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4229
    invoke-super {p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->endDocumentFragment()V

    .line 4234
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/HashMap;

    .line 4235
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/identity/KeyRef;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/identity/KeyRef;->getKey()Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;

    move-result-object v0

    .line 4234
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    .line 4233
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;->fKeyValueStore:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    .line 4237
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;->fKeyValueStore:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    if-eqz v0, :cond_0

    .line 4244
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;->fKeyValueStore:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->contains(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;)I

    move-result v0

    const/4 v1, -0x1

    .line 4245
    if-ne v0, v1, :cond_1

    .line 4253
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "KeyRefOutOfScope"

    .line 4240
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4241
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v6

    invoke-virtual {v2, v0, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4242
    return-void

    :cond_1
    const-string/jumbo v1, "KeyNotFound"

    .line 4247
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;->fValues:Ljava/util/Vector;

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;->fFieldCount:I

    invoke-virtual {p0, v2, v0, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;->toString(Ljava/util/Vector;II)Ljava/lang/String;

    move-result-object v0

    .line 4248
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getElementName()Ljava/lang/String;

    move-result-object v2

    .line 4249
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getName()Ljava/lang/String;

    move-result-object v3

    .line 4250
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v6

    aput-object v0, v5, v7

    const/4 v0, 0x2

    aput-object v2, v5, v0

    invoke-virtual {v4, v1, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
