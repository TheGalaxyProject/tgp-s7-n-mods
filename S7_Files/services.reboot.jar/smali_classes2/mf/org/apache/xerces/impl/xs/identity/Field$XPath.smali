.class public Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;
.super Lmf/org/apache/xerces/impl/xpath/XPath;
.source "Field.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/identity/Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XPath"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/NamespaceContext;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-static {p1}, Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;->fixupXPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lmf/org/apache/xerces/impl/xpath/XPath;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/NamespaceContext;)V

    move v2, v1

    .line 116
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v0, v0

    if-ge v2, v0, :cond_3

    move v0, v1

    .line 117
    :goto_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    aget-object v3, v3, v2

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;->steps:[Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 119
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    aget-object v3, v3, v2

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;->steps:[Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    aget-object v3, v3, v0

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->axis:Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    .line 120
    iget-short v3, v3, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;->type:S

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 117
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 121
    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    aget-object v3, v3, v2

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;->steps:[Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    .line 122
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string/jumbo v1, "c-fields-xpaths"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 126
    :cond_3
    return-void
.end method

.method private static fixupXPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x7c

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 131
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    move v0, v1

    move v3, v2

    .line 142
    :goto_0
    if-ge v3, v4, :cond_5

    .line 143
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 144
    if-nez v0, :cond_1

    .line 154
    if-eq v5, v7, :cond_4

    .line 142
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 145
    :cond_1
    invoke-static {v5}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v6

    if-nez v6, :cond_0

    const/16 v6, 0x2e

    .line 146
    if-ne v5, v6, :cond_3

    :cond_2
    move v0, v2

    .line 148
    goto :goto_1

    :cond_3
    const/16 v6, 0x2f

    .line 146
    if-eq v5, v6, :cond_2

    .line 149
    if-eq v5, v7, :cond_0

    .line 150
    invoke-static {p0, v3, v4}, Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;->fixupXPath2(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    move v0, v1

    .line 155
    goto :goto_1

    .line 158
    :cond_5
    return-object p0
.end method

.method private static fixupXPath2(Ljava/lang/String;II)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x7c

    const/4 v1, 0x0

    .line 164
    new-instance v2, Ljava/lang/StringBuffer;

    add-int/lit8 v0, p2, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    move v0, v1

    .line 165
    :goto_0
    if-ge v0, p1, :cond_0

    .line 166
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "./"

    .line 168
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .line 173
    :goto_1
    if-ge p1, p2, :cond_6

    .line 174
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 175
    if-nez v0, :cond_2

    .line 186
    if-eq v3, v5, :cond_5

    .line 189
    :cond_1
    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 173
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 176
    :cond_2
    invoke-static {v3}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x2e

    .line 177
    if-ne v3, v4, :cond_4

    :cond_3
    move v0, v1

    .line 179
    goto :goto_2

    :cond_4
    const/16 v4, 0x2f

    .line 177
    if-eq v3, v4, :cond_3

    .line 180
    if-eq v3, v5, :cond_1

    const-string/jumbo v0, "./"

    .line 181
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .line 185
    goto :goto_2

    .line 187
    :cond_5
    const/4 v0, 0x1

    goto :goto_2

    .line 191
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
