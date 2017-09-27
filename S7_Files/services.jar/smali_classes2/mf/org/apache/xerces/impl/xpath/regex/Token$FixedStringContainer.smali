.class Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;
.super Ljava/lang/Object;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xpath/regex/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FixedStringContainer"
.end annotation


# instance fields
.field options:I

.field token:Lmf/org/apache/xerces/impl/xpath/regex/Token;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 514
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;->token:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    const/4 v0, 0x0

    .line 515
    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;->options:I

    .line 517
    return-void
.end method
