.class public Lmf/org/apache/xerces/dom/DOMImplementationImpl;
.super Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;
.source "DOMImplementationImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/DOMImplementation;


# static fields
.field static final singleton:Lmf/org/apache/xerces/dom/DOMImplementationImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lmf/org/apache/xerces/dom/DOMImplementationImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DOMImplementationImpl;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/dom/DOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/DOMImplementationImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;-><init>()V

    return-void
.end method

.method public static getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lmf/org/apache/xerces/dom/DOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/DOMImplementationImpl;

    return-object v0
.end method


# virtual methods
.method protected createDocument(Lmf/org/w3c/dom/DocumentType;)Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/dom/DocumentImpl;-><init>(Lmf/org/w3c/dom/DocumentType;)V

    return-object v0
.end method

.method public hasFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 80
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 81
    if-eqz v0, :cond_0

    .line 98
    return v0

    .line 82
    :cond_0
    if-nez p2, :cond_7

    :cond_1
    move v0, v2

    :goto_0
    const-string/jumbo v3, "+"

    .line 83
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    :goto_1
    const-string/jumbo v3, "Events"

    .line 87
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_2
    const-string/jumbo v3, "MutationEvents"

    .line 89
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_3
    const-string/jumbo v3, "Traversal"

    .line 91
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    :cond_4
    const-string/jumbo v3, "Range"

    .line 93
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_5
    const-string/jumbo v3, "MutationEvents"

    .line 95
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 86
    :cond_6
    return v1

    .line 82
    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 84
    :cond_8
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 88
    :cond_9
    if-eqz v0, :cond_b

    .line 86
    :cond_a
    :goto_2
    return v2

    :cond_b
    const-string/jumbo v3, "2.0"

    .line 88
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 90
    :cond_c
    if-nez v0, :cond_a

    const-string/jumbo v3, "2.0"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    .line 92
    :cond_d
    if-nez v0, :cond_a

    const-string/jumbo v3, "2.0"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    .line 94
    :cond_e
    if-nez v0, :cond_a

    const-string/jumbo v3, "2.0"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    .line 96
    :cond_f
    if-nez v0, :cond_a

    const-string/jumbo v0, "2.0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2
.end method
