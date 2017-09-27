.class abstract Lmf/org/apache/xerces/stax/events/ElementImpl;
.super Lmf/org/apache/xerces/stax/events/XMLEventImpl;
.source "ElementImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/stax/events/ElementImpl$NoRemoveIterator;
    }
.end annotation


# instance fields
.field private final fName:Lmf/javax/xml/namespace/QName;

.field private final fNamespaces:Ljava/util/List;


# direct methods
.method constructor <init>(Lmf/javax/xml/namespace/QName;ZLjava/util/Iterator;Lmf/javax/xml/stream/Location;)V
    .locals 2

    .prologue
    .line 53
    if-nez p2, :cond_2

    const/4 v0, 0x2

    :goto_0
    invoke-direct {p0, v0, p4}, Lmf/org/apache/xerces/stax/events/XMLEventImpl;-><init>(ILmf/javax/xml/stream/Location;)V

    .line 54
    iput-object p1, p0, Lmf/org/apache/xerces/stax/events/ElementImpl;->fName:Lmf/javax/xml/namespace/QName;

    .line 55
    if-nez p3, :cond_3

    .line 64
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lmf/org/apache/xerces/stax/events/ElementImpl;->fNamespaces:Ljava/util/List;

    .line 66
    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    .line 53
    goto :goto_0

    .line 55
    :cond_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/stax/events/ElementImpl;->fNamespaces:Ljava/util/List;

    .line 58
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/events/Namespace;

    .line 59
    iget-object v1, p0, Lmf/org/apache/xerces/stax/events/ElementImpl;->fNamespaces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1
.end method

.method static createImmutableIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lmf/org/apache/xerces/stax/events/ElementImpl$NoRemoveIterator;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/stax/events/ElementImpl$NoRemoveIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method


# virtual methods
.method public final getName()Lmf/javax/xml/namespace/QName;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/ElementImpl;->fName:Lmf/javax/xml/namespace/QName;

    return-object v0
.end method

.method public final getNamespaces()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/ElementImpl;->fNamespaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lmf/org/apache/xerces/stax/events/ElementImpl;->createImmutableIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
