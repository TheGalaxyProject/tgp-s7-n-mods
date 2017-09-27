.class final Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;
.super Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;
.source "RegularExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CharArrayTarget"
.end annotation


# instance fields
.field target:[C


# direct methods
.method constructor <init>([C)V
    .locals 0

    .prologue
    .line 1792
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;-><init>()V

    .line 1793
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;->target:[C

    .line 1794
    return-void
.end method

.method private final regionMatches(IIII)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1853
    :goto_0
    add-int/lit8 v1, p4, -0x1

    if-lez p4, :cond_1

    .line 1854
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;->target:[C

    add-int/lit8 v2, p1, 0x1

    aget-char v3, v0, p1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;->target:[C

    add-int/lit8 v0, p3, 0x1

    aget-char v4, v4, p3

    if-ne v3, v4, :cond_0

    move p3, v0

    move p4, v1

    move p1, v2

    goto :goto_0

    .line 1855
    :cond_0
    return v5

    .line 1857
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private final regionMatches(IILjava/lang/String;I)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 1815
    :goto_0
    add-int/lit8 v3, p4, -0x1

    if-lez p4, :cond_1

    .line 1816
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;->target:[C

    add-int/lit8 v4, p1, 0x1

    aget-char v5, v2, p1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v5, v0, :cond_0

    move v0, v2

    move p4, v3

    move p1, v4

    goto :goto_0

    .line 1817
    :cond_0
    return v1

    .line 1820
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private final regionMatchesIgnoreCase(IIII)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1862
    :goto_0
    add-int/lit8 v1, p4, -0x1

    if-lez p4, :cond_3

    .line 1863
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;->target:[C

    add-int/lit8 v2, p1, 0x1

    aget-char v3, v0, p1

    .line 1864
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;->target:[C

    add-int/lit8 v0, p3, 0x1

    aget-char v4, v4, p3

    .line 1865
    if-eq v3, v4, :cond_0

    .line 1868
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 1869
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    .line 1870
    if-eq v3, v4, :cond_1

    .line 1873
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    if-ne v3, v4, :cond_2

    move p3, v0

    move p4, v1

    move p1, v2

    goto :goto_0

    :cond_0
    move p3, v0

    move p4, v1

    move p1, v2

    .line 1866
    goto :goto_0

    :cond_1
    move p3, v0

    move p4, v1

    move p1, v2

    .line 1871
    goto :goto_0

    .line 1874
    :cond_2
    return v5

    .line 1877
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private final regionMatchesIgnoreCase(IILjava/lang/String;I)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 1825
    :goto_0
    add-int/lit8 v3, p4, -0x1

    if-lez p4, :cond_3

    .line 1826
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;->target:[C

    add-int/lit8 v4, p1, 0x1

    aget-char v5, v2, p1

    .line 1827
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1828
    if-eq v5, v0, :cond_0

    .line 1831
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    .line 1832
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 1833
    if-eq v5, v0, :cond_1

    .line 1836
    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    if-ne v5, v0, :cond_2

    move v0, v2

    move p4, v3

    move p1, v4

    goto :goto_0

    :cond_0
    move v0, v2

    move p4, v3

    move p1, v4

    .line 1829
    goto :goto_0

    :cond_1
    move v0, v2

    move p4, v3

    move p1, v4

    .line 1834
    goto :goto_0

    .line 1837
    :cond_2
    return v1

    .line 1840
    :cond_3
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method charAt(I)C
    .locals 1

    .prologue
    .line 1801
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;->target:[C

    aget-char v0, v0, p1

    return v0
.end method

.method final regionMatches(ZIIII)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1844
    if-gez p2, :cond_1

    .line 1845
    :cond_0
    return v1

    .line 1844
    :cond_1
    sub-int v0, p3, p2

    if-lt v0, p5, :cond_0

    .line 1847
    if-nez p1, :cond_2

    .line 1848
    invoke-direct {p0, p2, p3, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;->regionMatches(IIII)Z

    move-result v0

    .line 1847
    :goto_0
    return v0

    :cond_2
    invoke-direct {p0, p2, p3, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;->regionMatchesIgnoreCase(IIII)Z

    move-result v0

    goto :goto_0
.end method

.method final regionMatches(ZIILjava/lang/String;I)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1806
    if-gez p2, :cond_1

    .line 1807
    :cond_0
    return v1

    .line 1806
    :cond_1
    sub-int v0, p3, p2

    if-lt v0, p5, :cond_0

    .line 1809
    if-nez p1, :cond_2

    .line 1810
    invoke-direct {p0, p2, p3, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;->regionMatches(IILjava/lang/String;I)Z

    move-result v0

    .line 1809
    :goto_0
    return v0

    :cond_2
    invoke-direct {p0, p2, p3, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;->regionMatchesIgnoreCase(IILjava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method final resetTarget([C)V
    .locals 0

    .prologue
    .line 1797
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;->target:[C

    .line 1798
    return-void
.end method
