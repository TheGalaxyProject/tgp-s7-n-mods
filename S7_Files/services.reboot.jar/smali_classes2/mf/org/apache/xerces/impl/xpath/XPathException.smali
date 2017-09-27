.class public Lmf/org/apache/xerces/impl/xpath/XPathException;
.super Ljava/lang/Exception;
.source "XPathException.java"


# static fields
.field static final serialVersionUID:J = -0xd29afa33c9adc95L


# instance fields
.field private final fKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string/jumbo v0, "c-general-xpath"

    .line 46
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/XPathException;->fKey:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 52
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/XPathException;->fKey:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/XPathException;->fKey:Ljava/lang/String;

    return-object v0
.end method
