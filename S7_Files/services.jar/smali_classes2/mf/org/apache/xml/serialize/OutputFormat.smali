.class public Lmf/org/apache/xml/serialize/OutputFormat;
.super Ljava/lang/Object;
.source "OutputFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xml/serialize/OutputFormat$DTD;,
        Lmf/org/apache/xml/serialize/OutputFormat$Defaults;
    }
.end annotation


# instance fields
.field private _allowJavaNames:Z

.field private _cdataElements:[Ljava/lang/String;

.field private _doctypePublic:Ljava/lang/String;

.field private _doctypeSystem:Ljava/lang/String;

.field private _encoding:Ljava/lang/String;

.field private _encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

.field private _indent:I

.field private _lineSeparator:Ljava/lang/String;

.field private _lineWidth:I

.field private _mediaType:Ljava/lang/String;

.field private _method:Ljava/lang/String;

.field private _nonEscapingElements:[Ljava/lang/String;

.field private _omitComments:Z

.field private _omitDoctype:Z

.field private _omitXmlDeclaration:Z

.field private _preserve:Z

.field private _preserveEmptyAttributes:Z

.field private _standalone:Z

.field private _version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_indent:I

    const-string/jumbo v0, "UTF-8"

    .line 158
    iput-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encoding:Ljava/lang/String;

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    .line 166
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_allowJavaNames:Z

    .line 189
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitXmlDeclaration:Z

    .line 195
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitDoctype:Z

    .line 201
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitComments:Z

    .line 207
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_standalone:Z

    const-string/jumbo v0, "\n"

    .line 227
    iput-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineSeparator:Ljava/lang/String;

    const/16 v0, 0x48

    .line 233
    iput v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineWidth:I

    .line 240
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_preserve:Z

    .line 245
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_preserveEmptyAttributes:Z

    .line 252
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_indent:I

    const-string/jumbo v0, "UTF-8"

    .line 158
    iput-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encoding:Ljava/lang/String;

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    .line 166
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_allowJavaNames:Z

    .line 189
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitXmlDeclaration:Z

    .line 195
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitDoctype:Z

    .line 201
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitComments:Z

    .line 207
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_standalone:Z

    const-string/jumbo v0, "\n"

    .line 227
    iput-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineSeparator:Ljava/lang/String;

    const/16 v0, 0x48

    .line 233
    iput v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineWidth:I

    .line 240
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_preserve:Z

    .line 245
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_preserveEmptyAttributes:Z

    .line 270
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/OutputFormat;->setMethod(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/OutputFormat;->setEncoding(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0, p3}, Lmf/org/apache/xml/serialize/OutputFormat;->setIndenting(Z)V

    .line 273
    return-void
.end method

.method public constructor <init>(Lmf/org/w3c/dom/Document;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_indent:I

    const-string/jumbo v0, "UTF-8"

    .line 158
    iput-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encoding:Ljava/lang/String;

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    .line 166
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_allowJavaNames:Z

    .line 189
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitXmlDeclaration:Z

    .line 195
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitDoctype:Z

    .line 201
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitComments:Z

    .line 207
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_standalone:Z

    const-string/jumbo v0, "\n"

    .line 227
    iput-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineSeparator:Ljava/lang/String;

    const/16 v0, 0x48

    .line 233
    iput v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineWidth:I

    .line 240
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_preserve:Z

    .line 245
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_preserveEmptyAttributes:Z

    .line 286
    invoke-static {p1}, Lmf/org/apache/xml/serialize/OutputFormat;->whichMethod(Lmf/org/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/OutputFormat;->setMethod(Ljava/lang/String;)V

    .line 287
    invoke-static {p1}, Lmf/org/apache/xml/serialize/OutputFormat;->whichDoctypePublic(Lmf/org/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lmf/org/apache/xml/serialize/OutputFormat;->whichDoctypeSystem(Lmf/org/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xml/serialize/OutputFormat;->setDoctype(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/OutputFormat;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmf/org/apache/xml/serialize/OutputFormat;->whichMediaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/OutputFormat;->setMediaType(Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public constructor <init>(Lmf/org/w3c/dom/Document;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Lmf/org/w3c/dom/Document;)V

    .line 309
    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/OutputFormat;->setEncoding(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0, p3}, Lmf/org/apache/xml/serialize/OutputFormat;->setIndenting(Z)V

    .line 311
    return-void
.end method

.method public static whichDoctypePublic(Lmf/org/w3c/dom/Document;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 907
    invoke-interface {p0}, Lmf/org/w3c/dom/Document;->getDoctype()Lmf/org/w3c/dom/DocumentType;

    move-result-object v0

    .line 908
    if-nez v0, :cond_0

    .line 916
    :goto_0
    instance-of v0, p0, Lmf/org/w3c/dom/html/HTMLDocument;

    if-nez v0, :cond_1

    .line 918
    return-object v1

    .line 912
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lmf/org/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "-//W3C//DTD XHTML 1.0 Strict//EN"

    .line 917
    return-object v0
.end method

.method public static whichDoctypeSystem(Lmf/org/w3c/dom/Document;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 931
    invoke-interface {p0}, Lmf/org/w3c/dom/Document;->getDoctype()Lmf/org/w3c/dom/DocumentType;

    move-result-object v0

    .line 932
    if-nez v0, :cond_0

    .line 940
    :goto_0
    instance-of v0, p0, Lmf/org/w3c/dom/html/HTMLDocument;

    if-nez v0, :cond_1

    .line 942
    return-object v1

    .line 936
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lmf/org/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"

    .line 941
    return-object v0
.end method

.method public static whichMediaType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "xml"

    .line 952
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "html"

    .line 954
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "xhtml"

    .line 956
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "text"

    .line 958
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "fop"

    .line 960
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 962
    return-object v0

    :cond_0
    const-string/jumbo v0, "text/xml"

    .line 953
    return-object v0

    :cond_1
    const-string/jumbo v0, "text/html"

    .line 955
    return-object v0

    :cond_2
    const-string/jumbo v0, "text/html"

    .line 957
    return-object v0

    :cond_3
    const-string/jumbo v0, "text/plain"

    .line 959
    return-object v0

    :cond_4
    const-string/jumbo v0, "application/pdf"

    .line 961
    return-object v0
.end method

.method public static whichMethod(Lmf/org/w3c/dom/Document;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 861
    instance-of v0, p0, Lmf/org/w3c/dom/html/HTMLDocument;

    if-nez v0, :cond_1

    .line 870
    invoke-interface {p0}, Lmf/org/w3c/dom/Document;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    move-object v2, v0

    .line 871
    :goto_0
    if-eqz v2, :cond_8

    .line 873
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    .line 881
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    .line 891
    :cond_0
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "html"

    .line 862
    return-object v0

    .line 874
    :cond_2
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 876
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "root"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "xml"

    .line 879
    return-object v0

    :cond_3
    const-string/jumbo v0, "html"

    .line 875
    return-object v0

    :cond_4
    const-string/jumbo v0, "fop"

    .line 877
    return-object v0

    .line 885
    :cond_5
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 886
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 887
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_7

    .line 886
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 887
    :cond_7
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_6

    .line 888
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_6

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_6

    const-string/jumbo v0, "xml"

    .line 889
    return-object v0

    :cond_8
    const-string/jumbo v0, "xml"

    .line 894
    return-object v0
.end method


# virtual methods
.method public getCDataElements()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_cdataElements:[Ljava/lang/String;

    return-object v0
.end method

.method public getDoctypePublic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_doctypePublic:Ljava/lang/String;

    return-object v0
.end method

.method public getDoctypeSystem()Ljava/lang/String;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_doctypeSystem:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodingInfo()Lmf/org/apache/xml/serialize/EncodingInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 474
    iget-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    if-eqz v0, :cond_0

    .line 476
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    return-object v0

    .line 475
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encoding:Ljava/lang/String;

    iget-boolean v1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_allowJavaNames:Z

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/Encodings;->getEncodingInfo(Ljava/lang/String;Z)Lmf/org/apache/xml/serialize/EncodingInfo;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    goto :goto_0
.end method

.method public getIndent()I
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_indent:I

    return v0
.end method

.method public getIndenting()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 390
    iget v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_indent:I

    if-gtz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getLastPrintable()C
    .locals 2

    .prologue
    .line 834
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 838
    :cond_0
    const v0, 0xffff

    return v0

    .line 835
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    const/16 v0, 0xff

    return v0
.end method

.method public getLineSeparator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public getLineWidth()I
    .locals 1

    .prologue
    .line 795
    iget v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineWidth:I

    return v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_mediaType:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_method:Ljava/lang/String;

    return-object v0
.end method

.method public getNonEscapingElements()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_nonEscapingElements:[Ljava/lang/String;

    return-object v0
.end method

.method public getOmitComments()Z
    .locals 1

    .prologue
    .line 562
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitComments:Z

    return v0
.end method

.method public getOmitDocumentType()Z
    .locals 1

    .prologue
    .line 583
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitDoctype:Z

    return v0
.end method

.method public getOmitXMLDeclaration()Z
    .locals 1

    .prologue
    .line 604
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitXmlDeclaration:Z

    return v0
.end method

.method public getPreserveEmptyAttributes()Z
    .locals 1

    .prologue
    .line 820
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_preserveEmptyAttributes:Z

    return v0
.end method

.method public getPreserveSpace()Z
    .locals 1

    .prologue
    .line 770
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_preserve:Z

    return v0
.end method

.method public getStandalone()Z
    .locals 1

    .prologue
    .line 625
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_standalone:Z

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_version:Ljava/lang/String;

    return-object v0
.end method

.method public isCDataElement(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 664
    iget-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_cdataElements:[Ljava/lang/String;

    if-eqz v0, :cond_0

    move v0, v1

    .line 666
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_cdataElements:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 667
    iget-object v2, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_cdataElements:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 666
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 665
    :cond_0
    return v1

    .line 668
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 669
    :cond_2
    return v1
.end method

.method public isNonEscapingElement(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 707
    iget-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_nonEscapingElements:[Ljava/lang/String;

    if-eqz v0, :cond_0

    move v0, v1

    .line 710
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_nonEscapingElements:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 711
    iget-object v2, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_nonEscapingElements:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 710
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 708
    :cond_0
    return v1

    .line 712
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 713
    :cond_2
    return v1
.end method

.method public setAllowJavaNames(Z)V
    .locals 0

    .prologue
    .line 483
    iput-boolean p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_allowJavaNames:Z

    .line 484
    return-void
.end method

.method public setAllowJavaNames()Z
    .locals 1

    .prologue
    .line 490
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_allowJavaNames:Z

    return v0
.end method

.method public setCDataElements([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 681
    iput-object p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_cdataElements:[Ljava/lang/String;

    .line 682
    return-void
.end method

.method public setDoctype(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 531
    iput-object p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_doctypePublic:Ljava/lang/String;

    .line 532
    iput-object p2, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_doctypeSystem:Ljava/lang/String;

    .line 533
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 455
    iput-object p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encoding:Ljava/lang/String;

    const/4 v0, 0x0

    .line 456
    iput-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    .line 457
    return-void
.end method

.method public setEncoding(Lmf/org/apache/xml/serialize/EncodingInfo;)V
    .locals 1

    .prologue
    .line 464
    invoke-virtual {p1}, Lmf/org/apache/xml/serialize/EncodingInfo;->getIANAName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encoding:Ljava/lang/String;

    .line 465
    iput-object p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    .line 466
    return-void
.end method

.method public setIndent(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 404
    if-ltz p1, :cond_0

    .line 407
    iput p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_indent:I

    .line 408
    :goto_0
    return-void

    .line 405
    :cond_0
    iput v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_indent:I

    goto :goto_0
.end method

.method public setIndenting(Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 422
    if-nez p1, :cond_0

    .line 426
    iput v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_indent:I

    .line 427
    iput v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineWidth:I

    .line 429
    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x4

    .line 423
    iput v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_indent:I

    const/16 v0, 0x48

    .line 424
    iput v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineWidth:I

    goto :goto_0
.end method

.method public setLineSeparator(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 754
    if-eqz p1, :cond_0

    .line 757
    iput-object p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineSeparator:Ljava/lang/String;

    .line 758
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "\n"

    .line 755
    iput-object v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineSeparator:Ljava/lang/String;

    goto :goto_0
.end method

.method public setLineWidth(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 810
    if-lez p1, :cond_0

    .line 813
    iput p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineWidth:I

    .line 814
    :goto_0
    return-void

    .line 811
    :cond_0
    iput v0, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_lineWidth:I

    goto :goto_0
.end method

.method public setMediaType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_mediaType:Ljava/lang/String;

    .line 515
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_method:Ljava/lang/String;

    .line 339
    return-void
.end method

.method public setNonEscapingElements([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 725
    iput-object p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_nonEscapingElements:[Ljava/lang/String;

    .line 726
    return-void
.end method

.method public setOmitComments(Z)V
    .locals 0

    .prologue
    .line 573
    iput-boolean p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitComments:Z

    .line 574
    return-void
.end method

.method public setOmitDocumentType(Z)V
    .locals 0

    .prologue
    .line 594
    iput-boolean p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitDoctype:Z

    .line 595
    return-void
.end method

.method public setOmitXMLDeclaration(Z)V
    .locals 0

    .prologue
    .line 615
    iput-boolean p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_omitXmlDeclaration:Z

    .line 616
    return-void
.end method

.method public setPreserveEmptyAttributes(Z)V
    .locals 0

    .prologue
    .line 825
    iput-boolean p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_preserveEmptyAttributes:Z

    return-void
.end method

.method public setPreserveSpace(Z)V
    .locals 0

    .prologue
    .line 783
    iput-boolean p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_preserve:Z

    .line 784
    return-void
.end method

.method public setStandalone(Z)V
    .locals 0

    .prologue
    .line 638
    iput-boolean p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_standalone:Z

    .line 639
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lmf/org/apache/xml/serialize/OutputFormat;->_version:Ljava/lang/String;

    .line 368
    return-void
.end method
