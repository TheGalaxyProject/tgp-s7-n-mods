.class public Lcom/samsung/android/settings/flipfont/TypefaceParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "TypefaceParser.java"


# instance fields
.field private in_droidname:Z

.field private in_file:Z

.field private in_filename:Z

.field private in_font:Z

.field private in_monospace:Z

.field private in_sans:Z

.field private in_serif:Z

.field private mFont:Lcom/samsung/android/settings/flipfont/Typeface;

.field private mFontFile:Lcom/samsung/android/settings/flipfont/TypefaceFile;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 41
    iput-boolean v0, p0, Lcom/samsung/android/settings/flipfont/TypefaceParser;->in_font:Z

    .line 42
    iput-boolean v0, p0, Lcom/samsung/android/settings/flipfont/TypefaceParser;->in_sans:Z

    .line 43
    iput-boolean v0, p0, Lcom/samsung/android/settings/flipfont/TypefaceParser;->in_serif:Z

    .line 44
    iput-boolean v0, p0, Lcom/samsung/android/settings/flipfont/TypefaceParser;->in_monospace:Z

    .line 45
    iput-boolean v0, p0, Lcom/samsung/android/settings/flipfont/TypefaceParser;->in_file:Z

    .line 46
    iput-boolean v0, p0, Lcom/samsung/android/settings/flipfont/TypefaceParser;->in_filename:Z

    .line 47
    iput-boolean v0, p0, Lcom/samsung/android/settings/flipfont/TypefaceParser;->in_droidname:Z

    .line 50
    iput-object v1, p0, Lcom/samsung/android/settings/flipfont/TypefaceParser;->mFont:Lcom/samsung/android/settings/flipfont/Typeface;

    .line 51
    iput-object v1, p0, Lcom/samsung/android/settings/flipfont/TypefaceParser;->mFontFile:Lcom/samsung/android/settings/flipfont/TypefaceFile;

    .line 26
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/samsung/android/settings/flipfont/TypefaceParser;->in_filename:Z

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/TypefaceParser;->mFontFile:Lcom/samsung/android/settings/flipfont/TypefaceFile;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/flipfont/TypefaceFile;->setFileName(Ljava/lang/String;)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/flipfont/TypefaceParser;->in_droidname:Z

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/TypefaceParser;->mFontFile:Lcom/samsung/android/settings/flipfont/TypefaceFile;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/flipfont/TypefaceFile;->setDroidName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 68
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 105
    const-string/jumbo v0, "font"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iput-boolean v1, p0, Lcom/samsung/android/settings/flipfont/TypefaceParser;->in_font:Z

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    const-string/jumbo v0, "sans"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    iput-boolean v1, p0, Lcom/samsung/android/settings/flipfont/TypefaceParser;->in_sans:Z

    goto :goto_0

    .line 109
    :cond_2
    const-string/jumbo v0, "serif"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 110
    iput-boolean v1, p0, Lcom/samsung/android/settings/flipfont/TypefaceParser;->in_serif:Z

    goto :goto_0

    .line 111
    :cond_3
    const-string/jumbo v0, "monospace"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 112
    iput-boolean v1, p0, Lcom/samsung/android/settings/flipfont/TypefaceParser;->in_monospace:Z

    goto :goto_0

    .line 113
    :cond_4
    const-string/jumbo v0, "file"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 114
    iput-boolean v1, p0, Lcom/samsung/android/settings/flipfont/TypefaceParser;->in_file:Z

    .line 116
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/TypefaceParser;->mFontFile:Lcom/samsung/android/settings/flipfont/TypefaceFile;

    if-eqz v0, :cond_0

    .line 117
    iget-boolean v0, p0, Lcom/samsung/android/settings/flipfont/TypefaceParser;->in_sans:Z

    if-eqz v0, :cond_5

    .line 118
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/TypefaceParser;->mFont:Lcom/samsung/android/settings/flipfont/Typeface;

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/TypefaceParser;->mFontFile:Lcom/samsung/android/settings/flipfont/TypefaceFile;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/settings/flipfont/TypefaceParser;->in_serif:Z

    if-eqz v0, :cond_6

    .line 120
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/TypefaceParser;->mFont:Lcom/samsung/android/settings/flipfont/Typeface;

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/Typeface;->mSerifFonts:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/TypefaceParser;->mFontFile:Lcom/samsung/android/settings/flipfont/TypefaceFile;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/settings/flipfont/TypefaceParser;->in_monospace:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/TypefaceParser;->mFont:Lcom/samsung/android/settings/flipfont/Typeface;

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/Typeface;->mMonospaceFonts:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/TypefaceParser;->mFontFile:Lcom/samsung/android/settings/flipfont/TypefaceFile;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :cond_7
    const-string/jumbo v0, "filename"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 126
    iput-boolean v1, p0, Lcom/samsung/android/settings/flipfont/TypefaceParser;->in_filename:Z

    goto :goto_0

    .line 127
    :cond_8
    const-string/jumbo v0, "droidname"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iput-boolean v1, p0, Lcom/samsung/android/settings/flipfont/TypefaceParser;->in_droidname:Z

    goto :goto_0
