.class public abstract Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;
.super Ljava/lang/Object;
.source "XMLEntityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/XMLEntityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Entity"
.end annotation


# instance fields
.field public inExternalSubset:Z

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2422
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;->clear()V

    .line 2423
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 2426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2427
    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;->name:Ljava/lang/String;

    .line 2428
    iput-boolean p2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;->inExternalSubset:Z

    .line 2429
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2448
    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;->name:Ljava/lang/String;

    .line 2449
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;->inExternalSubset:Z

    .line 2450
    return-void
.end method

.method public isEntityDeclInExternalSubset()Z
    .locals 1

    .prologue
    .line 2437
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;->inExternalSubset:Z

    return v0
.end method

.method public abstract isExternal()Z
.end method

.method public abstract isUnparsed()Z
.end method

.method public setValues(Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;)V
    .locals 1

    .prologue
    .line 2454
    iget-object v0, p1, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;->name:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;->name:Ljava/lang/String;

    .line 2455
    iget-boolean v0, p1, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;->inExternalSubset:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;->inExternalSubset:Z

    .line 2456
    return-void
.end method
