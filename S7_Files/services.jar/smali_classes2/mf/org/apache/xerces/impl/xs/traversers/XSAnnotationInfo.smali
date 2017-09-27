.class final Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;
.super Ljava/lang/Object;
.source "XSAnnotationInfo.java"


# instance fields
.field fAnnotation:Ljava/lang/String;

.field fCharOffset:I

.field fColumn:I

.field fLine:I

.field next:Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;


# direct methods
.method constructor <init>(Ljava/lang/String;III)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;->fAnnotation:Ljava/lang/String;

    .line 52
    iput p2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;->fLine:I

    .line 53
    iput p3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;->fColumn:I

    .line 54
    iput p4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;->fCharOffset:I

    .line 55
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;->fAnnotation:Ljava/lang/String;

    .line 59
    instance-of v0, p2, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    if-nez v0, :cond_0

    .line 66
    iput v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;->fLine:I

    .line 67
    iput v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;->fColumn:I

    .line 68
    iput v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;->fCharOffset:I

    .line 70
    :goto_0
    return-void

    .line 60
    :cond_0
    check-cast p2, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    .line 61
    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->getLineNumber()I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;->fLine:I

    .line 62
    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->getColumnNumber()I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;->fColumn:I

    .line 63
    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->getCharacterOffset()I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;->fCharOffset:I

    goto :goto_0
.end method
