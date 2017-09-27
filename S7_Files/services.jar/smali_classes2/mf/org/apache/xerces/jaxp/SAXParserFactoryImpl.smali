.class public Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;
.super Lmf/javax/xml/parsers/SAXParserFactory;
.source "SAXParserFactoryImpl.java"


# static fields
.field private static final NAMESPACES_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final VALIDATION_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field private static final XINCLUDE_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/xinclude"


# instance fields
.field private fSecureProcess:Z

.field private features:Ljava/util/Hashtable;

.field private grammar:Lmf/javax/xml/validation/Schema;

.field private isXIncludeAware:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lmf/javax/xml/parsers/SAXParserFactory;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->fSecureProcess:Z

    .line 44
    return-void
.end method

.method private newSAXParserImpl()Lmf/org/apache/xerces/jaxp/SAXParserImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 95
    :try_start_0
    new-instance v0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->features:Ljava/util/Hashtable;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;-><init>(Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;Ljava/util/Hashtable;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2

    .line 103
    return-object v0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    throw v0

    :catch_1
    move-exception v0

    .line 99
    throw v0

    :catch_2
    move-exception v0

    .line 101
    new-instance v1, Lmf/javax/xml/parsers/ParserConfigurationException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lmf/javax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 163
    if-eqz p1, :cond_0

    const-string/jumbo v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    .line 166
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "http://xml.org/sax/features/namespaces"

    .line 169
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "http://xml.org/sax/features/validation"

    .line 172
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "http://apache.org/xml/features/xinclude"

    .line 175
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 180
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->newSAXParserImpl()Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 167
    :cond_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->fSecureProcess:Z

    return v0

    .line 170
    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->isNamespaceAware()Z

    move-result v0

    return v0

    .line 173
    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->isValidating()Z

    move-result v0

    return v0

    .line 176
    :cond_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->isXIncludeAware()Z

    move-result v0

    return v0
.end method

.method public getSchema()Lmf/javax/xml/validation/Schema;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->grammar:Lmf/javax/xml/validation/Schema;

    return-object v0
.end method

.method public isXIncludeAware()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->isXIncludeAware:Z

    return v0
.end method

.method public newSAXParser()Lmf/javax/xml/parsers/SAXParser;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 77
    :try_start_0
    new-instance v0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->features:Ljava/util/Hashtable;

    iget-boolean v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->fSecureProcess:Z

    invoke-direct {v0, p0, v1, v2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;-><init>(Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;Ljava/util/Hashtable;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    return-object v0

    .line 78
    :catch_0
    move-exception v0

    .line 81
    new-instance v1, Lmf/javax/xml/parsers/ParserConfigurationException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lmf/javax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 113
    if-eqz p1, :cond_0

    const-string/jumbo v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    .line 117
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "http://xml.org/sax/features/namespaces"

    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "http://xml.org/sax/features/validation"

    .line 126
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "http://apache.org/xml/features/xinclude"

    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 137
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->features:Ljava/util/Hashtable;

    if-eqz v0, :cond_5

    .line 140
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->features:Ljava/util/Hashtable;

    if-nez p2, :cond_6

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :try_start_0
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->newSAXParserImpl()Lmf/org/apache/xerces/jaxp/SAXParserImpl;
    :try_end_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 154
    return-void

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 118
    :cond_1
    iput-boolean p2, p0, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->fSecureProcess:Z

    .line 119
    return-void

    .line 123
    :cond_2
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->setNamespaceAware(Z)V

    .line 124
    return-void

    .line 127
    :cond_3
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->setValidating(Z)V

    .line 128
    return-void

    .line 131
    :cond_4
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->setXIncludeAware(Z)V

    .line 132
    return-void

    .line 138
    :cond_5
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->features:Ljava/util/Hashtable;

    goto :goto_0

    .line 140
    :cond_6
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    .line 145
    :catch_0
    move-exception v0

    .line 147
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->features:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    throw v0

    :catch_1
    move-exception v0

    .line 151
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->features:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    throw v0
.end method

.method public setSchema(Lmf/javax/xml/validation/Schema;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->grammar:Lmf/javax/xml/validation/Schema;

    .line 189
    return-void
.end method

.method public setXIncludeAware(Z)V
    .locals 0

    .prologue
    .line 196
    iput-boolean p1, p0, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->isXIncludeAware:Z

    .line 197
    return-void
.end method
