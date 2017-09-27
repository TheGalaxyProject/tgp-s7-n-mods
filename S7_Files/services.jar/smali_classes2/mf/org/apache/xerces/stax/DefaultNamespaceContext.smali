.class public final Lmf/org/apache/xerces/stax/DefaultNamespaceContext;
.super Ljava/lang/Object;
.source "DefaultNamespaceContext.java"

# interfaces
.implements Lmf/javax/xml/namespace/NamespaceContext;


# static fields
.field private static final DEFAULT_NAMESPACE_CONTEXT_INSTANCE:Lmf/org/apache/xerces/stax/DefaultNamespaceContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lmf/org/apache/xerces/stax/DefaultNamespaceContext;

    invoke-direct {v0}, Lmf/org/apache/xerces/stax/DefaultNamespaceContext;-><init>()V

    .line 42
    sput-object v0, Lmf/org/apache/xerces/stax/DefaultNamespaceContext;->DEFAULT_NAMESPACE_CONTEXT_INSTANCE:Lmf/org/apache/xerces/stax/DefaultNamespaceContext;

    .line 43
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lmf/org/apache/xerces/stax/DefaultNamespaceContext;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lmf/org/apache/xerces/stax/DefaultNamespaceContext;->DEFAULT_NAMESPACE_CONTEXT_INSTANCE:Lmf/org/apache/xerces/stax/DefaultNamespaceContext;

    return-object v0
.end method


# virtual methods
.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    if-eqz p1, :cond_0

    const-string/jumbo v0, "xml"

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "xmlns"

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    .line 62
    return-object v0

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Prefix cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string/jumbo v0, "http://www.w3.org/XML/1998/namespace"

    .line 57
    return-object v0

    :cond_2
    const-string/jumbo v0, "http://www.w3.org/2000/xmlns/"

    .line 60
    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    if-eqz p1, :cond_0

    const-string/jumbo v0, "http://www.w3.org/XML/1998/namespace"

    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "http://www.w3.org/2000/xmlns/"

    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 75
    return-object v1

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Namespace URI cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string/jumbo v0, "xml"

    .line 70
    return-object v0

    :cond_2
    const-string/jumbo v0, "xmlns"

    .line 73
    return-object v0
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 79
    if-eqz p1, :cond_0

    const-string/jumbo v0, "http://www.w3.org/XML/1998/namespace"

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "http://www.w3.org/2000/xmlns/"

    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 118
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Namespace URI cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_1
    new-instance v0, Lmf/org/apache/xerces/stax/DefaultNamespaceContext$1;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/stax/DefaultNamespaceContext$1;-><init>(Lmf/org/apache/xerces/stax/DefaultNamespaceContext;)V

    return-object v0

    .line 101
    :cond_2
    new-instance v0, Lmf/org/apache/xerces/stax/DefaultNamespaceContext$2;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/stax/DefaultNamespaceContext$2;-><init>(Lmf/org/apache/xerces/stax/DefaultNamespaceContext;)V

    return-object v0
.end method
