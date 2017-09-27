.class public final Lmf/org/apache/xerces/impl/xs/util/LSInputListImpl;
.super Ljava/util/AbstractList;
.source "LSInputListImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/LSInputList;


# static fields
.field public static final EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/LSInputListImpl;


# instance fields
.field private final fArray:[Lmf/org/w3c/dom/ls/LSInput;

.field private final fLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/LSInputListImpl;

    new-array v1, v2, [Lmf/org/w3c/dom/ls/LSInput;

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/util/LSInputListImpl;-><init>([Lmf/org/w3c/dom/ls/LSInput;I)V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/util/LSInputListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/LSInputListImpl;

    return-void
.end method

.method public constructor <init>([Lmf/org/w3c/dom/ls/LSInput;I)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 55
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/util/LSInputListImpl;->fArray:[Lmf/org/w3c/dom/ls/LSInput;

    .line 56
    iput p2, p0, Lmf/org/apache/xerces/impl/xs/util/LSInputListImpl;->fLength:I

    .line 57
    return-void
.end method

.method private toArray0([Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/LSInputListImpl;->fLength:I

    if-gtz v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/LSInputListImpl;->fArray:[Lmf/org/w3c/dom/ls/LSInput;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/LSInputListImpl;->fLength:I

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 88
    if-gez p1, :cond_1

    .line 91
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

    .line 88
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/LSInputListImpl;->fLength:I

    if-ge p1, v0, :cond_0

    .line 89
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/LSInputListImpl;->fArray:[Lmf/org/w3c/dom/ls/LSInput;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/LSInputListImpl;->fLength:I

    return v0
.end method

.method public item(I)Lmf/org/w3c/dom/ls/LSInput;
    .locals 1

    .prologue
    .line 77
    if-gez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 78
    return-object v0

    .line 77
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/LSInputListImpl;->fLength:I

    if-ge p1, v0, :cond_0

    .line 80
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/LSInputListImpl;->fArray:[Lmf/org/w3c/dom/ls/LSInput;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/util/LSInputListImpl;->getLength()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/LSInputListImpl;->fLength:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 100
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/util/LSInputListImpl;->toArray0([Ljava/lang/Object;)V

    .line 101
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 105
    array-length v0, p1

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/LSInputListImpl;->fLength:I

    if-lt v0, v1, :cond_0

    .line 110
    :goto_0
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/util/LSInputListImpl;->toArray0([Ljava/lang/Object;)V

    .line 111
    array-length v0, p1

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/LSInputListImpl;->fLength:I

    if-gt v0, v1, :cond_1

    .line 114
    :goto_1
    return-object p1

    .line 106
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 108
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/LSInputListImpl;->fLength:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    goto :goto_0

    .line 112
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/LSInputListImpl;->fLength:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    goto :goto_1
.end method
