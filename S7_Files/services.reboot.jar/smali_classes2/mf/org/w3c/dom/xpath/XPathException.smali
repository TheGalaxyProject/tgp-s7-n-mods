.class public Lmf/org/w3c/dom/xpath/XPathException;
.super Ljava/lang/RuntimeException;
.source "XPathException.java"


# static fields
.field public static final INVALID_EXPRESSION_ERR:S = 0x33s

.field public static final TYPE_ERR:S = 0x34s


# instance fields
.field public code:S


# direct methods
.method public constructor <init>(SLjava/lang/String;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 23
    int-to-short v0, p1

    iput-short v0, p0, Lmf/org/w3c/dom/xpath/XPathException;->code:S

    .line 24
    return-void
.end method
