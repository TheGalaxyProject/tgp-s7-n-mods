.class final Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;
.super Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;
.source "RegularExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CharacterIteratorTarget"
.end annotation


# instance fields
.field target:Ljava/text/CharacterIterator;


# direct methods
.method constructor <init>(Ljava/text/CharacterIterator;)V
    .locals 0

    .prologue
    .line 1884
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;-><init>()V

    .line 1885
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->target:Ljava/text/CharacterIterator;

    .line 1886
    return-void
.end method

.method private final regionMatches(IIII)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1945
    :goto_0
    add-int/lit8 v1, p4, -0x1

    if-lez p4, :cond_1

    .line 1946
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->target:Ljava/text/CharacterIterator;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->target:Ljava/text/CharacterIterator;

    add-int/lit8 v0, p3, 0x1

    invoke-interface {v4, p3}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v4

    if-ne v3, v4, :cond_0

    move p3, v0

    move p4, v1

    move p1, v2

    goto :goto_0

    .line 1947
    :cond_0
    return v5

    .line 1950
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private final regionMatches(IILjava/lang/String;I)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 1907
    :goto_0
    add-int/lit8 v3, p4, -0x1

    if-lez p4, :cond_1

    .line 1908
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->target:Ljava/text/CharacterIterator;

    add-int/lit8 v4, p1, 0x1

    invoke-interface {v2, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v5

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v5, v0, :cond_0

    move v0, v2

    move p4, v3

    move p1, v4

    goto :goto_0

    .line 1909
    :cond_0
    return v1

    .line 1912
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private final regionMatchesIgnoreCase(IIII)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1955
    :goto_0
    add-int/lit8 v1, p4, -0x1

    if-lez p4, :cond_3

    .line 1956
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->target:Ljava/text/CharacterIterator;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v3

    .line 1957
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->target:Ljava/text/CharacterIterator;

    add-int/lit8 v0, p3, 0x1

    invoke-interface {v4, p3}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v4

    .line 1958
    if-eq v3, v4, :cond_0

    .line 1961
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 1962
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    .line 1963
    if-eq v3, v4, :cond_1

    .line 1966
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

    .line 1959
    goto :goto_0

    :cond_1
    move p3, v0

    move p4, v1

    move p1, v2

    .line 1964
    goto :goto_0

    .line 1967
    :cond_2
    return v5

    .line 1970
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private final regionMatchesIgnoreCase(IILjava/lang/String;I)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 1917
    :goto_0
    add-int/lit8 v3, p4, -0x1

    if-lez p4, :cond_3

    .line 1918
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->target:Ljava/text/CharacterIterator;

    add-int/lit8 v4, p1, 0x1

    invoke-interface {v2, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v5

    .line 1919
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1920
    if-eq v5, v0, :cond_0

    .line 1923
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    .line 1924
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 1925
    if-eq v5, v0, :cond_1

    .line 1928
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

    .line 1921
    goto :goto_0

    :cond_1
    move v0, v2

    move p4, v3

    move p1, v4

    .line 1926
    goto :goto_0

    .line 1929
    :cond_2
    return v1

    .line 1932
    :cond_3
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method final charAt(I)C
    .locals 1

    .prologue
    .line 1893
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->target:Ljava/text/CharacterIterator;

    invoke-interface {v0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v0

    return v0
.end method

.method final regionMatches(ZIIII)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1936
    if-gez p2, :cond_1

    .line 1937
    :cond_0
    return v1

    .line 1936
    :cond_1
    sub-int v0, p3, p2

    if-lt v0, p5, :cond_0

    .line 1939
    if-nez p1, :cond_2

    .line 1940
    invoke-direct {p0, p2, p3, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->regionMatches(IIII)Z

    move-result v0

    .line 1939
    :goto_0
    return v0

    :cond_2
    invoke-direct {p0, p2, p3, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->regionMatchesIgnoreCase(IIII)Z

    move-result v0

    goto :goto_0
.end method

.method final regionMatches(ZIILjava/lang/String;I)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1898
    if-gez p2, :cond_1

    .line 1899
    :cond_0
    return v1

    .line 1898
    :cond_1
    sub-int v0, p3, p2

    if-lt v0, p5, :cond_0

    .line 1901
    if-nez p1, :cond_2

    .line 1902
    invoke-direct {p0, p2, p3, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->regionMatches(IILjava/lang/String;I)Z

    move-result v0

    .line 1901
    :goto_0
    return v0

    :cond_2
    invoke-direct {p0, p2, p3, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->regionMatchesIgnoreCase(IILjava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method final resetTarget(Ljava/text/CharacterIterator;)V
    .locals 0

    .prologue
    .line 1889
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->target:Ljava/text/CharacterIterator;

    .line 1890
    return-void
.end method
