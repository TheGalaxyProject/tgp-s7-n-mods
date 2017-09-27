.class public Lmf/javax/xml/transform/TransformerConfigurationException;
.super Lmf/javax/xml/transform/TransformerException;
.source "TransformerConfigurationException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Configuration Error"

    .line 57
    invoke-direct {p0, v0}, Lmf/javax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lmf/javax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lmf/javax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmf/javax/xml/transform/SourceLocator;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lmf/javax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Lmf/javax/xml/transform/SourceLocator;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmf/javax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0, p1, p2, p3}, Lmf/javax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Lmf/javax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lmf/javax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    .line 79
    return-void
.end method
