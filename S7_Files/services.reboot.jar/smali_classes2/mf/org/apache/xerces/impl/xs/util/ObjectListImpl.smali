.class public final Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;
.super Ljava/util/AbstractList;
.source "ObjectListImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/datatypes/ObjectList;


# static fields
.field public static final EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;


# instance fields
.field private final fArray:[Ljava/lang/Object;

.field private final fLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 46
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->fArray:[Ljava/lang/Object;

    .line 47
    iput p2, p0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->fLength:I

    .line 48
    return-void
.end method

.method private toArray0([Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 111
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->fLength:I

    if-gtz v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->fArray:[Ljava/lang/Object;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->fLength:I

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 55
    if-eqz p1, :cond_0

    move v0, v1

    .line 62
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->fLength:I

    if-ge v0, v2, :cond_3

    .line 63
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->fArray:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 56
    :goto_1
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->fLength:I

    if-ge v0, v2, :cond_3

    .line 57
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->fArray:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 58
    :cond_1
    return v3

    .line 64
    :cond_2
    return v3

    .line 67
    :cond_3
    return v1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 81
    if-gez p1, :cond_1

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->fLength:I

    if-ge p1, v0, :cond_0

    .line 82
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->fArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->fLength:I

    return v0
.end method

.method public item(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    if-gez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 72
    return-object v0

    .line 71
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->fLength:I

    if-ge p1, v0, :cond_0

    .line 74
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->fArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->getLength()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->fLength:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 93
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->toArray0([Ljava/lang/Object;)V

    .line 94
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 98
    array-length v0, p1

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->fLength:I

    if-lt v0, v1, :cond_0

    .line 103
    :goto_0
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->toArray0([Ljava/lang/Object;)V

    .line 104
    array-length v0, p1

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->fLength:I

    if-gt v0, v1, :cond_1

    .line 107
    :goto_1
    return-object p1

    .line 99
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 101
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->fLength:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    goto :goto_0

    .line 105
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->fLength:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    goto :goto_1
.end method
