.class public Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;
.super Lmf/org/apache/xerces/impl/XMLScanner;
.source "XMLDTDScannerImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;
.implements Lmf/org/apache/xerces/xni/parser/XMLComponent;
.implements Lmf/org/apache/xerces/impl/XMLEntityHandler;


# static fields
.field private static final DEBUG_SCANNER_STATE:Z = false

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SCANNER_STATE_END_OF_INPUT:I = 0x0

.field protected static final SCANNER_STATE_MARKUP_DECL:I = 0x2

.field protected static final SCANNER_STATE_TEXT_DECL:I = 0x1


# instance fields
.field private fContentDepth:I

.field private fContentStack:[I

.field protected fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

.field protected fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

.field private fEnumeration:[Ljava/lang/String;

.field private fEnumerationCount:I

.field private fExtEntityDepth:I

.field private final fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

.field private fIncludeSectDepth:I

.field private final fLiteral:Lmf/org/apache/xerces/xni/XMLString;

.field private final fLiteral2:Lmf/org/apache/xerces/xni/XMLString;

.field private fMarkUpDepth:I

.field private fPEDepth:I

.field private fPEReport:[Z

.field private fPEStack:[I

.field protected fScannerState:I

.field protected fSeenExternalDTD:Z

.field protected fSeenPEReferences:Z

.field protected fStandalone:Z

.field private fStartDTDCalled:Z

.field private final fString:Lmf/org/apache/xerces/xni/XMLString;

.field private final fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

.field private final fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

.field private final fStrings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 87
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "http://xml.org/sax/features/validation"

    .line 88
    aput-object v1, v0, v4

    const-string/jumbo v1, "http://apache.org/xml/features/scanner/notify-char-refs"

    .line 89
    aput-object v1, v0, v2

    .line 87
    sput-object v0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    .line 93
    new-array v0, v3, [Ljava/lang/Boolean;

    .line 95
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    .line 93
    sput-object v0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    .line 99
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/symbol-table"

    .line 100
    aput-object v1, v0, v4

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/error-reporter"

    .line 101
    aput-object v1, v0, v2

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/entity-manager"

    .line 102
    aput-object v1, v0, v3

    .line 99
    sput-object v0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    .line 106
    new-array v0, v5, [Ljava/lang/Object;

    sput-object v0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    .line 115
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 210
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLScanner;-><init>()V

    .line 152
    new-array v0, v1, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentStack:[I

    .line 158
    new-array v0, v1, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEStack:[I

    .line 162
    new-array v0, v1, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEReport:[Z

    const/4 v0, 0x3

    .line 179
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    .line 182
    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    .line 185
    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    .line 188
    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    .line 191
    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral:Lmf/org/apache/xerces/xni/XMLString;

    .line 194
    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral2:Lmf/org/apache/xerces/xni/XMLString;

    .line 197
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    .line 203
    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    .line 210
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/XMLEntityManager;)V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 213
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLScanner;-><init>()V

    .line 152
    new-array v0, v1, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentStack:[I

    .line 158
    new-array v0, v1, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEStack:[I

    .line 162
    new-array v0, v1, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEReport:[Z

    const/4 v0, 0x3

    .line 179
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    .line 182
    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    .line 185
    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    .line 188
    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    .line 191
    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral:Lmf/org/apache/xerces/xni/XMLString;

    .line 194
    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral2:Lmf/org/apache/xerces/xni/XMLString;

    .line 197
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    .line 203
    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    .line 215
    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 216
    iput-object p2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 217
    iput-object p3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/symbol-table"

    .line 218
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {p3, v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    return-void
.end method

.method private final ensureEnumerationSize(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2093
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    array-length v0, v0

    if-eq v0, p1, :cond_0

    .line 2098
    :goto_0
    return-void

    .line 2094
    :cond_0
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 2095
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2096
    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    goto :goto_0
.end method

.method private static getScannerStateName(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "??? ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2103
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStartDTDCalled:Z

    .line 2104
    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fExtEntityDepth:I

    .line 2105
    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    .line 2106
    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 2107
    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    .line 2109
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStandalone:Z

    .line 2110
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSeenExternalDTD:Z

    .line 2111
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSeenPEReferences:Z

    const/4 v0, 0x1

    .line 2114
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->setScannerState(I)V

    .line 2115
    return-void
.end method

.method private final peekReportEntity()Z
    .locals 2

    .prologue
    .line 2085
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEReport:[Z

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    add-int/lit8 v1, v1, -0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method private final popContentStack()I
    .locals 2

    .prologue
    .line 2056
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentDepth:I

    aget v0, v0, v1

    return v0
.end method

.method private final popPEStack()I
    .locals 2

    .prologue
    .line 2080
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    aget v0, v0, v1

    return v0
.end method

.method private final pushContentStack(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2047
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentStack:[I

    array-length v0, v0

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentDepth:I

    if-eq v0, v1, :cond_0

    .line 2052
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentDepth:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentDepth:I

    aput p1, v0, v1

    .line 2053
    return-void

    .line 2048
    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentDepth:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 2049
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentStack:[I

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentDepth:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2050
    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentStack:[I

    goto :goto_0
.end method

.method private final pushPEStack(IZ)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2064
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEStack:[I

    array-length v0, v0

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    if-eq v0, v1, :cond_0

    .line 2074
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEReport:[Z

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    aput-boolean p2, v0, v1

    .line 2075
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    aput p1, v0, v1

    .line 2076
    return-void

    .line 2065
    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 2066
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEStack:[I

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2067
    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEStack:[I

    .line 2069
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Z

    .line 2070
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEReport:[Z

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2071
    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEReport:[Z

    goto :goto_0
.end method

.method private final scanAttType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x7c

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1224
    iput v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    .line 1230
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v3, "CDATA"

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1233
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v3, "IDREFS"

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1236
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v3, "IDREF"

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1239
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v3, "ID"

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1242
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v3, "ENTITY"

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1245
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v3, "ENTITIES"

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1248
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v3, "NMTOKENS"

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1251
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v3, "NMTOKEN"

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1254
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v3, "NOTATION"

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v3, "ENUMERATION"

    .line 1294
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v0

    const/16 v4, 0x28

    .line 1295
    if-ne v0, v4, :cond_14

    .line 1300
    :goto_0
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1302
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_15

    move v0, v1

    :goto_1
    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 1303
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanNmtoken()Ljava/lang/String;

    move-result-object v0

    .line 1304
    if-eqz v0, :cond_16

    .line 1313
    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->ensureEnumerationSize(I)V

    .line 1314
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    iget v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    aput-object v0, v4, v5

    .line 1315
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_17

    move v0, v1

    :goto_2
    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 1316
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v0

    .line 1317
    :cond_1
    if-eq v0, v8, :cond_0

    :goto_3
    const/16 v4, 0x29

    .line 1318
    if-ne v0, v4, :cond_18

    .line 1322
    :goto_4
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    move-object v0, v3

    .line 1324
    :goto_5
    return-object v0

    :cond_2
    const-string/jumbo v0, "CDATA"

    goto :goto_5

    :cond_3
    const-string/jumbo v0, "IDREFS"

    goto :goto_5

    :cond_4
    const-string/jumbo v0, "IDREF"

    goto :goto_5

    :cond_5
    const-string/jumbo v0, "ID"

    goto :goto_5

    :cond_6
    const-string/jumbo v0, "ENTITY"

    goto :goto_5

    :cond_7
    const-string/jumbo v0, "ENTITIES"

    goto :goto_5

    :cond_8
    const-string/jumbo v0, "NMTOKENS"

    goto :goto_5

    :cond_9
    const-string/jumbo v0, "NMTOKEN"

    goto :goto_5

    :cond_a
    const-string/jumbo v3, "NOTATION"

    .line 1257
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v1

    :goto_6
    invoke-direct {p0, v1, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1262
    :goto_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v0

    const/16 v4, 0x28

    .line 1263
    if-ne v0, v4, :cond_f

    .line 1267
    :goto_8
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1269
    :cond_b
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_10

    move v0, v1

    :goto_9
    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 1270
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v0

    .line 1271
    if-eqz v0, :cond_11

    .line 1280
    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->ensureEnumerationSize(I)V

    .line 1281
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    iget v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    aput-object v0, v4, v5

    .line 1282
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_12

    move v0, v1

    :goto_a
    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 1283
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v0

    .line 1284
    :cond_c
    if-eq v0, v8, :cond_b

    :goto_b
    const/16 v4, 0x29

    .line 1285
    if-ne v0, v4, :cond_13

    .line 1289
    :goto_c
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    move-object v0, v3

    .line 1290
    goto/16 :goto_5

    :cond_d
    move v0, v2

    .line 1257
    goto :goto_6

    :cond_e
    const-string/jumbo v0, "MSG_SPACE_REQUIRED_AFTER_NOTATION_IN_NOTATIONTYPE"

    .line 1259
    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    .line 1258
    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :cond_f
    const-string/jumbo v0, "MSG_OPEN_PAREN_REQUIRED_IN_NOTATIONTYPE"

    .line 1265
    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    .line 1264
    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    :cond_10
    move v0, v2

    .line 1269
    goto :goto_9

    :cond_11
    const-string/jumbo v0, "MSG_NAME_REQUIRED_IN_NOTATIONTYPE"

    .line 1273
    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    .line 1272
    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1274
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipInvalidEnumerationValue()I

    move-result v0

    .line 1275
    if-eq v0, v8, :cond_c

    goto :goto_b

    :cond_12
    move v0, v2

    .line 1282
    goto :goto_a

    :cond_13
    const-string/jumbo v0, "NotationTypeUnterminated"

    .line 1287
    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    .line 1286
    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c

    :cond_14
    const-string/jumbo v0, "AttTypeRequiredInAttDef"

    .line 1298
    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    .line 1297
    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_15
    move v0, v2

    .line 1302
    goto/16 :goto_1

    :cond_16
    const-string/jumbo v0, "MSG_NMTOKEN_REQUIRED_IN_ENUMERATION"

    .line 1306
    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    .line 1305
    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1307
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipInvalidEnumerationValue()I

    move-result v0

    .line 1308
    if-eq v0, v8, :cond_1

    goto/16 :goto_3

    :cond_17
    move v0, v2

    .line 1315
    goto/16 :goto_2

    :cond_18
    const-string/jumbo v0, "EnumerationUnterminated"

    .line 1320
    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    .line 1319
    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4
.end method

.method private final scanChildren(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x7c

    const/16 v7, 0x2c

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 959
    iput v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentDepth:I

    .line 960
    invoke-direct {p0, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->pushContentStack(I)V

    move v0, v1

    .line 964
    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 977
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v3

    if-nez v3, :cond_8

    move v3, v2

    :goto_1
    invoke-direct {p0, v1, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 978
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v3

    .line 979
    if-eqz v3, :cond_9

    .line 985
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-nez v4, :cond_a

    .line 988
    :goto_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 989
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v4

    const/16 v3, 0x3f

    .line 990
    if-ne v4, v3, :cond_b

    .line 992
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-nez v3, :cond_c

    .line 1005
    :goto_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 1006
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1009
    :cond_1
    :goto_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v3

    if-nez v3, :cond_f

    move v3, v2

    :goto_5
    invoke-direct {p0, v1, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 1010
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v3

    .line 1011
    if-eq v3, v7, :cond_10

    .line 1022
    :cond_2
    if-eq v3, v8, :cond_12

    :cond_3
    const/16 v0, 0x29

    .line 1033
    if-ne v3, v0, :cond_14

    .line 1038
    :goto_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-nez v0, :cond_15

    .line 1042
    :goto_7
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->popContentStack()I

    move-result v0

    .line 1049
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v4, ")?"

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 1057
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v4, ")+"

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 1065
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v4, ")*"

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 1075
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 1076
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1078
    :cond_4
    :goto_8
    iget v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1079
    iget v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentDepth:I

    if-nez v3, :cond_1

    .line 1080
    return-void

    .line 965
    :cond_5
    iget v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 966
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 968
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-nez v3, :cond_6

    .line 972
    :goto_9
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->pushContentStack(I)V

    .line 974
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v2

    :goto_a
    invoke-direct {p0, v1, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move v0, v1

    .line 975
    goto/16 :goto_0

    .line 969
    :cond_6
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v3, v6}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->startGroup(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_9

    :cond_7
    move v0, v1

    .line 974
    goto :goto_a

    :cond_8
    move v3, v1

    .line 977
    goto/16 :goto_1

    :cond_9
    const-string/jumbo v0, "MSG_OPEN_PAREN_OR_ELEMENT_TYPE_REQUIRED_IN_CHILDREN"

    .line 981
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 980
    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 982
    return-void

    .line 986
    :cond_a
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v4, v3, v6}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->element(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_2

    :cond_b
    const/16 v3, 0x2a

    .line 990
    if-eq v4, v3, :cond_0

    const/16 v3, 0x2b

    if-eq v4, v3, :cond_0

    goto/16 :goto_4

    :cond_c
    const/16 v3, 0x3f

    .line 994
    if-eq v4, v3, :cond_d

    const/16 v3, 0x2a

    .line 997
    if-eq v4, v3, :cond_e

    .line 1001
    const/4 v3, 0x4

    .line 1003
    :goto_b
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v5, v3, v6}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->occurrence(SLmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_3

    .line 995
    :cond_d
    const/4 v3, 0x2

    goto :goto_b

    .line 998
    :cond_e
    const/4 v3, 0x3

    goto :goto_b

    :cond_f
    move v3, v1

    .line 1009
    goto/16 :goto_5

    .line 1011
    :cond_10
    if-eq v0, v8, :cond_2

    .line 1014
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-nez v0, :cond_11

    .line 1018
    :goto_c
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 1019
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0, v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    move v0, v3

    .line 1083
    :goto_d
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v3

    if-nez v3, :cond_19

    move v3, v2

    :goto_e
    invoke-direct {p0, v1, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    goto/16 :goto_0

    .line 1015
    :cond_11
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v0, v2, v6}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->separator(SLmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_c

    .line 1022
    :cond_12
    if-eq v0, v7, :cond_3

    .line 1025
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-nez v0, :cond_13

    .line 1029
    :goto_f
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 1030
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    move v0, v3

    .line 1031
    goto :goto_d

    .line 1026
    :cond_13
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v0, v1, v6}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->separator(SLmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_f

    :cond_14
    const-string/jumbo v0, "MSG_CLOSE_PAREN_REQUIRED_IN_CHILDREN"

    .line 1035
    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    .line 1034
    invoke-virtual {p0, v0, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 1039
    :cond_15
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v0, v6}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->endGroup(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_7

    .line 1050
    :cond_16
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const-string/jumbo v4, ")?"

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 1052
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v3, :cond_4

    .line 1054
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v6}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->occurrence(SLmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_8

    .line 1058
    :cond_17
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const-string/jumbo v4, ")+"

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 1060
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v3, :cond_4

    .line 1062
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v6}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->occurrence(SLmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_8

    .line 1066
    :cond_18
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const-string/jumbo v4, ")*"

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 1068
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v3, :cond_4

    .line 1070
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v6}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->occurrence(SLmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_8

    :cond_19
    move v3, v1

    .line 1083
    goto :goto_e
.end method

.method private final scanConditionalSect(I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x5b

    const/16 v8, 0x5d

    const/4 v1, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 1782
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    .line 1783
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 1785
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v3, "INCLUDE"

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1806
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v3, "IGNORE"

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    .line 1896
    invoke-virtual {p0, v0, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1899
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 1783
    goto :goto_0

    .line 1786
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 1787
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    if-ne p1, v0, :cond_4

    .line 1794
    :cond_2
    :goto_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0, v9}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1798
    :goto_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_6

    .line 1802
    :goto_5
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    .line 1804
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    goto :goto_1

    :cond_3
    move v0, v2

    .line 1786
    goto :goto_2

    .line 1787
    :cond_4
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fValidation:Z

    if-eqz v0, :cond_2

    .line 1788
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "INVALID_PE_IN_CONDITIONAL"

    .line 1790
    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->name:Ljava/lang/String;

    aput-object v6, v5, v2

    .line 1788
    invoke-virtual {v0, v3, v4, v5, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_3

    :cond_5
    const-string/jumbo v0, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    .line 1795
    invoke-virtual {p0, v0, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 1799
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, v2, v7}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startConditional(SLmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_5

    .line 1807
    :cond_7
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_6
    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 1808
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    if-ne p1, v0, :cond_b

    .line 1815
    :cond_8
    :goto_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_c

    .line 1819
    :goto_8
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0, v9}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1822
    :goto_9
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    .line 1823
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    .line 1824
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v1, :cond_e

    .line 1828
    :cond_9
    :goto_a
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v3, 0x3c

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1849
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_13

    .line 1884
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v1

    .line 1885
    iget v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    if-eqz v3, :cond_1a

    .line 1889
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v3, :cond_9

    .line 1890
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v1, v1

    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_a

    :cond_a
    move v0, v2

    .line 1807
    goto :goto_6

    .line 1808
    :cond_b
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fValidation:Z

    if-eqz v0, :cond_8

    .line 1809
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "INVALID_PE_IN_CONDITIONAL"

    .line 1811
    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->name:Ljava/lang/String;

    aput-object v6, v5, v2

    .line 1809
    invoke-virtual {v0, v3, v4, v5, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_7

    .line 1816
    :cond_c
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, v1, v7}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startConditional(SLmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_8

    :cond_d
    const-string/jumbo v0, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    .line 1820
    invoke-virtual {p0, v0, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    .line 1825
    :cond_e
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    goto :goto_a

    .line 1829
    :cond_f
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v1, :cond_10

    .line 1836
    :goto_b
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v3, 0x21

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1837
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v9}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_11

    .line 1843
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v1, :cond_9

    .line 1844
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const-string/jumbo v3, "!"

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_a

    .line 1830
    :cond_10
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v3, 0x3c

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_b

    .line 1838
    :cond_11
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v1, :cond_12

    .line 1841
    :goto_c
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    goto/16 :goto_a

    .line 1839
    :cond_12
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const-string/jumbo v3, "!["

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_c

    .line 1850
    :cond_13
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v1, :cond_15

    .line 1856
    :goto_d
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1857
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v1, :cond_16

    .line 1860
    :cond_14
    :goto_e
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1862
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v1, :cond_14

    .line 1863
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_e

    .line 1851
    :cond_15
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_d

    .line 1858
    :cond_16
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_e

    .line 1866
    :cond_17
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v3, 0x3e

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1867
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    if-eq v1, v0, :cond_18

    .line 1877
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v1, :cond_9

    .line 1878
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v3, 0x3e

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_a

    .line 1868
    :cond_18
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1870
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_19

    .line 1876
    :goto_f
    return-void

    .line 1871
    :cond_19
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v1, v1, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    .line 1872
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v3, v3, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    add-int/lit8 v3, v3, -0x2

    .line 1871
    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 1873
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral:Lmf/org/apache/xerces/xni/XMLString;

    invoke-interface {v0, v1, v7}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->ignoredCharacters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1874
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, v7}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endConditional(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_f

    :cond_1a
    const-string/jumbo v0, "IgnoreSectUnterminated"

    .line 1886
    invoke-virtual {p0, v0, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1887
    return-void
.end method

.method private final scanEntityDecl()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x3a

    const/16 v4, 0x25

    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1394
    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    .line 1395
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1417
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_0
    const-string/jumbo v0, "MSG_SPACE_REQUIRED_BEFORE_ENTITY_NAME_IN_ENTITYDECL"

    .line 1419
    invoke-virtual {p0, v0, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v7

    move v0, v7

    .line 1432
    :goto_0
    if-nez v1, :cond_10

    .line 1460
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fNamespaces:Z

    if-nez v1, :cond_15

    .line 1463
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v4

    .line 1465
    :goto_2
    if-eqz v4, :cond_16

    .line 1469
    :goto_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v1

    if-nez v1, :cond_17

    move v1, v6

    :goto_4
    invoke-direct {p0, v6, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1489
    :cond_2
    :goto_5
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    invoke-virtual {p0, v1, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanExternalID([Ljava/lang/String;Z)V

    .line 1490
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    aget-object v3, v1, v7

    .line 1491
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    aget-object v2, v1, v6

    .line 1495
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v1

    if-nez v1, :cond_1d

    move v1, v6

    :goto_6
    invoke-direct {p0, v6, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v1

    .line 1496
    if-eqz v0, :cond_1e

    :cond_3
    move-object v5, v8

    .line 1516
    :cond_4
    :goto_7
    if-eqz v3, :cond_22

    .line 1527
    :goto_8
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v1

    if-nez v1, :cond_23

    move v1, v6

    :goto_9
    invoke-direct {p0, v7, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 1530
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v9, 0x3e

    invoke-virtual {v1, v9}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1533
    :goto_a
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1536
    if-nez v0, :cond_25

    move-object v1, v4

    .line 1539
    :goto_b
    if-nez v3, :cond_26

    .line 1560
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_29

    .line 1565
    :cond_5
    :goto_c
    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    .line 1567
    return-void

    .line 1396
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1399
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v6

    :goto_d
    invoke-direct {p0, v6, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1403
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1408
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v0

    if-eq v0, v4, :cond_b

    move v1, v6

    move v0, v7

    .line 1416
    goto/16 :goto_0

    :cond_7
    move v1, v7

    move v0, v7

    .line 1398
    goto/16 :goto_0

    :cond_8
    move v0, v7

    .line 1399
    goto :goto_d

    :cond_9
    move v1, v7

    move v0, v6

    .line 1402
    goto/16 :goto_0

    :cond_a
    const-string/jumbo v0, "MSG_SPACE_REQUIRED_BEFORE_ENTITY_NAME_IN_PEDECL"

    .line 1404
    invoke-virtual {p0, v0, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v7

    move v0, v6

    .line 1407
    goto/16 :goto_0

    .line 1410
    :cond_b
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v6

    :goto_e
    invoke-direct {p0, v7, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move v1, v7

    move v0, v6

    .line 1412
    goto/16 :goto_0

    :cond_c
    move v0, v7

    .line 1410
    goto :goto_e

    .line 1417
    :cond_d
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1423
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v0

    if-nez v0, :cond_e

    move v1, v6

    move v0, v7

    .line 1430
    goto/16 :goto_0

    :cond_e
    const-string/jumbo v0, "MSG_SPACE_REQUIRED_BEFORE_PERCENT_IN_PEDECL"

    .line 1425
    invoke-virtual {p0, v0, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v7

    move v0, v7

    .line 1428
    goto/16 :goto_0

    :cond_f
    const-string/jumbo v1, "NameRequiredInPEReference"

    .line 1436
    invoke-virtual {p0, v1, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1445
    :goto_f
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    .line 1446
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1448
    if-eqz v0, :cond_12

    .line 1434
    :cond_10
    :goto_10
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v1

    .line 1435
    if-eqz v1, :cond_f

    .line 1438
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1443
    invoke-virtual {p0, v1, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->startPE(Ljava/lang/String;Z)V

    goto :goto_f

    :cond_11
    const-string/jumbo v2, "SemicolonRequiredInPEReference"

    .line 1440
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v7

    .line 1439
    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f

    .line 1449
    :cond_12
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_13

    move v0, v6

    :goto_11
    invoke-direct {p0, v6, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1453
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    goto :goto_10

    :cond_13
    move v0, v7

    .line 1449
    goto :goto_11

    :cond_14
    move v0, v6

    .line 1451
    goto/16 :goto_1

    .line 1461
    :cond_15
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanNCName()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_16
    const-string/jumbo v1, "MSG_ENTITY_NAME_REQUIRED_IN_ENTITYDECL"

    .line 1466
    invoke-virtual {p0, v1, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_17
    move v1, v7

    .line 1469
    goto/16 :goto_4

    .line 1470
    :cond_18
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fNamespaces:Z

    if-nez v1, :cond_1a

    :cond_19
    const-string/jumbo v1, "MSG_SPACE_REQUIRED_AFTER_ENTITY_NAME_IN_ENTITYDECL"

    .line 1484
    new-array v2, v6, [Ljava/lang/Object;

    aput-object v4, v2, v7

    .line 1483
    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 1470
    :cond_1a
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v1

    if-ne v1, v5, :cond_19

    .line 1471
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 1472
    new-instance v1, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v1, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>(Ljava/lang/String;)V

    .line 1473
    invoke-virtual {v1, v5}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1474
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v2

    .line 1475
    if-nez v2, :cond_1b

    :goto_12
    const-string/jumbo v2, "ColonNotLegalWithNS"

    .line 1477
    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1478
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v1

    if-nez v1, :cond_1c

    move v1, v6

    :goto_13
    invoke-direct {p0, v6, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "MSG_SPACE_REQUIRED_AFTER_ENTITY_NAME_IN_ENTITYDECL"

    .line 1480
    new-array v2, v6, [Ljava/lang/Object;

    aput-object v4, v2, v7

    .line 1479
    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 1476
    :cond_1b
    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_12

    :cond_1c
    move v1, v7

    .line 1478
    goto :goto_13

    :cond_1d
    move v1, v7

    .line 1495
    goto/16 :goto_6

    .line 1496
    :cond_1e
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v9, "NDATA"

    invoke-virtual {v5, v9}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1498
    if-eqz v1, :cond_1f

    .line 1504
    :goto_14
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v1

    if-nez v1, :cond_20

    move v1, v6

    :goto_15
    invoke-direct {p0, v6, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1508
    :goto_16
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v5

    .line 1509
    if-nez v5, :cond_4

    const-string/jumbo v1, "MSG_NOTATION_NAME_REQUIRED_FOR_UNPARSED_ENTITYDECL"

    .line 1511
    new-array v9, v6, [Ljava/lang/Object;

    aput-object v4, v9, v7

    .line 1510
    invoke-virtual {p0, v1, v9}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_1f
    const-string/jumbo v1, "MSG_SPACE_REQUIRED_BEFORE_NDATA_IN_UNPARSED_ENTITYDECL"

    .line 1500
    new-array v5, v6, [Ljava/lang/Object;

    aput-object v4, v5, v7

    .line 1499
    invoke-virtual {p0, v1, v5}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_14

    :cond_20
    move v1, v7

    .line 1504
    goto :goto_15

    :cond_21
    const-string/jumbo v1, "MSG_SPACE_REQUIRED_BEFORE_NOTATION_NAME_IN_UNPARSED_ENTITYDECL"

    .line 1506
    new-array v5, v6, [Ljava/lang/Object;

    aput-object v4, v5, v7

    .line 1505
    invoke-virtual {p0, v1, v5}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16

    .line 1517
    :cond_22
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral2:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {p0, v1, v9}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanEntityValue(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;)V

    .line 1520
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 1521
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 1522
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v10, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral:Lmf/org/apache/xerces/xni/XMLString;

    iget v10, v10, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget-object v11, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral:Lmf/org/apache/xerces/xni/XMLString;

    iget v11, v11, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v1, v9, v10, v11}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append([CII)V

    .line 1523
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral2:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v10, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral2:Lmf/org/apache/xerces/xni/XMLString;

    iget v10, v10, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget-object v11, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral2:Lmf/org/apache/xerces/xni/XMLString;

    iget v11, v11, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v1, v9, v10, v11}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append([CII)V

    goto/16 :goto_8

    :cond_23
    move v1, v7

    .line 1527
    goto/16 :goto_9

    :cond_24
    const-string/jumbo v1, "EntityDeclUnterminated"

    .line 1531
    new-array v9, v6, [Ljava/lang/Object;

    aput-object v4, v9, v7

    invoke-virtual {p0, v1, v9}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 1537
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "%"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_b

    .line 1540
    :cond_26
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->getBaseSystemId()Ljava/lang/String;

    move-result-object v4

    .line 1541
    if-nez v5, :cond_27

    .line 1545
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->addExternalEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    :goto_17
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_5

    .line 1549
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-static {v3, v4, v7}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v2, v3, v4, v7}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    if-nez v5, :cond_28

    .line 1555
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-interface {v0, v1, v2, v8}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->externalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_c

    .line 1542
    :cond_27
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLEntityManager;->addUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 1551
    :cond_28
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-interface {v0, v1, v2, v5, v8}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->unparsedEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_c

    .line 1562
    :cond_29
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-interface {v0, v1, v2, v3, v8}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->internalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_c
.end method

.method private final scanMixed(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x7c

    const/16 v6, 0x29

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 882
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const-string/jumbo v4, "#PCDATA"

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 884
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-nez v0, :cond_0

    .line 887
    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-object v0, v3

    .line 888
    :goto_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 889
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0, v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 891
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-nez v0, :cond_2

    .line 895
    :goto_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_4
    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 897
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v4

    .line 898
    if-eqz v4, :cond_4

    .line 902
    :goto_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 904
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-nez v0, :cond_5

    .line 907
    :goto_6
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_7
    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-object v0, v4

    goto :goto_2

    .line 885
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v0, v3}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->pcdata(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 887
    goto :goto_1

    .line 892
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v0, v2, v3}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->separator(SLmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_3

    :cond_3
    move v0, v2

    .line 895
    goto :goto_4

    :cond_4
    const-string/jumbo v0, "MSG_ELEMENT_TYPE_REQUIRED_IN_MIXED_CONTENT"

    .line 900
    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v2

    .line 899
    invoke-virtual {p0, v0, v5}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 905
    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v0, v4, v3}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->element(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_6

    :cond_6
    move v0, v2

    .line 907
    goto :goto_7

    .line 913
    :cond_7
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v5, ")*"

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 922
    if-nez v0, :cond_a

    .line 926
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "MSG_CLOSE_PAREN_REQUIRED_IN_CHILDREN"

    .line 935
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    .line 934
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 937
    :cond_8
    :goto_8
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 939
    return-void

    .line 914
    :cond_9
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const-string/jumbo v1, ")*"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 916
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_8

    .line 917
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v0, v3}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->endGroup(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 918
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    const/4 v1, 0x3

    invoke-interface {v0, v1, v3}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->occurrence(SLmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_8

    :cond_a
    const-string/jumbo v0, "MixedContentUnterminated"

    .line 924
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    .line 923
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 927
    :cond_b
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 929
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_8

    .line 930
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v0, v3}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->endGroup(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_8
.end method

.method private final scanNotationDecl()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x3a

    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1700
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    .line 1701
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0, v1, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1708
    :goto_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fNamespaces:Z

    if-nez v0, :cond_3

    .line 1711
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 1713
    :goto_2
    if-eqz v3, :cond_4

    .line 1719
    :goto_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_4
    invoke-direct {p0, v1, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1735
    :goto_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanExternalID([Ljava/lang/String;Z)V

    .line 1736
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    aget-object v4, v0, v2

    .line 1737
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    aget-object v5, v0, v1

    .line 1738
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->getBaseSystemId()Ljava/lang/String;

    move-result-object v6

    .line 1740
    if-eqz v4, :cond_a

    .line 1746
    :cond_0
    :goto_6
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_7
    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 1749
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v7, 0x3e

    invoke-virtual {v0, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1752
    :goto_8
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1755
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_d

    .line 1759
    :goto_9
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    .line 1761
    return-void

    :cond_1
    move v0, v2

    .line 1701
    goto :goto_0

    :cond_2
    const-string/jumbo v0, "MSG_SPACE_REQUIRED_BEFORE_NOTATION_NAME_IN_NOTATIONDECL"

    .line 1702
    invoke-virtual {p0, v0, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1709
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanNCName()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 1710
    goto :goto_2

    :cond_4
    const-string/jumbo v0, "MSG_NOTATION_NAME_REQUIRED_IN_NOTATIONDECL"

    .line 1714
    invoke-virtual {p0, v0, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    move v0, v2

    .line 1719
    goto :goto_4

    .line 1721
    :cond_6
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fNamespaces:Z

    if-nez v0, :cond_8

    :cond_7
    const-string/jumbo v0, "MSG_SPACE_REQUIRED_AFTER_NOTATION_NAME_IN_NOTATIONDECL"

    .line 1730
    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v2

    .line 1729
    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 1721
    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v0

    if-ne v0, v4, :cond_7

    .line 1722
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 1723
    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0, v3}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>(Ljava/lang/String;)V

    .line 1724
    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1725
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    const-string/jumbo v4, "ColonNotLegalWithNS"

    .line 1726
    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-virtual {p0, v4, v5}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1727
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_a
    invoke-direct {p0, v1, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    goto/16 :goto_5

    :cond_9
    move v0, v2

    goto :goto_a

    .line 1740
    :cond_a
    if-nez v5, :cond_0

    const-string/jumbo v0, "ExternalIDorPublicIDRequired"

    .line 1742
    new-array v7, v1, [Ljava/lang/Object;

    aput-object v3, v7, v2

    .line 1741
    invoke-virtual {p0, v0, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_b
    move v0, v2

    .line 1746
    goto/16 :goto_7

    :cond_c
    const-string/jumbo v0, "NotationDeclUnterminated"

    .line 1750
    new-array v7, v1, [Ljava/lang/Object;

    aput-object v3, v7, v2

    invoke-virtual {p0, v0, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 1756
    :cond_d
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-static {v4, v6, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v4, v6, v2}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-interface {v0, v3, v2, v8}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->notationDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_9
.end method

.method private skipInvalidEnumerationValue()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2120
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v0

    const/16 v1, 0x7c

    .line 2122
    if-ne v0, v1, :cond_1

    .line 2123
    :cond_0
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->ensureEnumerationSize(I)V

    .line 2124
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 2125
    return v0

    :cond_1
    const/16 v1, 0x29

    .line 2122
    if-eq v0, v1, :cond_0

    goto :goto_0
.end method

.method private skipSeparator(ZZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x25

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2021
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    .line 2022
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v1

    .line 2023
    if-nez p2, :cond_2

    .line 2024
    :cond_0
    if-nez p1, :cond_4

    :cond_1
    return v4

    .line 2023
    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2027
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v0

    .line 2028
    if-eqz v0, :cond_5

    .line 2031
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2035
    :goto_0
    invoke-virtual {p0, v0, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->startPE(Ljava/lang/String;Z)V

    .line 2036
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    .line 2037
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2038
    return v4

    .line 2024
    :cond_4
    if-nez v1, :cond_1

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    if-ne v0, v1, :cond_1

    return v3

    :cond_5
    const-string/jumbo v1, "NameRequiredInPEReference"

    .line 2029
    invoke-virtual {p0, v1, v6}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v1, "SemicolonRequiredInPEReference"

    .line 2033
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    .line 2032
    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public endEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 530
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/impl/XMLScanner;->endEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 534
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    if-eqz v0, :cond_1

    .line 538
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    const-string/jumbo v0, "%"

    .line 539
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "[dtd]"

    .line 572
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    return-void

    .line 540
    :cond_2
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->peekReportEntity()Z

    move-result v0

    .line 542
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->popPEStack()I

    move-result v2

    .line 545
    if-eqz v2, :cond_4

    .line 552
    :cond_3
    :goto_1
    iget v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    if-ne v2, v3, :cond_5

    .line 563
    :goto_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->isExternal()Z

    move-result v1

    if-nez v1, :cond_7

    .line 567
    :goto_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0

    .line 546
    :cond_4
    iget v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    if-ge v2, v3, :cond_3

    .line 547
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v5, "ILL_FORMED_PARAMETER_ENTITY_WHEN_USED_IN_DECL"

    .line 549
    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->name:Ljava/lang/String;

    aput-object v7, v6, v1

    .line 547
    const/4 v7, 0x2

    invoke-virtual {v3, v4, v5, v6, v7}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_1

    .line 554
    :cond_5
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fValidation:Z

    if-nez v0, :cond_6

    move v0, v1

    goto :goto_2

    .line 557
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "ImproperDeclarationNesting"

    .line 559
    new-array v4, v8, [Ljava/lang/Object;

    aput-object p1, v4, v1

    .line 557
    invoke-virtual {v0, v2, v3, v4, v8}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    move v0, v1

    goto :goto_2

    .line 564
    :cond_7
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fExtEntityDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fExtEntityDepth:I

    goto :goto_3

    .line 573
    :cond_8
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    if-nez v0, :cond_9

    .line 576
    :goto_4
    iput v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    .line 578
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->endExternalSubset()V

    .line 579
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_a

    .line 583
    :goto_5
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fExtEntityDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fExtEntityDepth:I

    goto :goto_0

    :cond_9
    const-string/jumbo v0, "IncludeSectUnterminated"

    .line 574
    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 580
    :cond_a
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endExternalSubset(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 581
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endDTD(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_5
.end method

.method public getDTDContentModelHandler()Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    return-object v0
.end method

.method public getDTDHandler()Lmf/org/apache/xerces/xni/XMLDTDHandler;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    return-object v0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 394
    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 395
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 396
    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    aget-object v0, v1, v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 399
    return-object v0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 412
    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 413
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 414
    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    aget-object v0, v1, v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 417
    return-object v0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    sget-object v0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    sget-object v0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 362
    invoke-super {p0}, Lmf/org/apache/xerces/impl/XMLScanner;->reset()V

    .line 363
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->init()V

    .line 364
    return-void
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 355
    invoke-super {p0, p1}, Lmf/org/apache/xerces/impl/XMLScanner;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 356
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->init()V

    .line 358
    return-void
.end method

.method protected final scanAttDefaultDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 1349
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v3}, Lmf/org/apache/xerces/xni/XMLString;->clear()V

    .line 1350
    invoke-virtual {p4}, Lmf/org/apache/xerces/xni/XMLString;->clear()V

    .line 1351
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v4, "#REQUIRED"

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1354
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v4, "#IMPLIED"

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1358
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v4, "#FIXED"

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v6, v0

    .line 1367
    :goto_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStandalone:Z

    if-eqz v0, :cond_5

    :goto_1
    move v4, v2

    :goto_2
    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object v3, p2

    move-object v5, p1

    .line 1368
    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanAttributeValue(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Ljava/lang/String;ZLjava/lang/String;)Z

    .line 1370
    :goto_3
    return-object v6

    :cond_0
    const-string/jumbo v6, "#REQUIRED"

    goto :goto_3

    :cond_1
    const-string/jumbo v6, "#IMPLIED"

    goto :goto_3

    :cond_2
    const-string/jumbo v3, "#FIXED"

    .line 1361
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_4
    invoke-direct {p0, v1, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v6, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_4

    :cond_4
    const-string/jumbo v0, "MSG_SPACE_REQUIRED_AFTER_FIXED_IN_DEFAULTDECL"

    const/4 v4, 0x2

    .line 1363
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    .line 1362
    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v6, v3

    goto :goto_0

    .line 1367
    :cond_5
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSeenExternalDTD:Z

    if-eqz v0, :cond_7

    :cond_6
    move v4, v1

    goto :goto_2

    :cond_7
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSeenPEReferences:Z

    if-nez v0, :cond_6

    goto :goto_1
.end method

.method protected final scanAttlistDecl()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    .line 1101
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1107
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v1

    .line 1108
    if-eqz v1, :cond_2

    .line 1114
    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_3

    .line 1119
    :goto_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_4
    const/4 v2, 0x1

    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1137
    :goto_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x3e

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1138
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v2

    .line 1139
    if-eqz v2, :cond_8

    .line 1144
    :goto_6
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_7
    const/4 v3, 0x1

    invoke-direct {p0, v3, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1149
    :goto_8
    invoke-direct {p0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanAttType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1152
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_9
    const/4 v4, 0x1

    invoke-direct {p0, v4, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1160
    :goto_a
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral2:Lmf/org/apache/xerces/xni/XMLString;

    move-object v0, p0

    .line 1158
    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanAttDefaultDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;)Ljava/lang/String;

    move-result-object v5

    .line 1166
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_d

    .line 1185
    :goto_b
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_c
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    goto :goto_5

    :cond_0
    const/4 v0, 0x0

    .line 1101
    goto :goto_0

    :cond_1
    const-string/jumbo v0, "MSG_SPACE_REQUIRED_BEFORE_ELEMENT_TYPE_IN_ATTLISTDECL"

    const/4 v1, 0x0

    .line 1102
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "MSG_ELEMENT_TYPE_REQUIRED_IN_ATTLISTDECL"

    const/4 v2, 0x0

    .line 1109
    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 1115
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startAttlist(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    .line 1119
    goto :goto_4

    .line 1121
    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x3e

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "MSG_SPACE_REQUIRED_BEFORE_ATTRIBUTE_NAME_IN_ATTDEF"

    const/4 v2, 0x1

    .line 1132
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 1131
    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 1124
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_7

    .line 1127
    :goto_d
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1128
    return-void

    .line 1125
    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endAttlist(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_d

    :cond_8
    const-string/jumbo v0, "AttNameRequiredInAttDef"

    const/4 v3, 0x1

    .line 1141
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 1140
    invoke-virtual {p0, v0, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_9
    const/4 v0, 0x0

    .line 1144
    goto/16 :goto_7

    :cond_a
    const-string/jumbo v0, "MSG_SPACE_REQUIRED_BEFORE_ATTTYPE_IN_ATTDEF"

    const/4 v3, 0x2

    .line 1146
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    .line 1145
    invoke-virtual {p0, v0, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_b
    const/4 v0, 0x0

    .line 1152
    goto/16 :goto_9

    :cond_c
    const-string/jumbo v0, "MSG_SPACE_REQUIRED_BEFORE_DEFAULTDECL_IN_ATTDEF"

    const/4 v4, 0x2

    .line 1154
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    .line 1153
    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_d
    const/4 v4, 0x0

    .line 1168
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    if-nez v0, :cond_e

    .line 1175
    :goto_e
    if-nez v5, :cond_f

    .line 1181
    :goto_f
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    .line 1182
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral2:Lmf/org/apache/xerces/xni/XMLString;

    const/4 v8, 0x0

    .line 1181
    invoke-interface/range {v0 .. v8}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_b

    .line 1169
    :cond_e
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    new-array v4, v0, [Ljava/lang/String;

    .line 1170
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1171
    iget v8, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    .line 1170
    invoke-static {v0, v6, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_e

    :cond_f
    const-string/jumbo v0, "#REQUIRED"

    .line 1175
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1177
    :cond_10
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v0 .. v8}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_b

    :cond_11
    const-string/jumbo v0, "#IMPLIED"

    .line 1176
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_f

    :cond_12
    const/4 v0, 0x0

    .line 1185
    goto/16 :goto_c

    .line 1189
    :cond_13
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_14

    .line 1192
    :goto_10
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    .line 1195
    return-void

    .line 1190
    :cond_14
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endAttlist(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_10
.end method

.method protected final scanComment()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 756
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    .line 757
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanComment(Lmf/org/apache/xerces/util/XMLStringBuffer;)V

    .line 758
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 761
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_0

    .line 764
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    .line 766
    return-void

    .line 762
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public scanDTDExternalSubset(Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 261
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V

    .line 262
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    if-eq v0, v3, :cond_1

    .line 279
    :cond_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanDecls(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 282
    if-nez p1, :cond_0

    .line 285
    return v3

    .line 263
    :cond_1
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSeenExternalDTD:Z

    .line 264
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanTextDecl()Z

    move-result v0

    .line 265
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 271
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->setScannerState(I)V

    .line 272
    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 273
    return v3

    .line 266
    :cond_2
    return v2

    .line 280
    :cond_3
    return v2
.end method

.method public scanDTDInternalSubset(ZZZ)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 313
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getEntityScanner()Lmf/org/apache/xerces/impl/XMLEntityScanner;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    .line 314
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V

    .line 315
    iput-boolean p2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStandalone:Z

    .line 316
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    if-eq v0, v3, :cond_1

    .line 327
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanDecls(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 336
    if-nez p1, :cond_0

    .line 339
    return v3

    .line 318
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_2

    :goto_1
    const/4 v0, 0x2

    .line 323
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->setScannerState(I)V

    goto :goto_0

    .line 319
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-interface {v0, v1, v4}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startDTD(Lmf/org/apache/xerces/xni/XMLLocator;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 320
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStartDTDCalled:Z

    goto :goto_1

    .line 329
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_5

    .line 333
    :cond_4
    :goto_2
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->setScannerState(I)V

    .line 334
    return v2

    .line 329
    :cond_5
    if-nez p3, :cond_4

    .line 330
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, v4}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endDTD(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_2
.end method

.method protected final scanDecls(Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x2d

    const/16 v5, 0x5d

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1916
    invoke-direct {p0, v3, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move v0, v1

    .line 1918
    :goto_0
    if-nez v0, :cond_1

    .line 1999
    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    if-nez v0, :cond_16

    return v3

    .line 1918
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 1920
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1961
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    if-gtz v0, :cond_10

    .line 1975
    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1980
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1997
    :cond_4
    :goto_1
    invoke-direct {p0, v3, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move v0, p1

    goto :goto_0

    .line 1921
    :cond_5
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1922
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1925
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x21

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1957
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    const-string/jumbo v0, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    .line 1958
    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1923
    :cond_6
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanPI()V

    goto :goto_1

    .line 1926
    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1934
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v2, "ELEMENT"

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1937
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v2, "ATTLIST"

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1940
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v2, "ENTITY"

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1943
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v2, "NOTATION"

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1946
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1951
    :cond_8
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    const-string/jumbo v0, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    .line 1952
    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1927
    :cond_9
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1931
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanComment()V

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v0, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    .line 1928
    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1935
    :cond_b
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanElementDecl()V

    goto/16 :goto_1

    .line 1938
    :cond_c
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanAttlistDecl()V

    goto/16 :goto_1

    .line 1941
    :cond_d
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanEntityDecl()V

    goto/16 :goto_1

    .line 1944
    :cond_e
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanNotationDecl()V

    goto/16 :goto_1

    .line 1947
    :cond_f
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1948
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanConditionalSect(I)V

    goto/16 :goto_1

    .line 1961
    :cond_10
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1963
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_11
    const-string/jumbo v0, "IncludeSectUnterminated"

    .line 1965
    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1968
    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_13

    .line 1972
    :goto_3
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    .line 1973
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    goto/16 :goto_1

    .line 1964
    :cond_12
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x3e

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_2

    .line 1969
    :cond_13
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, v4}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endConditional(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_3

    .line 1976
    :cond_14
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 1978
    return v3

    :cond_15
    const-string/jumbo v0, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    .line 1984
    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1989
    :goto_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 1991
    invoke-direct {p0, v3, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 1994
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v0

    const/16 v2, 0x3c

    .line 1995
    if-eq v0, v2, :cond_4

    if-eq v0, v5, :cond_4

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_4

    .line 1999
    :cond_16
    return v1
.end method

.method protected final scanElementDecl()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x28

    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 781
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    .line 782
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0, v1, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 788
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v4

    .line 789
    if-eqz v4, :cond_3

    .line 795
    :goto_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    invoke-direct {p0, v1, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 801
    :goto_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-nez v0, :cond_6

    .line 805
    :goto_5
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    .line 806
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v3, "EMPTY"

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 813
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v3, "ANY"

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 821
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 825
    :goto_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-nez v0, :cond_a

    .line 828
    :goto_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 829
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 830
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 831
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_8
    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 834
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v3, "#PCDATA"

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 838
    invoke-direct {p0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanChildren(Ljava/lang/String;)V

    .line 840
    :goto_9
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 844
    :cond_0
    :goto_a
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-nez v3, :cond_d

    .line 848
    :goto_b
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    .line 849
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v3

    if-nez v3, :cond_e

    move v3, v1

    :goto_c
    invoke-direct {p0, v2, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 851
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v5, 0x3e

    invoke-virtual {v3, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 854
    :goto_d
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    .line 855
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 858
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v1, :cond_10

    .line 862
    :goto_e
    return-void

    :cond_1
    move v0, v2

    .line 782
    goto/16 :goto_0

    :cond_2
    const-string/jumbo v0, "MSG_SPACE_REQUIRED_BEFORE_ELEMENT_TYPE_IN_ELEMENTDECL"

    .line 783
    invoke-virtual {p0, v0, v6}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v0, "MSG_ELEMENT_TYPE_REQUIRED_IN_ELEMENTDECL"

    .line 790
    invoke-virtual {p0, v0, v6}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_4
    move v0, v2

    .line 795
    goto/16 :goto_3

    :cond_5
    const-string/jumbo v0, "MSG_SPACE_REQUIRED_BEFORE_CONTENTSPEC_IN_ELEMENTDECL"

    .line 797
    new-array v3, v1, [Ljava/lang/Object;

    aput-object v4, v3, v2

    .line 796
    invoke-virtual {p0, v0, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 802
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v0, v4, v6}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->startContentModel(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_5

    :cond_7
    const-string/jumbo v0, "EMPTY"

    .line 809
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v3, :cond_0

    .line 810
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v3, v6}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->empty(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_a

    :cond_8
    const-string/jumbo v0, "ANY"

    .line 816
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v3, :cond_0

    .line 817
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v3, v6}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->any(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_a

    :cond_9
    const-string/jumbo v0, "MSG_OPEN_PAREN_OR_ELEMENT_TYPE_REQUIRED_IN_CHILDREN"

    .line 823
    new-array v3, v1, [Ljava/lang/Object;

    aput-object v4, v3, v2

    .line 822
    invoke-virtual {p0, v0, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 826
    :cond_a
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v0, v6}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->startGroup(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_7

    :cond_b
    move v0, v2

    .line 831
    goto/16 :goto_8

    .line 835
    :cond_c
    invoke-direct {p0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanMixed(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 845
    :cond_d
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v3, v6}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->endContentModel(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_b

    :cond_e
    move v3, v2

    .line 849
    goto :goto_c

    :cond_f
    const-string/jumbo v3, "ElementDeclUnterminated"

    .line 852
    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v2

    invoke-virtual {p0, v3, v5}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    .line 859
    :cond_10
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v1, v4, v0, v6}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->elementDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_e
.end method

.method protected final scanEntityValue(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x25

    const/16 v9, 0x3b

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1584
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v2

    const/16 v0, 0x27

    .line 1585
    if-ne v2, v0, :cond_1

    .line 1589
    :cond_0
    :goto_0
    iget v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityDepth:I

    .line 1591
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    .line 1592
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    .line 1593
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v4, v2, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanLiteral(ILmf/org/apache/xerces/xni/XMLString;)I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 1680
    :goto_1
    invoke-virtual {p1, v1}, Lmf/org/apache/xerces/xni/XMLString;->setValues(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 1681
    invoke-virtual {p2, v0}, Lmf/org/apache/xerces/xni/XMLString;->setValues(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 1682
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1685
    :goto_2
    return-void

    :cond_1
    const/16 v0, 0x22

    .line 1585
    if-eq v2, v0, :cond_0

    const-string/jumbo v0, "OpenQuoteMissingInDecl"

    .line 1586
    invoke-virtual {p0, v0, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1594
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 1595
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 1597
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 1598
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 1599
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1626
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0, v10}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1656
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v0

    .line 1657
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1660
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->isInvalidLiteral(I)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1668
    if-eq v0, v2, :cond_10

    .line 1669
    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v4, v0

    invoke-virtual {v1, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1670
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1671
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 1674
    :cond_5
    :goto_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v0, v2, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanLiteral(ILmf/org/apache/xerces/xni/XMLString;)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 1675
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 1676
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 1677
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    .line 1678
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    goto/16 :goto_1

    .line 1600
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1605
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1606
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1607
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v0

    .line 1608
    if-eqz v0, :cond_8

    .line 1613
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 1614
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 1616
    :goto_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v9}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1621
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0, v9}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1622
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0, v9}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_3

    .line 1601
    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const-string/jumbo v1, "&#"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 1602
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanCharReferenceValue(Lmf/org/apache/xerces/util/XMLStringBuffer;Lmf/org/apache/xerces/util/XMLStringBuffer;)I

    goto :goto_3

    :cond_8
    const-string/jumbo v1, "NameRequiredInReference"

    .line 1609
    invoke-virtual {p0, v1, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    const-string/jumbo v1, "SemicolonRequiredInReference"

    .line 1618
    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v6

    .line 1617
    invoke-virtual {p0, v1, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_a
    const-string/jumbo v1, "NameRequiredInPEReference"

    .line 1631
    invoke-virtual {p0, v1, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1646
    :goto_5
    invoke-virtual {p0, v0, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->startPE(Ljava/lang/String;Z)V

    .line 1650
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    .line 1651
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0, v10}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1628
    :cond_b
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0, v10}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1629
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v0

    .line 1630
    if-eqz v0, :cond_a

    .line 1634
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v9}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1639
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v1

    if-nez v1, :cond_d

    .line 1643
    :goto_6
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 1644
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v9}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_5

    :cond_c
    const-string/jumbo v1, "SemicolonRequiredInPEReference"

    .line 1636
    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v6

    .line 1635
    invoke-virtual {p0, v1, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_d
    const-string/jumbo v1, "PEReferenceWithinMarkup"

    .line 1641
    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v6

    .line 1640
    invoke-virtual {p0, v1, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 1658
    :cond_e
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanSurrogates(Lmf/org/apache/xerces/util/XMLStringBuffer;)Z

    goto/16 :goto_3

    :cond_f
    const-string/jumbo v1, "InvalidCharInLiteral"

    .line 1662
    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    .line 1661
    invoke-virtual {p0, v1, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1663
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    goto/16 :goto_3

    .line 1668
    :cond_10
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityDepth:I

    if-ne v3, v1, :cond_4

    goto/16 :goto_3

    :cond_11
    const-string/jumbo v0, "CloseQuoteMissingInDecl"

    .line 1683
    invoke-virtual {p0, v0, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2
.end method

.method protected final scanPIData(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 735
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/impl/XMLScanner;->scanPIData(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;)V

    .line 736
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 739
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_0

    .line 743
    :goto_0
    return-void

    .line 740
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2, v1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method protected final scanTextDecl()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 670
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v3, "<?xml"

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 718
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput-boolean v1, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->mayReadChunks:Z

    .line 720
    return v0

    .line 671
    :cond_0
    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 674
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v2

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->isValidNameChar(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 700
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanXMLDeclOrTextDecl(Z[Ljava/lang/String;)V

    .line 702
    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 704
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    aget-object v0, v2, v0

    .line 705
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 707
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->setXMLVersion(Ljava/lang/String;)V

    .line 708
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isEncodingExternallySpecified()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 713
    :goto_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v3, :cond_6

    move v0, v1

    goto :goto_0

    .line 675
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 676
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const-string/jumbo v3, "xml"

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 677
    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fNamespaces:Z

    if-nez v2, :cond_3

    .line 683
    :goto_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v2

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->isValidNameChar(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 684
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_2

    .line 679
    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 678
    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v2

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->isValidNCName(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 688
    :cond_4
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v3, v3, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    .line 689
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v4, v4, Lmf/org/apache/xerces/util/XMLStringBuffer;->offset:I

    .line 690
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v5, v5, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    .line 688
    invoke-virtual {v2, v3, v4, v5}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v2

    .line 691
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanPIData(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;)V

    goto/16 :goto_0

    .line 709
    :cond_5
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->setEncoding(Ljava/lang/String;)V

    goto :goto_1

    .line 714
    :cond_6
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v3, v0, v2, v4}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    move v0, v1

    goto/16 :goto_0
.end method

.method protected final scanningInternalSubset()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 626
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fExtEntityDepth:I

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    .line 454
    return-void
.end method

.method public setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    .line 431
    return-void
.end method

.method public setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 233
    if-eqz p1, :cond_0

    .line 241
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V

    .line 242
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->startDTDEntity(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    .line 243
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_1

    .line 239
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, v1, v1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startDTD(Lmf/org/apache/xerces/xni/XMLLocator;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 237
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endDTD(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method protected final setScannerState(I)V
    .locals 0

    .prologue
    .line 597
    iput p1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    .line 604
    return-void
.end method

.method public startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 489
    invoke-super {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/XMLScanner;->startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    const-string/jumbo v0, "[dtd]"

    .line 491
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 492
    if-nez v0, :cond_2

    .line 503
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x25

    if-eq v1, v2, :cond_6

    .line 511
    :cond_0
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v1, :cond_7

    .line 515
    :cond_1
    :goto_1
    return-void

    .line 494
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v1, :cond_4

    .line 497
    :cond_3
    :goto_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v1, :cond_5

    .line 500
    :goto_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->startExternalSubset()V

    .line 501
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fExtEntityDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fExtEntityDepth:I

    goto :goto_0

    .line 494
    :cond_4
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStartDTDCalled:Z

    if-nez v1, :cond_3

    .line 495
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startDTD(Lmf/org/apache/xerces/xni/XMLLocator;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_2

    .line 498
    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v1, p2, v3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startExternalSubset(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_3

    .line 504
    :cond_6
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    invoke-direct {p0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->pushPEStack(IZ)V

    .line 505
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->isExternal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fExtEntityDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fExtEntityDepth:I

    goto :goto_0

    .line 511
    :cond_7
    if-nez v0, :cond_1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_1
.end method

.method protected startPE(Ljava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 637
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    .line 638
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "%"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 639
    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSeenPEReferences:Z

    if-eqz v2, :cond_2

    .line 643
    :goto_0
    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fValidation:Z

    if-nez v2, :cond_3

    .line 647
    :cond_0
    :goto_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, p2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->startEntity(Ljava/lang/String;Z)V

    .line 651
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    if-ne v0, v1, :cond_4

    .line 654
    :cond_1
    :goto_2
    return-void

    .line 640
    :cond_2
    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSeenPEReferences:Z

    .line 641
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->notifyHasPEReferences()V

    goto :goto_0

    .line 643
    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->isDeclaredEntity(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 644
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "EntityNotDeclared"

    .line 645
    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    .line 644
    invoke-virtual {v2, v3, v4, v5, v7}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_1

    .line 651
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 652
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanTextDecl()Z

    goto :goto_2
.end method
