.class public Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;
.super Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;
.source "ExtendedXMLCatalogReader.java"


# static fields
.field public static final extendedNamespaceName:Ljava/lang/String; = "http://nwalsh.com/xcatalog/1.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;-><init>()V

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 150
    invoke-super {p0, p1, p2, p3}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->inExtensionNamespace()Z

    move-result v0

    .line 157
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 159
    if-nez p1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "http://nwalsh.com/xcatalog/1.0"

    .line 160
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 164
    iget-object v1, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 166
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    sget v0, Lmf/org/apache/xml/resolver/Catalog;->BASE:I

    .line 168
    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v3, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v4, 0x4

    const-string/jumbo v5, "(reset) xml:base"

    invoke-virtual {v3, v4, v5, v1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 173
    :try_start_0
    new-instance v1, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v1, v0, v2}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    .line 174
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_0
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 178
    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 179
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v1, "Invalid catalog entry (rbase)"

    invoke-virtual {v0, v6, v1, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v1, "Invalid catalog entry type"

    invoke-virtual {v0, v6, v1, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v1, -0x1

    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 68
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->inExtensionNamespace()Z

    move-result v2

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 73
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 75
    if-nez p1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "http://nwalsh.com/xcatalog/1.0"

    .line 75
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    if-nez v2, :cond_0

    const-string/jumbo v2, "xml:base"

    .line 79
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 101
    iget-object v2, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    iget-object v3, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string/jumbo v2, "uriSuffix"

    .line 104
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "systemSuffix"

    .line 114
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 126
    iget-object v2, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v3, "Invalid catalog entry type"

    invoke-virtual {v2, v6, v3, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_2
    :goto_2
    if-ltz v1, :cond_0

    .line 131
    :try_start_0
    new-instance v2, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v2, v1, v0}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    .line 132
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v0, v2}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_0
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_8

    .line 136
    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 137
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v1, "Invalid catalog entry"

    invoke-virtual {v0, v6, v1, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "xml:base"

    .line 80
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    sget v3, Lmf/org/apache/xml/resolver/Catalog;->BASE:I

    .line 82
    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v4, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v4, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v4, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v5, "xml:base"

    invoke-virtual {v4, v7, v5, v2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 88
    :try_start_1
    new-instance v2, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v2, v3, v0}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    .line 89
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v0, v2}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_1
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    :cond_4
    :goto_3
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    goto :goto_1

    .line 90
    :catch_1
    move-exception v0

    .line 91
    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    .line 93
    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v0

    if-ne v0, v8, :cond_4

    .line 94
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v2, "Invalid catalog entry (base)"

    invoke-virtual {v0, v6, v2, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 92
    :cond_5
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v2, "Invalid catalog entry type"

    invoke-virtual {v0, v6, v2, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string/jumbo v2, "suffix"

    const-string/jumbo v3, "uri"

    .line 105
    invoke-virtual {p0, p4, v2, v3}, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    sget v1, Lmf/org/apache/xml/resolver/Resolver;->URISUFFIX:I

    const-string/jumbo v2, "suffix"

    .line 107
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "uri"

    .line 108
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v2, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v3, "uriSuffix"

    const-string/jumbo v4, "suffix"

    .line 111
    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "uri"

    .line 112
    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 110
    invoke-virtual {v2, v7, v3, v4, v5}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    const-string/jumbo v2, "suffix"

    const-string/jumbo v3, "uri"

    .line 115
    invoke-virtual {p0, p4, v2, v3}, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    sget v1, Lmf/org/apache/xml/resolver/Resolver;->SYSTEMSUFFIX:I

    const-string/jumbo v2, "suffix"

    .line 117
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "uri"

    .line 118
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v2, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v3, "systemSuffix"

    const-string/jumbo v4, "suffix"

    .line 121
    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "uri"

    .line 122
    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 120
    invoke-virtual {v2, v7, v3, v4, v5}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 135
    :cond_8
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/ExtendedXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v1, "Invalid catalog entry type"

    invoke-virtual {v0, v6, v1, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