.end method

.method public getParsedData()Lcom/samsung/android/settings/flipfont/Typeface;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/TypefaceParser;->mFont:Lcom/samsung/android/settings/flipfont/Typeface;

    return-object v0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Lcom/samsung/android/settings/flipfont/Typeface;

    invoke-direct {v0}, Lcom/samsung/android/settings/flipfont/Typeface;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/flipfont/TypefaceParser;->mFont:Lcom/samsung/android/settings/flipfont/Typeface;

    .line 63
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 78
    const-string/jumbo v1, "font"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    iput-boolean v2, p0, Lcom/samsung/android/settings/flipfont/TypefaceParser;->in_font:Z

    .line 80
    const-string/jumbo v1, "displayname"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "attrValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/TypefaceParser;->mFont:Lcom/samsung/android/settings/flipfont/Typeface;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/flipfont/Typeface;->setName(Ljava/lang/String;)V

    .line 77
    .end local v0    # "attrValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    const-string/jumbo v1, "sans"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    iput-boolean v2, p0, Lcom/samsung/android/settings/flipfont/TypefaceParser;->in_sans:Z

    goto :goto_0

    .line 84
    :cond_2
    const-string/jumbo v1, "serif"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 85
    iput-boolean v2, p0, Lcom/samsung/android/settings/flipfont/TypefaceParser;->in_serif:Z

    goto :goto_0

    .line 86
    :cond_3
    const-string/jumbo v1, "monospace"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 87
    iput-boolean v2, p0, Lcom/samsung/android/settings/flipfont/TypefaceParser;->in_monospace:Z

    goto :goto_0

    .line 88
    :cond_4
    const-string/jumbo v1, "file"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 89
    iput-boolean v2, p0, Lcom/samsung/android/settings/flipfont/TypefaceParser;->in_file:Z

    .line 90
    new-instance v1, Lcom/samsung/android/settings/flipfont/TypefaceFile;

    invoke-direct {v1}, Lcom/samsung/android/settings/flipfont/TypefaceFile;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/flipfont/TypefaceParser;->mFontFile:Lcom/samsung/android/settings/flipfont/TypefaceFile;

    goto :goto_0

    .line 91
    :cond_5
    const-string/jumbo v1, "filename"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 92
    iput-boolean v2, p0, Lcom/samsung/android/settings/flipfont/TypefaceParser;->in_filename:Z

    goto :goto_0

    .line 93
    :cond_6
    const-string/jumbo v1, "droidname"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    iput-boolean v2, p0, Lcom/samsung/android/settings/flipfont/TypefaceParser;->in_droidname:Z

    goto :goto_0
.end method
