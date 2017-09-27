.class public Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;
.super Lmf/org/apache/xerces/parsers/XML11Configuration;
.source "XPointerParserConfiguration.java"


# static fields
.field protected static final ALLOW_UE_AND_NOTATION_EVENTS:Ljava/lang/String; = "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

.field protected static final NAMESPACE_CONTEXT:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-context"

.field protected static final XINCLUDE_FIXUP_BASE_URIS:Ljava/lang/String; = "http://apache.org/xml/features/xinclude/fixup-base-uris"

.field protected static final XINCLUDE_FIXUP_LANGUAGE:Ljava/lang/String; = "http://apache.org/xml/features/xinclude/fixup-language"

.field protected static final XINCLUDE_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/xinclude-handler"

.field protected static final XPOINTER_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/xpointer-handler"


# instance fields
.field private fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

.field private fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, v0, v0, v0}, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, v0, v0}, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 111
    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/parsers/XML11Configuration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 113
    new-instance v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-direct {v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    .line 114
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->addCommonComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 116
    new-instance v0, Lmf/org/apache/xerces/xpointer/XPointerHandler;

    invoke-direct {v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    .line 117
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->addCommonComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 119
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

    .line 120
    aput-object v1, v0, v3

    const-string/jumbo v1, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    .line 121
    aput-object v1, v0, v2

    const-string/jumbo v1, "http://apache.org/xml/features/xinclude/fixup-language"

    .line 122
    aput-object v1, v0, v4

    .line 124
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    .line 128
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/xinclude-handler"

    aput-object v1, v0, v3

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/xpointer-handler"

    aput-object v1, v0, v2

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/namespace-context"

    aput-object v1, v0, v4

    .line 129
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    const-string/jumbo v0, "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

    .line 131
    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    .line 132
    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/xinclude/fixup-language"

    .line 133
    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/xinclude-handler"

    .line 135
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/xpointer-handler"

    .line 136
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/namespace-context"

    .line 137
    new-instance v1, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-direct {v1}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;-><init>()V

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    return-void
.end method


# virtual methods
.method protected configurePipeline()V
    .locals 3

    .prologue
    .line 145
    invoke-super {p0}, Lmf/org/apache/xerces/parsers/XML11Configuration;->configurePipeline()V

    .line 148
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 149
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    .line 151
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 152
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    .line 153
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 154
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    .line 155
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 156
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_0

    .line 163
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_1

    .line 170
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    .line 171
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    .line 174
    :goto_1
    invoke-interface {v0}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v1

    .line 175
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 176
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 178
    if-nez v1, :cond_2

    .line 183
    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 184
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 185
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    move-result-object v0

    goto :goto_1

    .line 179
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 180
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    goto :goto_2
.end method

.method protected configureXML11Pipeline()V
    .locals 3

    .prologue
    .line 188
    invoke-super {p0}, Lmf/org/apache/xerces/parsers/XML11Configuration;->configureXML11Pipeline()V

    .line 191
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 192
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    .line 194
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 195
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    .line 196
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 197
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    .line 198
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 199
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_0

    .line 207
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_1

    .line 214
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    .line 215
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    .line 218
    :goto_1
    invoke-interface {v0}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v1

    .line 219
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 220
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 222
    if-nez v1, :cond_2

    .line 227
    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 228
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 231
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    goto :goto_0

    .line 210
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    move-result-object v0

    goto :goto_1

    .line 223
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 224
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    goto :goto_2
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 239
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 240
    return-void
.end method
