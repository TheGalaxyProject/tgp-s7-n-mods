.class public Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;
.super Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;
.source "XMLEntityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/XMLEntityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ExternalEntity"
.end annotation


# instance fields
.field public entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

.field public notation:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2551
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;-><init>()V

    .line 2552
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->clear()V

    .line 2553
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 2558
    invoke-direct {p0, p1, p4}, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;-><init>(Ljava/lang/String;Z)V

    .line 2559
    iput-object p2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    .line 2560
    iput-object p3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->notation:Ljava/lang/String;

    .line 2561
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2579
    invoke-super {p0}, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;->clear()V

    .line 2580
    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    .line 2581
    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->notation:Ljava/lang/String;

    .line 2582
    return-void
.end method

.method public final isExternal()Z
    .locals 1

    .prologue
    .line 2569
    const/4 v0, 0x1

    return v0
.end method

.method public final isUnparsed()Z
    .locals 1

    .prologue
    .line 2574
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->notation:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setValues(Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2586
    invoke-super {p0, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;->setValues(Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;)V

    .line 2587
    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    .line 2588
    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->notation:Ljava/lang/String;

    .line 2589
    return-void
.end method

.method public setValues(Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;)V
    .locals 1

    .prologue
    .line 2593
    invoke-super {p0, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;->setValues(Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;)V

    .line 2594
    iget-object v0, p1, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    .line 2595
    iget-object v0, p1, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->notation:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->notation:Ljava/lang/String;

    .line 2596
    return-void
.end method
