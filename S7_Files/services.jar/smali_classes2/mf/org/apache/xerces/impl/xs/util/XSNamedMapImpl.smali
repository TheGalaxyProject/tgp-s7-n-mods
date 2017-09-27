.class public Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;
.super Ljava/util/AbstractMap;
.source "XSNamedMapImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSNamedMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;
    }
.end annotation


# static fields
.field public static final EMPTY_MAP:Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;


# instance fields
.field fArray:[Lmf/org/apache/xerces/xs/XSObject;

.field private fEntrySet:Ljava/util/Set;

.field fLength:I

.field final fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

.field final fNSNum:I

.field final fNamespaces:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;

    new-array v1, v2, [Lmf/org/apache/xerces/xs/XSObject;

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->EMPTY_MAP:Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolHash;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 73
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 60
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    .line 65
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fEntrySet:Ljava/util/Set;

    .line 74
    new-array v0, v1, [Ljava/lang/String;

    aput-object p1, v0, v2

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNamespaces:[Ljava/lang/String;

    .line 75
    new-array v0, v1, [Lmf/org/apache/xerces/util/SymbolHash;

    aput-object p2, v0, v2

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

    .line 76
    iput v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNSNum:I

    .line 77
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Lmf/org/apache/xerces/util/SymbolHash;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 60
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    .line 65
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fEntrySet:Ljava/util/Set;

    .line 87
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNamespaces:[Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

    .line 89
    iput p3, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNSNum:I

    .line 90
    return-void
.end method

.method public constructor <init>([Lmf/org/apache/xerces/xs/XSObject;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 98
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 60
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    .line 65
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fEntrySet:Ljava/util/Set;

    .line 99
    if-eqz p2, :cond_0

    .line 109
    new-array v0, v4, [Ljava/lang/String;

    aget-object v1, p1, v2

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNamespaces:[Ljava/lang/String;

    .line 110
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

    .line 111
    iput v4, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNSNum:I

    .line 113
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    .line 114
    iput p2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    .line 115
    return-void

    .line 100
    :cond_0
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNamespaces:[Ljava/lang/String;

    .line 101
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

    .line 102
    iput v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNSNum:I

    .line 103
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    .line 104
    iput v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    .line 105
    return-void
.end method

.method static isEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 197
    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized entrySet()Ljava/util/Set;
    .locals 8

    .prologue
    monitor-enter p0

    .line 227
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fEntrySet:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 258
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fEntrySet:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 228
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->getLength()I

    move-result v1

    .line 229
    new-array v2, v1, [Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;

    const/4 v0, 0x0

    .line 230
    :goto_1
    if-ge v0, v1, :cond_1

    .line 231
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v3

    .line 232
    new-instance v4, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;

    new-instance v5, Lmf/javax/xml/namespace/QName;

    invoke-interface {v3}, Lmf/org/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3}, Lmf/org/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5, v3}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;-><init>(Lmf/javax/xml/namespace/QName;Lmf/org/apache/xerces/xs/XSObject;)V

    aput-object v4, v2, v0

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 235
    :cond_1
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$1;

    invoke-direct {v0, p0, v1, v2}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$1;-><init>(Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;I[Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fEntrySet:Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 209
    instance-of v0, p1, Lmf/javax/xml/namespace/QName;

    if-nez v0, :cond_0

    .line 218
    return-object v1

    .line 210
    :cond_0
    check-cast p1, Lmf/javax/xml/namespace/QName;

    .line 211
    invoke-virtual {p1}, Lmf/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ""

    .line 212
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 215
    :goto_0
    invoke-virtual {p1}, Lmf/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->itemByName(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v1

    .line 213
    goto :goto_0
.end method

.method public declared-synchronized getLength()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    .line 123
    :try_start_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 129
    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_1
    const/4 v1, 0x0

    .line 124
    :try_start_1
    iput v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    .line 125
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNSNum:I

    if-ge v0, v1, :cond_0

    .line 126
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized item(I)Lmf/org/apache/xerces/xs/XSObject;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    monitor-enter p0

    .line 180
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 190
    :cond_0
    if-gez p1, :cond_3

    :cond_1
    monitor-exit p0

    .line 191
    return-object v4

    .line 182
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->getLength()I

    .line 183
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    new-array v1, v1, [Lmf/org/apache/xerces/xs/XSObject;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    move v1, v0

    .line 186
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNSNum:I

    if-ge v0, v2, :cond_0

    .line 187
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

    aget-object v2, v2, v0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    invoke-virtual {v2, v3, v1}, Lmf/org/apache/xerces/util/SymbolHash;->getValues([Ljava/lang/Object;I)I

    move-result v2

    add-int/2addr v1, v2

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_3
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    if-ge p1, v0, :cond_1

    .line 193
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    aget-object v0, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public itemByName(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSObject;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    move v1, v0

    .line 148
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNSNum:I

    if-ge v1, v2, :cond_4

    .line 149
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNamespaces:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

    if-nez v2, :cond_1

    .line 158
    :goto_1
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    if-ge v0, v1, :cond_3

    .line 159
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    aget-object v1, v1, v0

    .line 160
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 153
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/XSObject;

    return-object v0

    .line 161
    :cond_2
    return-object v1

    .line 164
    :cond_3
    return-object v3

    .line 167
    :cond_4
    return-object v3
.end method

.method public size()I
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->getLength()I

    move-result v0

    return v0
.end method
