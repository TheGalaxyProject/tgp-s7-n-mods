.class public final Lmf/org/apache/xerces/util/SymbolHash$Entry;
.super Ljava/lang/Object;
.source "SymbolHash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/util/SymbolHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Entry"
.end annotation


# instance fields
.field public key:Ljava/lang/Object;

.field public next:Lmf/org/apache/xerces/util/SymbolHash$Entry;

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object v0, p0, Lmf/org/apache/xerces/util/SymbolHash$Entry;->key:Ljava/lang/Object;

    .line 202
    iput-object v0, p0, Lmf/org/apache/xerces/util/SymbolHash$Entry;->value:Ljava/lang/Object;

    .line 203
    iput-object v0, p0, Lmf/org/apache/xerces/util/SymbolHash$Entry;->next:Lmf/org/apache/xerces/util/SymbolHash$Entry;

    .line 204
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lmf/org/apache/xerces/util/SymbolHash$Entry;)V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object p1, p0, Lmf/org/apache/xerces/util/SymbolHash$Entry;->key:Ljava/lang/Object;

    .line 208
    iput-object p2, p0, Lmf/org/apache/xerces/util/SymbolHash$Entry;->value:Ljava/lang/Object;

    .line 209
    iput-object p3, p0, Lmf/org/apache/xerces/util/SymbolHash$Entry;->next:Lmf/org/apache/xerces/util/SymbolHash$Entry;

    .line 210
    return-void
.end method


# virtual methods
.method public makeClone()Lmf/org/apache/xerces/util/SymbolHash$Entry;
    .locals 2

    .prologue
    .line 213
    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash$Entry;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash$Entry;-><init>()V

    .line 214
    iget-object v1, p0, Lmf/org/apache/xerces/util/SymbolHash$Entry;->key:Ljava/lang/Object;

    iput-object v1, v0, Lmf/org/apache/xerces/util/SymbolHash$Entry;->key:Ljava/lang/Object;

    .line 215
    iget-object v1, p0, Lmf/org/apache/xerces/util/SymbolHash$Entry;->value:Ljava/lang/Object;

    iput-object v1, v0, Lmf/org/apache/xerces/util/SymbolHash$Entry;->value:Ljava/lang/Object;

    .line 216
    iget-object v1, p0, Lmf/org/apache/xerces/util/SymbolHash$Entry;->next:Lmf/org/apache/xerces/util/SymbolHash$Entry;

    if-nez v1, :cond_0

    .line 218
    :goto_0
    return-object v0

    .line 217
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/SymbolHash$Entry;->next:Lmf/org/apache/xerces/util/SymbolHash$Entry;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/SymbolHash$Entry;->makeClone()Lmf/org/apache/xerces/util/SymbolHash$Entry;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/util/SymbolHash$Entry;->next:Lmf/org/apache/xerces/util/SymbolHash$Entry;

    goto :goto_0
.end method
