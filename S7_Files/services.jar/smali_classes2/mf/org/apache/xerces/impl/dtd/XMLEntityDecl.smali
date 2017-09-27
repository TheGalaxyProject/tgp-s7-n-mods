.class public Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;
.super Ljava/lang/Object;
.source "XMLEntityDecl.java"


# instance fields
.field public baseSystemId:Ljava/lang/String;

.field public inExternal:Z

.field public isPE:Z

.field public name:Ljava/lang/String;

.field public notation:Ljava/lang/String;

.field public publicId:Ljava/lang/String;

.field public systemId:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->name:Ljava/lang/String;

    .line 107
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->publicId:Ljava/lang/String;

    .line 108
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->systemId:Ljava/lang/String;

    .line 109
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->baseSystemId:Ljava/lang/String;

    .line 110
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->notation:Ljava/lang/String;

    .line 111
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->value:Ljava/lang/String;

    .line 112
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->isPE:Z

    .line 113
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->inExternal:Z

    .line 115
    return-void
.end method

.method public setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->name:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->publicId:Ljava/lang/String;

    .line 94
    iput-object p3, p0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->systemId:Ljava/lang/String;

    .line 95
    iput-object p4, p0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->baseSystemId:Ljava/lang/String;

    .line 96
    iput-object p5, p0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->notation:Ljava/lang/String;

    .line 97
    iput-object p6, p0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->value:Ljava/lang/String;

    .line 98
    iput-boolean p7, p0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->isPE:Z

    .line 99
    iput-boolean p8, p0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->inExternal:Z

    .line 100
    return-void
.end method

.method public setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, p6

    move/from16 v8, p7

    .line 74
    invoke-virtual/range {v0 .. v8}, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 75
    return-void
.end method
