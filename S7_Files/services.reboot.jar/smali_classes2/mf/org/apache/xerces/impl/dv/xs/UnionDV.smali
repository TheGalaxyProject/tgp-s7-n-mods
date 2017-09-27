.class public Lmf/org/apache/xerces/impl/dv/xs/UnionDV;
.super Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;
.source "UnionDV.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualValue(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    .prologue
    .line 42
    return-object p1
.end method

.method public getAllowedFacets()S
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x808

    return v0
.end method
