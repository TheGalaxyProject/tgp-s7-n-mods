.class public final Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;
.super Ljava/util/AbstractList;
.source "ShortListImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/ShortList;


# static fields
.field public static final EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;


# instance fields
.field private final fArray:[S

.field private final fLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;

    new-array v1, v2, [S

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;-><init>([SI)V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;

    return-void
.end method

.method public constructor <init>([SI)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 53
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;->fArray:[S

    .line 54
    iput p2, p0, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;->fLength:I

    .line 55
    return-void
.end method


# virtual methods
.method public contains(S)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 74
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;->fLength:I

    if-ge v0, v2, :cond_1

    .line 75
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;->fArray:[S

    aget-short v2, v2, v0

    if-eq v2, p1, :cond_0

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 79
    :cond_1
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 90
    if-nez p1, :cond_1

    .line 91
    :cond_0
    return v1

    .line 90
    :cond_1
    instance-of v0, p1, Lmf/org/apache/xerces/xs/ShortList;

    if-eqz v0, :cond_0

    .line 93
    check-cast p1, Lmf/org/apache/xerces/xs/ShortList;

    .line 95
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;->fLength:I

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ShortList;->getLength()I

    move-result v2

    if-ne v0, v2, :cond_2

    move v0, v1

    .line 98
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;->fLength:I

    if-ge v0, v2, :cond_4

    .line 99
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;->fArray:[S

    aget-short v2, v2, v0

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xs/ShortList;->item(I)S

    move-result v3

    if-ne v2, v3, :cond_3

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_2
    return v1

    .line 100
    :cond_3
    return v1

    .line 103
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 111
    if-gez p1, :cond_1

    .line 114
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

    .line 111
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;->fLength:I

    if-ge p1, v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/Short;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;->fArray:[S

    aget-short v1, v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;->fLength:I

    return v0
.end method

.method public item(I)S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xs/XSException;
        }
    .end annotation

    .prologue
    .line 83
    if-gez p1, :cond_1

    .line 84
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/xs/XSException;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/xs/XSException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 83
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;->fLength:I

    if-ge p1, v0, :cond_0

    .line 86
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;->fArray:[S

    aget-short v0, v0, p1

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;->getLength()I

    move-result v0

    return v0
.end method
