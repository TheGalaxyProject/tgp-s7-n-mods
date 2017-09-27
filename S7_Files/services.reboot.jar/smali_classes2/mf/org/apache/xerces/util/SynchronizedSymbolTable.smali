.class public final Lmf/org/apache/xerces/util/SynchronizedSymbolTable;
.super Lmf/org/apache/xerces/util/SymbolTable;
.source "SynchronizedSymbolTable.java"


# instance fields
.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    .line 51
    new-instance v0, Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 52
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    .line 56
    new-instance v0, Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/util/SymbolTable;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 57
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    .line 46
    iput-object p1, p0, Lmf/org/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 47
    return-void
.end method


# virtual methods
.method public addSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    iget-object v1, p0, Lmf/org/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    monitor-enter v1

    .line 74
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    .line 73
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addSymbol([CII)Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    iget-object v1, p0, Lmf/org/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    monitor-enter v1

    .line 92
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    .line 91
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public containsSymbol(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 105
    iget-object v1, p0, Lmf/org/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    monitor-enter v1

    .line 106
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolTable;->containsSymbol(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    .line 105
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public containsSymbol([CII)Z
    .locals 2

    .prologue
    .line 121
    iget-object v1, p0, Lmf/org/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    monitor-enter v1

    .line 122
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/util/SymbolTable;->containsSymbol([CII)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    .line 121
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
