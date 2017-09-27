.class final Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;
.super Ljava/lang/Object;
.source "XSSimpleTypeDecl.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/dv/ValidationContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ValidationContextImpl"
.end annotation


# instance fields
.field final fExternal:Lmf/org/apache/xerces/impl/dv/ValidationContext;

.field fNSContext:Lmf/org/apache/xerces/xni/NamespaceContext;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/impl/dv/ValidationContext;)V
    .locals 0

    .prologue
    .line 2901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2902
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;->fExternal:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    .line 2903
    return-void
.end method


# virtual methods
.method public addId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2938
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;->fExternal:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->addId(Ljava/lang/String;)V

    .line 2939
    return-void
.end method

.method public addIdRef(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2942
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;->fExternal:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->addIdRef(Ljava/lang/String;)V

    .line 2943
    return-void
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 2959
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;->fExternal:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2946
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;->fExternal:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->getSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2950
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;->fNSContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    if-eqz v0, :cond_0

    .line 2954
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;->fNSContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2951
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;->fExternal:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEntityDeclared(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2926
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;->fExternal:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->isEntityDeclared(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEntityUnparsed(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2930
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;->fExternal:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->isEntityUnparsed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isIdDeclared(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2934
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;->fExternal:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->isIdDeclared(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public needExtraChecking()Z
    .locals 1

    .prologue
    .line 2915
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;->fExternal:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->needExtraChecking()Z

    move-result v0

    return v0
.end method

.method public needFacetChecking()Z
    .locals 1

    .prologue
    .line 2911
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;->fExternal:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->needFacetChecking()Z

    move-result v0

    return v0
.end method

.method public needToNormalize()Z
    .locals 1

    .prologue
    .line 2918
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;->fExternal:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->needToNormalize()Z

    move-result v0

    return v0
.end method

.method setNSContext(Lmf/org/apache/xerces/xni/NamespaceContext;)V
    .locals 0

    .prologue
    .line 2907
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;->fNSContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    .line 2908
    return-void
.end method

.method public useNamespaces()Z
    .locals 1

    .prologue
    .line 2922
    const/4 v0, 0x1

    return v0
.end method
