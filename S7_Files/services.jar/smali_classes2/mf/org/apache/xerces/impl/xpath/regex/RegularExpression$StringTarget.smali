.class final Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;
.super Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;
.source "RegularExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StringTarget"
.end annotation


# instance fields
.field private target:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1758
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;-><init>()V

    .line 1759
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;->target:Ljava/lang/String;

    .line 1760
    return-void
.end method


# virtual methods
.method final charAt(I)C
    .locals 1

    .prologue
    .line 1767
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;->target:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method final regionMatches(ZIIII)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1780
    sub-int v0, p3, p2

    if-lt v0, p5, :cond_0

    .line 1783
    if-nez p1, :cond_1

    .line 1784
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;->target:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;->target:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, p4, p5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    .line 1783
    :goto_0
    return v0

    .line 1781
    :cond_0
    return v1

    .line 1783
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;->target:Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;->target:Ljava/lang/String;

    const/4 v1, 0x1

    move v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    goto :goto_0
.end method

.method final regionMatches(ZIILjava/lang/String;I)Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1772
    sub-int v0, p3, p2

    if-lt v0, p5, :cond_0

    .line 1775
    if-nez p1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;->target:Ljava/lang/String;

    invoke-virtual {v0, p2, p4, v4, p5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    :goto_0
    return v0

    .line 1773
    :cond_0
    return v4

    .line 1775
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;->target:Ljava/lang/String;

    const/4 v1, 0x1

    move v2, p2

    move-object v3, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    goto :goto_0
.end method

.method final resetTarget(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1763
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;->target:Ljava/lang/String;

    .line 1764
    return-void
.end method
