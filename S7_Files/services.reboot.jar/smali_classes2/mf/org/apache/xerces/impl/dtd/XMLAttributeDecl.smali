.class public Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;
.super Ljava/lang/Object;
.source "XMLAttributeDecl.java"


# instance fields
.field public final name:Lmf/org/apache/xerces/xni/QName;

.field public optional:Z

.field public final simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lmf/org/apache/xerces/xni/QName;

    .line 37
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    .line 27
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/QName;->clear()V

    .line 64
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->clear()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->optional:Z

    .line 66
    return-void
.end method

.method public setValues(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;Z)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    .line 55
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->setValues(Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;)V

    .line 56
    iput-boolean p3, p0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->optional:Z

    .line 57
    return-void
.end method
