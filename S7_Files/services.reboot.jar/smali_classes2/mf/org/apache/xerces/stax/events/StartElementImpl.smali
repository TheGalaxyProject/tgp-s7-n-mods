.class public final Lmf/org/apache/xerces/stax/events/StartElementImpl;
.super Lmf/org/apache/xerces/stax/events/ElementImpl;
.source "StartElementImpl.java"

# interfaces
.implements Lmf/javax/xml/stream/events/StartElement;


# static fields
.field private static final QNAME_COMPARATOR:Ljava/util/Comparator;


# instance fields
.field private final fAttributes:Ljava/util/Map;

.field private final fNamespaceContext:Lmf/javax/xml/namespace/NamespaceContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lmf/org/apache/xerces/stax/events/StartElementImpl$1;

    invoke-direct {v0}, Lmf/org/apache/xerces/stax/events/StartElementImpl$1;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/stax/events/StartElementImpl;->QNAME_COMPARATOR:Ljava/util/Comparator;

    .line 55
    return-void
.end method

.method public constructor <init>(Lmf/javax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;Lmf/javax/xml/namespace/NamespaceContext;Lmf/javax/xml/stream/Location;)V
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p3, p5}, Lmf/org/apache/xerces/stax/events/ElementImpl;-><init>(Lmf/javax/xml/namespace/QName;ZLjava/util/Iterator;Lmf/javax/xml/stream/Location;)V

    .line 66
    if-nez p2, :cond_3

    .line 75
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lmf/org/apache/xerces/stax/events/StartElementImpl;->fAttributes:Ljava/util/Map;

    .line 77
    :cond_1
    if-nez p4, :cond_2

    invoke-static {}, Lmf/org/apache/xerces/stax/DefaultNamespaceContext;->getInstance()Lmf/org/apache/xerces/stax/DefaultNamespaceContext;

    move-result-object p4

    :cond_2
    iput-object p4, p0, Lmf/org/apache/xerces/stax/events/StartElementImpl;->fNamespaceContext:Lmf/javax/xml/namespace/NamespaceContext;

    .line 78
    return-void

    .line 66
    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Lmf/org/apache/xerces/stax/events/StartElementImpl;->QNAME_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lmf/org/apache/xerces/stax/events/StartElementImpl;->fAttributes:Ljava/util/Map;

    .line 69
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/events/Attribute;

    .line 70
    iget-object v1, p0, Lmf/org/apache/xerces/stax/events/StartElementImpl;->fAttributes:Ljava/util/Map;

    invoke-interface {v0}, Lmf/javax/xml/stream/events/Attribute;->getName()Lmf/javax/xml/namespace/QName;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0
.end method


# virtual methods
.method public getAttributeByName(Lmf/javax/xml/namespace/QName;)Lmf/javax/xml/stream/events/Attribute;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/StartElementImpl;->fAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/events/Attribute;

    return-object v0
.end method

.method public getAttributes()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/StartElementImpl;->fAttributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lmf/org/apache/xerces/stax/events/StartElementImpl;->createImmutableIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceContext()Lmf/javax/xml/namespace/NamespaceContext;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/StartElementImpl;->fNamespaceContext:Lmf/javax/xml/namespace/NamespaceContext;

    return-object v0
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/StartElementImpl;->fNamespaceContext:Lmf/javax/xml/namespace/NamespaceContext;

    invoke-interface {v0, p1}, Lmf/javax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x3c

    .line 111
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 112
    invoke-virtual {p0}, Lmf/org/apache/xerces/stax/events/StartElementImpl;->getName()Lmf/javax/xml/namespace/QName;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lmf/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 114
    if-nez v1, :cond_1

    .line 118
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lmf/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lmf/org/apache/xerces/stax/events/StartElementImpl;->getNamespaces()Ljava/util/Iterator;

    move-result-object v1

    .line 121
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/events/Namespace;

    const/16 v2, 0x20

    .line 123
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 124
    invoke-interface {v0, p1}, Lmf/javax/xml/stream/events/Namespace;->writeAsEncodedUnicode(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 134
    :catch_0
    move-exception v0

    .line 136
    new-instance v1, Lmf/javax/xml/stream/XMLStreamException;

    invoke-direct {v1, v0}, Lmf/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 114
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 115
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v1, 0x3a

    .line 116
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/stax/events/StartElementImpl;->getAttributes()Ljava/util/Iterator;

    move-result-object v1

    .line 128
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 129
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/events/Attribute;

    const/16 v2, 0x20

    .line 130
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 131
    invoke-interface {v0, p1}, Lmf/javax/xml/stream/events/Attribute;->writeAsEncodedUnicode(Ljava/io/Writer;)V

    goto :goto_2

    :cond_3
    const/16 v0, 0x3e

    .line 133
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    return-void
.end method
