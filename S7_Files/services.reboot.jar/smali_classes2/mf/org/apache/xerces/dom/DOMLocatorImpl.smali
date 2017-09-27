.class public Lmf/org/apache/xerces/dom/DOMLocatorImpl;
.super Ljava/lang/Object;
.source "DOMLocatorImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/DOMLocator;


# instance fields
.field public fByteOffset:I

.field public fColumnNumber:I

.field public fLineNumber:I

.field public fRelatedNode:Lmf/org/w3c/dom/Node;

.field public fUri:Ljava/lang/String;

.field public fUtf16Offset:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fColumnNumber:I

    .line 51
    iput v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fLineNumber:I

    .line 54
    iput-object v1, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    .line 60
    iput-object v1, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    .line 66
    iput v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fByteOffset:I

    .line 73
    iput v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUtf16Offset:I

    .line 80
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fColumnNumber:I

    .line 51
    iput v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fLineNumber:I

    .line 54
    iput-object v1, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    .line 60
    iput-object v1, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    .line 66
    iput v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fByteOffset:I

    .line 73
    iput v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUtf16Offset:I

    .line 89
    iput p1, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fLineNumber:I

    .line 90
    iput p2, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fColumnNumber:I

    .line 91
    iput-object p4, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    .line 92
    iput p3, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUtf16Offset:I

    .line 93
    return-void
.end method

.method public constructor <init>(IIILmf/org/w3c/dom/Node;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fColumnNumber:I

    .line 51
    iput v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fLineNumber:I

    .line 54
    iput-object v1, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    .line 60
    iput-object v1, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    .line 66
    iput v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fByteOffset:I

    .line 73
    iput v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUtf16Offset:I

    .line 96
    iput p1, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fLineNumber:I

    .line 97
    iput p2, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fColumnNumber:I

    .line 98
    iput p3, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fByteOffset:I

    .line 99
    iput-object p4, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    .line 100
    iput-object p5, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public constructor <init>(IIILmf/org/w3c/dom/Node;Ljava/lang/String;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fColumnNumber:I

    .line 51
    iput v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fLineNumber:I

    .line 54
    iput-object v1, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    .line 60
    iput-object v1, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    .line 66
    iput v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fByteOffset:I

    .line 73
    iput v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUtf16Offset:I

    .line 104
    iput p1, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fLineNumber:I

    .line 105
    iput p2, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fColumnNumber:I

    .line 106
    iput p3, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fByteOffset:I

    .line 107
    iput-object p4, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    .line 108
    iput-object p5, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    .line 109
    iput p6, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUtf16Offset:I

    .line 110
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fColumnNumber:I

    .line 51
    iput v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fLineNumber:I

    .line 54
    iput-object v1, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    .line 60
    iput-object v1, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    .line 66
    iput v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fByteOffset:I

    .line 73
    iput v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUtf16Offset:I

    .line 83
    iput p1, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fLineNumber:I

    .line 84
    iput p2, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fColumnNumber:I

    .line 85
    iput-object p3, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    .line 86
    return-void
.end method


# virtual methods
.method public getByteOffset()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fByteOffset:I

    return v0
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fColumnNumber:I

    return v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fLineNumber:I

    return v0
.end method

.method public getRelatedNode()Lmf/org/w3c/dom/Node;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    return-object v0
.end method

.method public getUtf16Offset()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUtf16Offset:I

    return v0
.end method
