.class public Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;
.super Ljava/lang/Object;
.source "XMLElementDecl.java"


# static fields
.field public static final TYPE_ANY:S = 0x0s

.field public static final TYPE_CHILDREN:S = 0x3s

.field public static final TYPE_EMPTY:S = 0x1s

.field public static final TYPE_MIXED:S = 0x2s

.field public static final TYPE_SIMPLE:S = 0x4s


# instance fields
.field public contentModelValidator:Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

.field public final name:Lmf/org/apache/xerces/xni/QName;

.field public scope:I

.field public final simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

.field public type:S


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->name:Lmf/org/apache/xerces/xni/QName;

    .line 58
    iput v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->scope:I

    .line 61
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    .line 67
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    .line 29
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 94
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->name:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/QName;->clear()V

    .line 95
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    .line 96
    iput v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->scope:I

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->contentModelValidator:Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    .line 98
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->clear()V

    .line 99
    return-void
.end method

.method public setValues(Lmf/org/apache/xerces/xni/QName;ISLmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->name:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    .line 84
    iput p2, p0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->scope:I

    .line 85
    int-to-short v0, p3

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    .line 86
    iput-object p4, p0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->contentModelValidator:Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    .line 87
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    invoke-virtual {v0, p5}, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->setValues(Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;)V

    .line 88
    return-void
.end method
