.class public Lmf/org/apache/xerces/impl/XMLEntityManager;
.super Ljava/lang/Object;
.source "XMLEntityManager.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLComponent;
.implements Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;,
        Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;,
        Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;,
        Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;,
        Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;,
        Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;,
        Lmf/org/apache/xerces/impl/XMLEntityManager$InternalEntity;,
        Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;,
        Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;
    }
.end annotation


# static fields
.field protected static final ALLOW_JAVA_ENCODINGS:Ljava/lang/String; = "http://apache.org/xml/features/allow-java-encodings"

.field protected static final BUFFER_SIZE:Ljava/lang/String; = "http://apache.org/xml/properties/input-buffer-size"

.field private static final DEBUG_BUFFER:Z = false

.field private static final DEBUG_ENCODINGS:Z = false

.field private static final DEBUG_ENTITIES:Z = false

.field private static final DEBUG_RESOLVER:Z = false

.field public static final DEFAULT_BUFFER_SIZE:I = 0x800

.field public static final DEFAULT_INTERNAL_BUFFER_SIZE:I = 0x200

.field public static final DEFAULT_XMLDECL_BUFFER_SIZE:I = 0x40

.field private static final DTDEntity:Ljava/lang/String;

.field protected static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final EXTERNAL_GENERAL_ENTITIES:Ljava/lang/String; = "http://xml.org/sax/features/external-general-entities"

.field protected static final EXTERNAL_PARAMETER_ENTITIES:Ljava/lang/String; = "http://xml.org/sax/features/external-parameter-entities"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field private static GET_USER_DIR_SYSTEM_PROPERTY:Ljava/security/PrivilegedAction; = null

.field protected static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field protected static final STANDARD_URI_CONFORMANT:Ljava/lang/String; = "http://apache.org/xml/features/standard-uri-conformant"

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field protected static final WARN_ON_DUPLICATE_ENTITYDEF:Ljava/lang/String; = "http://apache.org/xml/features/warn-on-duplicate-entitydef"

.field private static final XMLEntity:Ljava/lang/String;

.field private static final gAfterEscaping1:[C

.field private static final gAfterEscaping2:[C

.field private static final gHexChs:[C

.field private static final gNeedEscaping:[Z

.field private static gUserDir:Ljava/lang/String;

.field private static gUserDirURI:Lmf/org/apache/xerces/util/URI;


# instance fields
.field protected fAllowJavaEncodings:Z

.field protected fBufferSize:I

.field private final fCharacterBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;

.field protected fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

.field protected fDeclaredEntities:Ljava/util/Hashtable;

.field protected final fEntities:Ljava/util/Hashtable;

.field private final fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

.field protected fEntityExpansionCount:I

.field protected fEntityExpansionLimit:I

.field protected fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

.field protected fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

.field protected fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

.field protected final fEntityStack:Ljava/util/Stack;

.field protected fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field protected fExternalGeneralEntities:Z

.field protected fExternalParameterEntities:Z

.field protected fHasPEReferences:Z

.field protected fInExternalSubset:Z

.field private final fLargeByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

.field protected fReaderStack:Ljava/util/Stack;

.field private final fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

.field protected fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

.field private final fSmallByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

.field protected fStandalone:Z

.field protected fStrictURI:Z

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field private fTempByteBuffer:[B

.field protected fValidation:Z

.field protected fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

.field protected fWarnDuplicateEntityDef:Z

.field protected fXML10EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

.field protected fXML11EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 166
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "http://xml.org/sax/features/validation"

    .line 167
    aput-object v2, v1, v0

    const-string/jumbo v2, "http://xml.org/sax/features/external-general-entities"

    .line 168
    aput-object v2, v1, v7

    const-string/jumbo v2, "http://xml.org/sax/features/external-parameter-entities"

    .line 169
    aput-object v2, v1, v8

    const/4 v2, 0x3

    const-string/jumbo v3, "http://apache.org/xml/features/allow-java-encodings"

    .line 170
    aput-object v3, v1, v2

    const-string/jumbo v2, "http://apache.org/xml/features/warn-on-duplicate-entitydef"

    .line 171
    aput-object v2, v1, v5

    const/4 v2, 0x5

    const-string/jumbo v3, "http://apache.org/xml/features/standard-uri-conformant"

    .line 172
    aput-object v3, v1, v2

    .line 166
    sput-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    .line 176
    new-array v1, v6, [Ljava/lang/Boolean;

    .line 178
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v1, v7

    .line 179
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v1, v8

    const/4 v2, 0x3

    .line 180
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    .line 181
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v1, v5

    const/4 v2, 0x5

    .line 182
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    .line 176
    sput-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    .line 186
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/symbol-table"

    .line 187
    aput-object v2, v1, v0

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/error-reporter"

    .line 188
    aput-object v2, v1, v7

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/entity-resolver"

    .line 189
    aput-object v2, v1, v8

    const/4 v2, 0x3

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/validation-manager"

    .line 190
    aput-object v3, v1, v2

    const-string/jumbo v2, "http://apache.org/xml/properties/input-buffer-size"

    .line 191
    aput-object v2, v1, v5

    const/4 v2, 0x5

    const-string/jumbo v3, "http://apache.org/xml/properties/security-manager"

    .line 192
    aput-object v3, v1, v2

    .line 186
    sput-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    .line 196
    new-array v1, v6, [Ljava/lang/Object;

    .line 201
    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x800

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v5

    .line 196
    sput-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    const-string/jumbo v1, "[xml]"

    .line 205
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->XMLEntity:Ljava/lang/String;

    const-string/jumbo v1, "[dtd]"

    .line 206
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->DTDEntity:Ljava/lang/String;

    const/16 v1, 0x80

    .line 1553
    new-array v1, v1, [Z

    sput-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->gNeedEscaping:[Z

    const/16 v1, 0x80

    .line 1555
    new-array v1, v1, [C

    sput-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->gAfterEscaping1:[C

    const/16 v1, 0x80

    .line 1557
    new-array v1, v1, [C

    sput-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->gAfterEscaping2:[C

    const/16 v1, 0x10

    .line 1558
    new-array v1, v1, [C

    const/16 v2, 0x30

    aput-char v2, v1, v0

    const/16 v2, 0x31

    aput-char v2, v1, v7

    const/16 v2, 0x32

    aput-char v2, v1, v8

    const/4 v2, 0x3

    const/16 v3, 0x33

    aput-char v3, v1, v2

    const/16 v2, 0x34

    aput-char v2, v1, v5

    const/4 v2, 0x5

    const/16 v3, 0x35

    aput-char v3, v1, v2

    const/16 v2, 0x36

    aput-char v2, v1, v6

    const/4 v2, 0x7

    const/16 v3, 0x37

    aput-char v3, v1, v2

    const/16 v2, 0x8

    .line 1559
    const/16 v3, 0x38

    aput-char v3, v1, v2

    const/16 v2, 0x9

    const/16 v3, 0x39

    aput-char v3, v1, v2

    const/16 v2, 0xa

    const/16 v3, 0x41

    aput-char v3, v1, v2

    const/16 v2, 0xb

    const/16 v3, 0x42

    aput-char v3, v1, v2

    const/16 v2, 0xc

    const/16 v3, 0x43

    aput-char v3, v1, v2

    const/16 v2, 0xd

    const/16 v3, 0x44

    aput-char v3, v1, v2

    const/16 v2, 0xe

    const/16 v3, 0x45

    aput-char v3, v1, v2

    const/16 v2, 0xf

    const/16 v3, 0x46

    aput-char v3, v1, v2

    .line 1558
    sput-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->gHexChs:[C

    move v1, v0

    :goto_0
    const/16 v2, 0x1f

    .line 1562
    if-gt v1, v2, :cond_0

    .line 1563
    sget-object v2, Lmf/org/apache/xerces/impl/XMLEntityManager;->gNeedEscaping:[Z

    aput-boolean v7, v2, v1

    .line 1564
    sget-object v2, Lmf/org/apache/xerces/impl/XMLEntityManager;->gAfterEscaping1:[C

    sget-object v3, Lmf/org/apache/xerces/impl/XMLEntityManager;->gHexChs:[C

    shr-int/lit8 v4, v1, 0x4

    aget-char v3, v3, v4

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 1565
    sget-object v2, Lmf/org/apache/xerces/impl/XMLEntityManager;->gAfterEscaping2:[C

    sget-object v3, Lmf/org/apache/xerces/impl/XMLEntityManager;->gHexChs:[C

    and-int/lit8 v4, v1, 0xf

    aget-char v3, v3, v4

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 1562
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1567
    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->gNeedEscaping:[Z

    const/16 v2, 0x7f

    aput-boolean v7, v1, v2

    .line 1568
    sget-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->gAfterEscaping1:[C

    const/16 v2, 0x7f

    const/16 v3, 0x37

    aput-char v3, v1, v2

    .line 1569
    sget-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->gAfterEscaping2:[C

    const/16 v2, 0x7f

    const/16 v3, 0x46

    aput-char v3, v1, v2

    const/16 v1, 0xf

    .line 1570
    new-array v1, v1, [C

    const/16 v2, 0x20

    aput-char v2, v1, v0

    const/16 v2, 0x3c

    aput-char v2, v1, v7

    const/16 v2, 0x3e

    aput-char v2, v1, v8

    const/4 v2, 0x3

    const/16 v3, 0x23

    aput-char v3, v1, v2

    const/16 v2, 0x25

    aput-char v2, v1, v5

    const/4 v2, 0x5

    const/16 v3, 0x22

    aput-char v3, v1, v2

    const/16 v2, 0x7b

    aput-char v2, v1, v6

    const/4 v2, 0x7

    const/16 v3, 0x7d

    aput-char v3, v1, v2

    const/16 v2, 0x8

    .line 1571
    const/16 v3, 0x7c

    aput-char v3, v1, v2

    const/16 v2, 0x9

    const/16 v3, 0x5c

    aput-char v3, v1, v2

    const/16 v2, 0xa

    const/16 v3, 0x5e

    aput-char v3, v1, v2

    const/16 v2, 0xb

    const/16 v3, 0x7e

    aput-char v3, v1, v2

    const/16 v2, 0xc

    const/16 v3, 0x5b

    aput-char v3, v1, v2

    const/16 v2, 0xd

    const/16 v3, 0x5d

    aput-char v3, v1, v2

    const/16 v2, 0xe

    const/16 v3, 0x60

    aput-char v3, v1, v2

    .line 1572
    array-length v2, v1

    .line 1574
    :goto_1
    if-ge v0, v2, :cond_1

    .line 1575
    aget-char v3, v1, v0

    .line 1576
    sget-object v4, Lmf/org/apache/xerces/impl/XMLEntityManager;->gNeedEscaping:[Z

    aput-boolean v7, v4, v3

    .line 1577
    sget-object v4, Lmf/org/apache/xerces/impl/XMLEntityManager;->gAfterEscaping1:[C

    sget-object v5, Lmf/org/apache/xerces/impl/XMLEntityManager;->gHexChs:[C

    shr-int/lit8 v6, v3, 0x4

    aget-char v5, v5, v6

    int-to-char v5, v5

    aput-char v5, v4, v3

    .line 1578
    sget-object v4, Lmf/org/apache/xerces/impl/XMLEntityManager;->gAfterEscaping2:[C

    sget-object v5, Lmf/org/apache/xerces/impl/XMLEntityManager;->gHexChs:[C

    and-int/lit8 v6, v3, 0xf

    aget-char v5, v5, v6

    int-to-char v5, v5

    aput-char v5, v4, v3

    .line 1574
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1582
    :cond_1
    new-instance v0, Lmf/org/apache/xerces/impl/XMLEntityManager$1;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$1;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->GET_USER_DIR_SYSTEM_PROPERTY:Ljava/security/PrivilegedAction;

    .line 1586
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 385
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;-><init>(Lmf/org/apache/xerces/impl/XMLEntityManager;)V

    .line 386
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/impl/XMLEntityManager;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fExternalGeneralEntities:Z

    .line 248
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fExternalParameterEntities:Z

    const/16 v1, 0x800

    .line 300
    iput v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    .line 304
    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    .line 319
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fInExternalSubset:Z

    .line 339
    iput v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityExpansionLimit:I

    .line 341
    iput v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityExpansionCount:I

    .line 346
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    .line 349
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    .line 362
    new-instance v1, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-direct {v1}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    .line 365
    new-instance v1, Lmf/org/apache/xerces/util/AugmentationsImpl;

    invoke-direct {v1}, Lmf/org/apache/xerces/util/AugmentationsImpl;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    .line 368
    new-instance v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSmallByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    .line 371
    new-instance v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    shl-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fLargeByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    .line 374
    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    .line 377
    new-instance v1, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    const/16 v3, 0x200

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;-><init>(II)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCharacterBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;

    .line 1226
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fReaderStack:Ljava/util/Stack;

    .line 399
    if-nez p1, :cond_0

    :goto_0
    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fDeclaredEntities:Ljava/util/Hashtable;

    .line 402
    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setScannerVersion(S)V

    .line 403
    return-void

    .line 400
    :cond_0
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getDeclaredEntities()Ljava/util/Hashtable;

    move-result-object v0

    goto :goto_0
.end method

.method public static absolutizeAgainstUserDir(Lmf/org/apache/xerces/util/URI;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 1702
    invoke-static {}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getUserDir()Lmf/org/apache/xerces/util/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/util/URI;->absolutize(Lmf/org/apache/xerces/util/URI;)V

    .line 1703
    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/impl/XMLEntityManager;)Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCharacterBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;

    return-object v0
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/impl/XMLEntityManager;[B)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    return-void
.end method

.method static synthetic access$2(Lmf/org/apache/xerces/impl/XMLEntityManager;)[B
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    return-object v0
.end method

.method private createASCIIReader(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 4

    .prologue
    .line 2231
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    if-eqz v0, :cond_0

    .line 2234
    :goto_0
    new-instance v0, Lmf/org/apache/xerces/impl/io/ASCIIReader;

    .line 2235
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    .line 2236
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v2

    .line 2237
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 2234
    invoke-direct {v0, p1, v1, v2, v3}, Lmf/org/apache/xerces/impl/io/ASCIIReader;-><init>(Ljava/io/InputStream;[BLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-object v0

    .line 2232
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSmallByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->getBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    goto :goto_0
.end method

.method private createLatin1Reader(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 2

    .prologue
    .line 2245
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    if-eqz v0, :cond_0

    .line 2248
    :goto_0
    new-instance v0, Lmf/org/apache/xerces/impl/io/Latin1Reader;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    invoke-direct {v0, p1, v1}, Lmf/org/apache/xerces/impl/io/Latin1Reader;-><init>(Ljava/io/InputStream;[B)V

    return-object v0

    .line 2246
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSmallByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->getBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    goto :goto_0
.end method

.method public static createOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 1868
    invoke-static {p0, v0, v5}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1869
    new-instance v1, Ljava/net/URL;

    if-nez v0, :cond_0

    :goto_0
    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1871
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 1872
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "file"

    .line 1874
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1888
    :goto_1
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 1889
    invoke-virtual {v1, v4}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 1890
    invoke-virtual {v1, v5}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 1891
    invoke-virtual {v1, v4}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 1892
    instance-of v0, v1, Ljava/net/HttpURLConnection;

    if-nez v0, :cond_6

    .line 1898
    :goto_2
    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 1900
    :goto_3
    return-object v0

    :cond_0
    move-object p0, v0

    .line 1869
    goto :goto_0

    .line 1875
    :cond_1
    if-nez v2, :cond_4

    .line 1876
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getPathWithoutEscapes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1877
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1883
    :cond_3
    :goto_4
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    goto :goto_3

    .line 1875
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "localhost"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 1878
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 1879
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1880
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_4

    :cond_6
    move-object v0, v1

    .line 1895
    check-cast v0, Ljava/net/HttpURLConnection;

    const-string/jumbo v2, "PUT"

    .line 1896
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private createUTF16Reader(Ljava/io/InputStream;Z)Ljava/io/Reader;
    .locals 6

    .prologue
    .line 2211
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    if-eqz v0, :cond_0

    .line 2215
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    array-length v0, v0

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    if-eq v0, v1, :cond_1

    .line 2219
    :goto_0
    new-instance v0, Lmf/org/apache/xerces/impl/io/UTF16Reader;

    .line 2220
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    .line 2222
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v4

    .line 2223
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v5

    move-object v1, p1

    move v3, p2

    .line 2219
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/io/UTF16Reader;-><init>(Ljava/io/InputStream;[BZLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-object v0

    .line 2212
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fLargeByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->getBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    goto :goto_0

    .line 2216
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSmallByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->returnBuffer([B)V

    .line 2217
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fLargeByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->getBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    goto :goto_0
.end method

.method private createUTF8Reader(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 4

    .prologue
    .line 2197
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    if-eqz v0, :cond_0

    .line 2200
    :goto_0
    new-instance v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;

    .line 2201
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    .line 2202
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v2

    .line 2203
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 2200
    invoke-direct {v0, p1, v1, v2, v3}, Lmf/org/apache/xerces/impl/io/UTF8Reader;-><init>(Ljava/io/InputStream;[BLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-object v0

    .line 2198
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSmallByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->getBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    goto :goto_0
.end method

.method public static expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1724
    if-eqz p0, :cond_0

    .line 1729
    if-nez p2, :cond_1

    .line 1735
    :try_start_0
    invoke-static {p0, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemIdStrictOff(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1725
    :cond_0
    return-object v6

    .line 1730
    :cond_1
    invoke-static {p0, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemIdStrictOn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1735
    :catch_0
    move-exception v0

    .line 1742
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1747
    invoke-static {p0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1753
    if-nez p1, :cond_4

    .line 1755
    :cond_2
    :try_start_1
    invoke-static {}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getUserDir()Lmf/org/apache/xerces/util/URI;

    move-result-object v0

    move-object v1, v0

    .line 1773
    :goto_0
    new-instance v0, Lmf/org/apache/xerces/util/URI;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/util/URI;-><init>(Lmf/org/apache/xerces/util/URI;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1780
    :goto_1
    if-eqz v0, :cond_6

    .line 1783
    invoke-virtual {v0}, Lmf/org/apache/xerces/util/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1743
    :cond_3
    return-object p0

    .line 1753
    :cond_4
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1754
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    if-nez v0, :cond_2

    .line 1759
    :try_start_3
    new-instance v0, Lmf/org/apache/xerces/util/URI;

    invoke-static {p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v1, v0

    .line 1760
    goto :goto_0

    :catch_1
    move-exception v0

    const/16 v0, 0x3a

    .line 1762
    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 1768
    new-instance v0, Lmf/org/apache/xerces/util/URI;

    invoke-static {}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getUserDir()Lmf/org/apache/xerces/util/URI;

    move-result-object v1

    invoke-static {p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/util/URI;-><init>(Lmf/org/apache/xerces/util/URI;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0

    .line 1765
    :cond_5
    new-instance v0, Lmf/org/apache/xerces/util/URI;

    const-string/jumbo v1, "file"

    const-string/jumbo v2, ""

    invoke-static {p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v1, v0

    .line 1766
    goto :goto_0

    .line 1774
    :catch_2
    move-exception v0

    move-object v0, v6

    goto :goto_1

    .line 1781
    :cond_6
    return-object p0
.end method

.method private static expandSystemIdStrictOff(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1828
    new-instance v1, Lmf/org/apache/xerces/util/URI;

    invoke-direct {v1, p0, v2}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;Z)V

    .line 1830
    invoke-virtual {v1}, Lmf/org/apache/xerces/util/URI;->isAbsoluteURI()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1845
    if-nez p1, :cond_4

    .line 1846
    :cond_0
    invoke-static {}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getUserDir()Lmf/org/apache/xerces/util/URI;

    move-result-object v0

    .line 1857
    :cond_1
    :goto_0
    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/URI;->absolutize(Lmf/org/apache/xerces/util/URI;)V

    .line 1860
    invoke-virtual {v1}, Lmf/org/apache/xerces/util/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1831
    :cond_2
    invoke-virtual {v1}, Lmf/org/apache/xerces/util/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v2, :cond_3

    .line 1840
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>()V

    throw v0

    .line 1832
    :cond_3
    return-object p0

    .line 1845
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1849
    new-instance v0, Lmf/org/apache/xerces/util/URI;

    invoke-direct {v0, p1, v2}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;Z)V

    .line 1850
    invoke-virtual {v0}, Lmf/org/apache/xerces/util/URI;->isAbsoluteURI()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1852
    invoke-static {}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getUserDir()Lmf/org/apache/xerces/util/URI;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/util/URI;->absolutize(Lmf/org/apache/xerces/util/URI;)V

    goto :goto_0
.end method

.method private static expandSystemIdStrictOn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1793
    new-instance v1, Lmf/org/apache/xerces/util/URI;

    invoke-direct {v1, p0, v2}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;Z)V

    .line 1795
    invoke-virtual {v1}, Lmf/org/apache/xerces/util/URI;->isAbsoluteURI()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1801
    if-nez p1, :cond_3

    .line 1802
    :cond_0
    invoke-static {}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getUserDir()Lmf/org/apache/xerces/util/URI;

    move-result-object v0

    .line 1813
    :cond_1
    :goto_0
    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/URI;->absolutize(Lmf/org/apache/xerces/util/URI;)V

    .line 1816
    invoke-virtual {v1}, Lmf/org/apache/xerces/util/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1796
    :cond_2
    return-object p0

    .line 1801
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1805
    new-instance v0, Lmf/org/apache/xerces/util/URI;

    invoke-direct {v0, p1, v2}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;Z)V

    .line 1806
    invoke-virtual {v0}, Lmf/org/apache/xerces/util/URI;->isAbsoluteURI()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1808
    invoke-static {}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getUserDir()Lmf/org/apache/xerces/util/URI;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/util/URI;->absolutize(Lmf/org/apache/xerces/util/URI;)V

    goto :goto_0
.end method

.method protected static fixURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x20

    const/4 v0, 0x0

    const/16 v5, 0x2f

    const/4 v1, 0x0

    .line 2265
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 2270
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 2287
    :cond_0
    :goto_0
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 2290
    if-ltz v3, :cond_3

    .line 2300
    if-eqz v0, :cond_5

    .line 2303
    :goto_1
    if-ge v1, v3, :cond_6

    .line 2304
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2303
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    .line 2271
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    .line 2273
    if-eq v3, v4, :cond_2

    .line 2281
    if-ne v3, v5, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_0

    .line 2282
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string/jumbo v3, "file:"

    .line 2283
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2274
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    const/16 v4, 0x41

    .line 2275
    if-lt v3, v4, :cond_0

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_0

    .line 2276
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string/jumbo v3, "file:///"

    .line 2277
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2291
    :cond_3
    if-nez v0, :cond_4

    move-object v0, v2

    .line 2318
    :goto_2
    return-object v0

    .line 2292
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2293
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 2301
    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    goto :goto_1

    :cond_6
    const-string/jumbo v1, "%20"

    .line 2306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2308
    add-int/lit8 v1, v3, 0x1

    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_8

    .line 2309
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v6, :cond_7

    .line 2312
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2308
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    const-string/jumbo v3, "%20"

    .line 2310
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 2314
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private static getPathWithoutEscapes(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 1904
    if-nez p0, :cond_1

    .line 1918
    :cond_0
    return-object p0

    .line 1904
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x25

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1906
    new-instance v1, Ljava/util/StringTokenizer;

    const-string/jumbo v0, "%"

    invoke-direct {v1, p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1907
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1908
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    .line 1909
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    .line 1910
    :goto_0
    if-ge v0, v3, :cond_2

    .line 1911
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 1913
    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-char v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1914
    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1910
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1916
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getUserDir()Lmf/org/apache/xerces/util/URI;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-class v6, Lmf/org/apache/xerces/impl/XMLEntityManager;

    monitor-enter v6

    :try_start_0
    const-string/jumbo v2, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1602
    :try_start_1
    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->GET_USER_DIR_SYSTEM_PROPERTY:Ljava/security/PrivilegedAction;

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1607
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1612
    sget-object v2, Lmf/org/apache/xerces/impl/XMLEntityManager;->gUserDirURI:Lmf/org/apache/xerces/util/URI;

    if-nez v2, :cond_3

    .line 1617
    :cond_0
    sput-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->gUserDir:Ljava/lang/String;

    .line 1619
    sget-char v2, Ljava/io/File;->separatorChar:C

    .line 1620
    const/16 v3, 0x2f

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 1622
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 1623
    new-instance v4, Ljava/lang/StringBuffer;

    mul-int/lit8 v0, v2, 0x3

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x2

    .line 1625
    if-ge v2, v0, :cond_4

    :cond_1
    :goto_1
    move v0, v1

    .line 1634
    :goto_2
    if-ge v0, v2, :cond_6

    .line 1635
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x80

    .line 1637
    if-ge v5, v7, :cond_6

    .line 1639
    sget-object v7, Lmf/org/apache/xerces/impl/XMLEntityManager;->gNeedEscaping:[Z

    aget-boolean v7, v7, v5

    if-nez v7, :cond_5

    .line 1646
    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1634
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1603
    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0

    .line 1608
    :cond_2
    new-instance v0, Lmf/org/apache/xerces/util/URI;

    const-string/jumbo v1, "file"

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v6

    return-object v0

    .line 1612
    :cond_3
    :try_start_3
    sget-object v2, Lmf/org/apache/xerces/impl/XMLEntityManager;->gUserDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1613
    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->gUserDirURI:Lmf/org/apache/xerces/util/URI;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v6

    return-object v0

    :cond_4
    const/4 v0, 0x1

    .line 1625
    :try_start_4
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x3a

    if-ne v0, v5, :cond_1

    const/4 v0, 0x0

    .line 1626
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    const/16 v5, 0x41

    .line 1627
    if-lt v0, v5, :cond_1

    const/16 v5, 0x5a

    if-gt v0, v5, :cond_1

    .line 1628
    const/16 v0, 0x2f

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    .line 1640
    :cond_5
    const/16 v7, 0x25

    :try_start_5
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1641
    sget-object v7, Lmf/org/apache/xerces/impl/XMLEntityManager;->gAfterEscaping1:[C

    aget-char v7, v7, v5

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1642
    sget-object v7, Lmf/org/apache/xerces/impl/XMLEntityManager;->gAfterEscaping2:[C

    aget-char v5, v7, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1651
    :cond_6
    if-lt v0, v2, :cond_8

    :cond_7
    const-string/jumbo v0, "/"

    .line 1685
    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1688
    :goto_4
    new-instance v0, Lmf/org/apache/xerces/util/URI;

    const-string/jumbo v1, "file"

    const-string/jumbo v2, ""

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->gUserDirURI:Lmf/org/apache/xerces/util/URI;

    .line 1690
    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->gUserDirURI:Lmf/org/apache/xerces/util/URI;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v6

    return-object v0

    .line 1656
    :cond_8
    :try_start_6
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v2

    .line 1661
    :try_start_7
    array-length v5, v2

    move v0, v1

    .line 1664
    :goto_5
    if-ge v0, v5, :cond_7

    .line 1665
    aget-byte v1, v2, v0

    .line 1667
    if-ltz v1, :cond_9

    .line 1673
    sget-object v7, Lmf/org/apache/xerces/impl/XMLEntityManager;->gNeedEscaping:[Z

    aget-boolean v7, v7, v1

    if-nez v7, :cond_a

    .line 1679
    int-to-char v1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1664
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1657
    :catch_1
    move-exception v0

    .line 1659
    new-instance v0, Lmf/org/apache/xerces/util/URI;

    const-string/jumbo v1, "file"

    const-string/jumbo v2, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v6

    return-object v0

    .line 1668
    :cond_9
    add-int/lit16 v1, v1, 0x100

    .line 1669
    const/16 v7, 0x25

    :try_start_8
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1670
    sget-object v7, Lmf/org/apache/xerces/impl/XMLEntityManager;->gHexChs:[C

    shr-int/lit8 v8, v1, 0x4

    aget-char v7, v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1671
    sget-object v7, Lmf/org/apache/xerces/impl/XMLEntityManager;->gHexChs:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v7, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 1674
    :cond_a
    const/16 v7, 0x25

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1675
    sget-object v7, Lmf/org/apache/xerces/impl/XMLEntityManager;->gAfterEscaping1:[C

    aget-char v7, v7, v1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1676
    sget-object v7, Lmf/org/apache/xerces/impl/XMLEntityManager;->gAfterEscaping2:[C

    aget-char v1, v7, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 1686
    :cond_b
    const/16 v0, 0x2f

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4
.end method

.method static final print(Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;)V
    .locals 0

    .prologue
    .line 2390
    return-void
.end method


# virtual methods
.method public addExternalEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 521
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fWarnDuplicateEntityDef:Z

    if-nez v0, :cond_6

    .line 551
    :goto_0
    return-void

    .line 522
    :cond_0
    if-eqz p4, :cond_1

    move-object v4, p4

    .line 537
    :goto_1
    new-instance v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;

    .line 538
    new-instance v0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;

    .line 539
    invoke-static {p3, v4, v5}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 538
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fInExternalSubset:Z

    .line 537
    invoke-direct {v6, p1, v0, v7, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Z)V

    .line 540
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 524
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    .line 525
    if-eqz v0, :cond_4

    .line 528
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_3
    if-ltz v1, :cond_7

    .line 530
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    .line 531
    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    if-nez v2, :cond_5

    .line 528
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_3

    .line 525
    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v1, :cond_2

    .line 526
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p4

    goto :goto_2

    .line 531
    :cond_5
    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 532
    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p4

    move-object v4, p4

    .line 533
    goto :goto_1

    .line 544
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v2, "MSG_DUPLICATE_ENTITY_DEFINITION"

    const/4 v3, 0x1

    .line 546
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    .line 544
    invoke-virtual {v0, v1, v2, v3, v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_0

    :cond_7
    move-object v4, p4

    goto :goto_1
.end method

.method public addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 481
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fWarnDuplicateEntityDef:Z

    if-nez v0, :cond_1

    .line 494
    :goto_0
    return-void

    .line 482
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/XMLEntityManager$InternalEntity;

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fInExternalSubset:Z

    invoke-direct {v0, p1, p2, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager$InternalEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 483
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 487
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v2, "MSG_DUPLICATE_ENTITY_DEFINITION"

    const/4 v3, 0x1

    .line 489
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    .line 487
    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_0
.end method

.method public addUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 605
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fWarnDuplicateEntityDef:Z

    if-nez v0, :cond_1

    .line 619
    :goto_0
    return-void

    .line 606
    :cond_0
    new-instance v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;

    .line 607
    new-instance v0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fInExternalSubset:Z

    .line 606
    invoke-direct {v6, p1, v0, p5, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Z)V

    .line 609
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 613
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v2, "MSG_DUPLICATE_ENTITY_DEFINITION"

    const/4 v3, 0x1

    .line 615
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    .line 613
    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_0
.end method

.method public closeReaders()V
    .locals 2

    .prologue
    .line 1233
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fReaderStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 1235
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fReaderStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1233
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1240
    :cond_0
    return-void

    .line 1236
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v0, "UTF-8"

    .line 2090
    if-ne p2, v0, :cond_1

    .line 2091
    :cond_0
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createUTF8Reader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v0

    return-object v0

    .line 2090
    :cond_1
    if-eqz p2, :cond_0

    const-string/jumbo v0, "UTF-16"

    .line 2095
    if-eq p2, v0, :cond_4

    .line 2100
    :cond_2
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UTF-8"

    .line 2101
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "UTF-16BE"

    .line 2104
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "UTF-16LE"

    .line 2107
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "ISO-10646-UCS-4"

    .line 2110
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_0
    const-string/jumbo v1, "ISO-10646-UCS-2"

    .line 2125
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 2142
    :goto_1
    invoke-static {p2}, Lmf/org/apache/xerces/util/XMLChar;->isValidIANAEncoding(Ljava/lang/String;)Z

    move-result v1

    .line 2143
    invoke-static {p2}, Lmf/org/apache/xerces/util/XMLChar;->isValidJavaEncoding(Ljava/lang/String;)Z

    move-result v2

    .line 2144
    if-nez v1, :cond_e

    .line 2145
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v2, "EncodingDeclInvalid"

    .line 2147
    new-array v3, v6, [Ljava/lang/Object;

    aput-object p2, v3, v5

    .line 2145
    invoke-virtual {v0, v1, v2, v3, v7}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 2157
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createLatin1Reader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v0

    return-object v0

    .line 2095
    :cond_4
    if-eqz p3, :cond_2

    .line 2096
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createUTF16Reader(Ljava/io/InputStream;Z)Ljava/io/Reader;

    move-result-object v0

    return-object v0

    .line 2102
    :cond_5
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createUTF8Reader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v0

    return-object v0

    .line 2105
    :cond_6
    invoke-direct {p0, p1, v6}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createUTF16Reader(Ljava/io/InputStream;Z)Ljava/io/Reader;

    move-result-object v0

    return-object v0

    .line 2108
    :cond_7
    invoke-direct {p0, p1, v5}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createUTF16Reader(Ljava/io/InputStream;Z)Ljava/io/Reader;

    move-result-object v0

    return-object v0

    .line 2111
    :cond_8
    if-nez p3, :cond_9

    .line 2119
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "EncodingByteOrderUnsupported"

    .line 2121
    new-array v4, v6, [Ljava/lang/Object;

    aput-object p2, v4, v5

    .line 2119
    invoke-virtual {v1, v2, v3, v4, v7}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_0

    .line 2112
    :cond_9
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2113
    if-nez v0, :cond_a

    .line 2116
    new-instance v0, Lmf/org/apache/xerces/impl/io/UCSReader;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lmf/org/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    return-object v0

    .line 2114
    :cond_a
    new-instance v0, Lmf/org/apache/xerces/impl/io/UCSReader;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1}, Lmf/org/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    return-object v0

    .line 2126
    :cond_b
    if-nez p3, :cond_c

    .line 2134
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "EncodingByteOrderUnsupported"

    .line 2136
    new-array v4, v6, [Ljava/lang/Object;

    aput-object p2, v4, v5

    .line 2134
    invoke-virtual {v1, v2, v3, v4, v7}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_1

    .line 2127
    :cond_c
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2128
    if-nez v0, :cond_d

    .line 2131
    new-instance v0, Lmf/org/apache/xerces/impl/io/UCSReader;

    invoke-direct {v0, p1, v6}, Lmf/org/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    return-object v0

    .line 2129
    :cond_d
    new-instance v0, Lmf/org/apache/xerces/impl/io/UCSReader;

    invoke-direct {v0, p1, v7}, Lmf/org/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    return-object v0

    .line 2144
    :cond_e
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fAllowJavaEncodings:Z

    if-nez v1, :cond_10

    .line 2161
    :goto_2
    invoke-static {v0}, Lmf/org/apache/xerces/util/EncodingMap;->getIANA2JavaMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2162
    if-eqz v0, :cond_11

    const-string/jumbo v1, "ASCII"

    .line 2175
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string/jumbo v1, "ISO8859_1"

    .line 2178
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    move-object p2, v0

    .line 2188
    :cond_f
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0

    .line 2144
    :cond_10
    if-eqz v2, :cond_3

    goto :goto_2

    .line 2163
    :cond_11
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fAllowJavaEncodings:Z

    if-nez v0, :cond_f

    .line 2167
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v2, "EncodingDeclInvalid"

    .line 2169
    new-array v3, v6, [Ljava/lang/Object;

    aput-object p2, v3, v5

    .line 2167
    invoke-virtual {v0, v1, v2, v3, v7}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 2172
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createLatin1Reader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v0

    return-object v0

    .line 2176
    :cond_12
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createASCIIReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v0

    return-object v0

    .line 2179
    :cond_13
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createLatin1Reader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method endEntity()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1938
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    if-nez v1, :cond_0

    .line 1947
    :goto_0
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->reader:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1955
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fReaderStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1960
    :goto_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCharacterBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    # getter for: Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->fCharacterBuffer:Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;
    invoke-static {v2}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->access$0(Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;)Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->returnBuffer(Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;)V

    .line 1963
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    # getter for: Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->fByteBuffer:[B
    invoke-static {v1}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->access$1(Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;)[B

    move-result-object v1

    if-nez v1, :cond_2

    .line 1973
    :goto_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-gtz v1, :cond_4

    :goto_4
    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    .line 1975
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->setCurrentEntity(Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;)V

    .line 1982
    return-void

    .line 1939
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->name:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lmf/org/apache/xerces/impl/XMLEntityHandler;->endEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0

    .line 1956
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fReaderStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_2

    .line 1964
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    # getter for: Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->fByteBuffer:[B
    invoke-static {v1}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->access$1(Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;)[B

    move-result-object v1

    array-length v1, v1

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    if-eq v1, v2, :cond_3

    .line 1968
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fLargeByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    # getter for: Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->fByteBuffer:[B
    invoke-static {v2}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->access$1(Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->returnBuffer([B)V

    goto :goto_3

    .line 1965
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSmallByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    # getter for: Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->fByteBuffer:[B
    invoke-static {v2}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->access$1(Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->returnBuffer([B)V

    goto :goto_3

    .line 1974
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    goto :goto_4

    .line 1948
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public endExternalSubset()V
    .locals 1

    .prologue
    .line 880
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fInExternalSubset:Z

    .line 881
    return-void
.end method

.method public getCurrentEntity()Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    return-object v0
.end method

.method public getCurrentResourceIdentifier()Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    return-object v0
.end method

.method getDeclaredEntities()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 2335
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    return-object v0
.end method

.method protected getEncodingInfo([BI)Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;
    .locals 7

    .prologue
    const/16 v6, 0x3f

    const/4 v5, 0x3

    const/4 v3, 0x2

    const/16 v4, 0x3c

    const/4 v0, 0x0

    .line 1994
    if-lt p2, v3, :cond_a

    .line 1999
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    .line 2000
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xfe

    .line 2001
    if-eq v0, v2, :cond_b

    :cond_0
    const/16 v2, 0xff

    .line 2005
    if-eq v0, v2, :cond_c

    .line 2012
    :cond_1
    if-lt p2, v5, :cond_d

    .line 2017
    aget-byte v2, p1, v3

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xef

    .line 2018
    if-eq v0, v3, :cond_e

    :cond_2
    const/4 v3, 0x4

    .line 2024
    if-lt p2, v3, :cond_f

    .line 2029
    aget-byte v3, p1, v5

    and-int/lit16 v3, v3, 0xff

    .line 2030
    if-eqz v0, :cond_10

    .line 2034
    :cond_3
    if-eq v0, v4, :cond_11

    .line 2038
    :cond_4
    if-eqz v0, :cond_12

    .line 2043
    :cond_5
    if-eqz v0, :cond_13

    .line 2048
    :cond_6
    if-eqz v0, :cond_14

    .line 2054
    :cond_7
    if-eq v0, v4, :cond_15

    :cond_8
    const/16 v4, 0x4c

    .line 2059
    if-eq v0, v4, :cond_16

    .line 2066
    :cond_9
    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UTF_8:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    return-object v0

    .line 1995
    :cond_a
    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UTF_8:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    return-object v0

    :cond_b
    const/16 v2, 0xff

    .line 2001
    if-ne v1, v2, :cond_0

    .line 2003
    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UTF_16_BIG_ENDIAN_WITH_BOM:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    return-object v0

    :cond_c
    const/16 v2, 0xfe

    .line 2005
    if-ne v1, v2, :cond_1

    .line 2007
    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UTF_16_LITTLE_ENDIAN_WITH_BOM:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    return-object v0

    .line 2013
    :cond_d
    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UTF_8:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    return-object v0

    :cond_e
    const/16 v3, 0xbb

    .line 2018
    if-ne v1, v3, :cond_2

    const/16 v3, 0xbf

    if-ne v2, v3, :cond_2

    .line 2019
    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UTF_8_WITH_BOM:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    return-object v0

    .line 2025
    :cond_f
    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UTF_8:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    return-object v0

    .line 2030
    :cond_10
    if-nez v1, :cond_3

    if-nez v2, :cond_3

    if-ne v3, v4, :cond_3

    .line 2032
    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UCS_4_BIG_ENDIAN:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    return-object v0

    .line 2034
    :cond_11
    if-nez v1, :cond_4

    if-nez v2, :cond_4

    if-nez v3, :cond_4

    .line 2036
    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UCS_4_LITTLE_ENDIAN:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    return-object v0

    .line 2038
    :cond_12
    if-nez v1, :cond_5

    if-ne v2, v4, :cond_5

    if-nez v3, :cond_5

    .line 2041
    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UCS_4_UNUSUAL_BYTE_ORDER:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    return-object v0

    .line 2043
    :cond_13
    if-ne v1, v4, :cond_6

    if-nez v2, :cond_6

    if-nez v3, :cond_6

    .line 2046
    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UCS_4_UNUSUAL_BYTE_ORDER:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    return-object v0

    .line 2048
    :cond_14
    if-ne v1, v4, :cond_7

    if-nez v2, :cond_7

    if-ne v3, v6, :cond_7

    .line 2052
    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UTF_16_BIG_ENDIAN:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    return-object v0

    .line 2054
    :cond_15
    if-nez v1, :cond_8

    if-ne v2, v6, :cond_8

    if-nez v3, :cond_8

    .line 2057
    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UTF_16_LITTLE_ENDIAN:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    return-object v0

    :cond_16
    const/16 v0, 0x6f

    .line 2059
    if-ne v1, v0, :cond_9

    const/16 v0, 0xa7

    if-ne v2, v0, :cond_9

    const/16 v0, 0x94

    if-ne v3, v0, :cond_9

    .line 2062
    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->EBCDIC:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    return-object v0
.end method

.method public getEntityScanner()Lmf/org/apache/xerces/impl/XMLEntityScanner;
    .locals 3

    .prologue
    .line 1214
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    if-eqz v0, :cond_0

    .line 1222
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    return-object v0

    .line 1216
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML10EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    if-eqz v0, :cond_1

    .line 1219
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML10EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, v1, p0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->reset(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLEntityManager;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    .line 1220
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML10EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    goto :goto_0

    .line 1217
    :cond_1
    new-instance v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML10EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    goto :goto_1
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1518
    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1519
    sget-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1518
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1520
    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    aget-object v0, v1, v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 1523
    return-object v0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1536
    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1537
    sget-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1536
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1538
    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    aget-object v0, v1, v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 1541
    return-object v0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1409
    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1447
    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method final hasPEReferences()Z
    .locals 1

    .prologue
    .line 435
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fHasPEReferences:Z

    return v0
.end method

.method public isDeclaredEntity(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;

    .line 646
    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isEntityDeclInExternalSubset(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;

    .line 580
    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;->isEntityDeclInExternalSubset()Z

    move-result v0

    return v0

    .line 581
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isExternalEntity(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;

    .line 563
    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;->isExternal()Z

    move-result v0

    return v0

    .line 564
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStandalone()Z
    .locals 1

    .prologue
    .line 420
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fStandalone:Z

    return v0
.end method

.method public isUnparsedEntity(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;

    .line 631
    if-eqz v0, :cond_0

    .line 634
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;->isUnparsed()Z

    move-result v0

    return v0

    .line 632
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final notifyHasPEReferences()V
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fHasPEReferences:Z

    .line 429
    return-void
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 1349
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityExpansionLimit:I

    .line 1352
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fStandalone:Z

    .line 1353
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fHasPEReferences:Z

    .line 1354
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1355
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V

    .line 1356
    iput v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityExpansionCount:I

    .line 1358
    iput-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    .line 1360
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML10EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    if-nez v0, :cond_2

    .line 1363
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML11EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    if-nez v0, :cond_3

    .line 1390
    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fDeclaredEntities:Ljava/util/Hashtable;

    if-nez v0, :cond_4

    .line 1399
    :cond_0
    iput-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    .line 1401
    return-void

    .line 1349
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SecurityManager;->getEntityExpansionLimit()I

    move-result v0

    goto :goto_0

    .line 1361
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML10EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, v1, p0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->reset(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLEntityManager;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    goto :goto_1

    .line 1364
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML11EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, v1, p0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->reset(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLEntityManager;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    goto :goto_2

    .line 1391
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fDeclaredEntities:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1392
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1393
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1394
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 1395
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 1396
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v3, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v0, "http://apache.org/xml/features/internal/parser-settings"

    .line 1265
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1270
    :goto_0
    if-eqz v0, :cond_0

    :try_start_1
    const-string/jumbo v0, "http://xml.org/sax/features/validation"

    .line 1278
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fValidation:Z
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    const-string/jumbo v0, "http://xml.org/sax/features/external-general-entities"

    .line 1284
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fExternalGeneralEntities:Z
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    const-string/jumbo v0, "http://xml.org/sax/features/external-parameter-entities"

    .line 1290
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fExternalParameterEntities:Z
    :try_end_3
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    const-string/jumbo v0, "http://apache.org/xml/features/allow-java-encodings"

    .line 1298
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fAllowJavaEncodings:Z
    :try_end_4
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    const-string/jumbo v0, "http://apache.org/xml/features/warn-on-duplicate-entitydef"

    .line 1305
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fWarnDuplicateEntityDef:Z
    :try_end_5
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    const-string/jumbo v0, "http://apache.org/xml/features/standard-uri-conformant"

    .line 1312
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fStrictURI:Z
    :try_end_6
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    const-string/jumbo v0, "http://apache.org/xml/properties/internal/symbol-table"

    .line 1319
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/error-reporter"

    .line 1320
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    :try_start_7
    const-string/jumbo v0, "http://apache.org/xml/properties/internal/entity-resolver"

    .line 1322
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    :try_end_7
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_7 .. :try_end_7} :catch_7

    :goto_7
    :try_start_8
    const-string/jumbo v0, "http://apache.org/xml/properties/internal/validation-manager"

    .line 1328
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;
    :try_end_8
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_8 .. :try_end_8} :catch_8

    :goto_8
    :try_start_9
    const-string/jumbo v0, "http://apache.org/xml/properties/security-manager"

    .line 1334
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/util/SecurityManager;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;
    :try_end_9
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_9 .. :try_end_9} :catch_9

    .line 1341
    :goto_9
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->reset()V

    .line 1343
    return-void

    .line 1266
    :catch_0
    move-exception v0

    move v0, v1

    .line 1267
    goto :goto_0

    .line 1272
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->reset()V

    .line 1273
    return-void

    .line 1279
    :catch_1
    move-exception v0

    .line 1281
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fValidation:Z

    goto :goto_1

    .line 1285
    :catch_2
    move-exception v0

    .line 1287
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fExternalGeneralEntities:Z

    goto :goto_2

    .line 1291
    :catch_3
    move-exception v0

    .line 1293
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fExternalParameterEntities:Z

    goto :goto_3

    .line 1299
    :catch_4
    move-exception v0

    .line 1301
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fAllowJavaEncodings:Z

    goto :goto_4

    .line 1306
    :catch_5
    move-exception v0

    .line 1308
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fWarnDuplicateEntityDef:Z

    goto :goto_5

    .line 1313
    :catch_6
    move-exception v0

    .line 1315
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fStrictURI:Z

    goto :goto_6

    .line 1323
    :catch_7
    move-exception v0

    .line 1325
    iput-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    goto :goto_7

    .line 1329
    :catch_8
    move-exception v0

    .line 1331
    iput-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    goto :goto_8

    .line 1335
    :catch_9
    move-exception v0

    .line 1337
    iput-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    goto :goto_9
.end method

.method public resolveEntity(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 667
    if-eqz p1, :cond_1

    .line 668
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v6

    .line 669
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v7

    .line 670
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v3

    .line 671
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v4

    .line 678
    if-eqz v4, :cond_2

    move v0, v1

    .line 682
    :goto_0
    if-eqz v3, :cond_3

    :cond_0
    move-object v2, v3

    .line 690
    :goto_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    if-nez v3, :cond_5

    move-object v0, v5

    .line 704
    :goto_2
    if-eqz v0, :cond_7

    .line 716
    :goto_3
    return-object v0

    .line 667
    :cond_1
    return-object v5

    :cond_2
    move v0, v2

    .line 678
    goto :goto_0

    .line 682
    :cond_3
    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v8, :cond_0

    .line 683
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v3

    .line 684
    if-nez v3, :cond_4

    move-object v2, v3

    goto :goto_1

    :cond_4
    move v0, v2

    move-object v2, v3

    .line 685
    goto :goto_1

    .line 691
    :cond_5
    if-nez v0, :cond_6

    move-object v0, v4

    .line 694
    :goto_4
    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->setBaseSystemId(Ljava/lang/String;)V

    .line 695
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->setExpandedSystemId(Ljava/lang/String;)V

    .line 696
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;->resolveEntity(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v0

    goto :goto_2

    .line 692
    :cond_6
    invoke-static {v7, v2, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 708
    :cond_7
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-direct {v0, v6, v7, v2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    .line 446
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "http://apache.org/xml/features/"

    .line 1431
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1439
    :cond_0
    :goto_0
    return-void

    .line 1432
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v1, "http://apache.org/xml/features/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    const-string/jumbo v1, "allow-java-encodings"

    .line 1433
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "allow-java-encodings"

    .line 1434
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1435
    iput-boolean p2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fAllowJavaEncodings:Z

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, "http://apache.org/xml/properties/"

    .line 1469
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1506
    :cond_0
    :goto_0
    return-void

    .line 1470
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v2, "http://apache.org/xml/properties/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, v0, v2

    const-string/jumbo v0, "internal/symbol-table"

    .line 1472
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v2, v0, :cond_6

    :cond_2
    const-string/jumbo v0, "internal/error-reporter"

    .line 1477
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v2, v0, :cond_7

    :cond_3
    const-string/jumbo v0, "internal/entity-resolver"

    .line 1482
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v2, v0, :cond_8

    :cond_4
    const-string/jumbo v0, "input-buffer-size"

    .line 1487
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v2, v0, :cond_9

    :cond_5
    :goto_1
    const-string/jumbo v0, "security-manager"

    .line 1499
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v2, v0, :cond_0

    const-string/jumbo v0, "security-manager"

    .line 1500
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1501
    check-cast p2, Lmf/org/apache/xerces/util/SecurityManager;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    .line 1502
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    if-nez v0, :cond_a

    move v0, v1

    :goto_2
    iput v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityExpansionLimit:I

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "internal/symbol-table"

    .line 1473
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1474
    check-cast p2, Lmf/org/apache/xerces/util/SymbolTable;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 1475
    return-void

    :cond_7
    const-string/jumbo v0, "internal/error-reporter"

    .line 1478
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1479
    check-cast p2, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 1480
    return-void

    :cond_8
    const-string/jumbo v0, "internal/entity-resolver"

    .line 1483
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1484
    check-cast p2, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    .line 1485
    return-void

    :cond_9
    const-string/jumbo v0, "input-buffer-size"

    .line 1488
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p2

    .line 1489
    check-cast v0, Ljava/lang/Integer;

    .line 1490
    if-eqz v0, :cond_5

    .line 1491
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x40

    if-le v3, v4, :cond_5

    .line 1492
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    .line 1493
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->setBufferSize(I)V

    .line 1494
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSmallByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->setBufferSize(I)V

    .line 1495
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fLargeByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    shl-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->setBufferSize(I)V

    .line 1496
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCharacterBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->setExternalBufferSize(I)V

    goto/16 :goto_1

    .line 1502
    :cond_a
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SecurityManager;->getEntityExpansionLimit()I

    move-result v0

    goto :goto_2
.end method

.method public setScannerVersion(S)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1195
    if-eq p1, v0, :cond_0

    .line 1203
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML11EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    if-eqz v0, :cond_2

    .line 1206
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML11EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, v1, p0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->reset(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLEntityManager;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    .line 1207
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML11EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    .line 1208
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->setCurrentEntity(Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;)V

    .line 1210
    :goto_1
    return-void

    .line 1196
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML10EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    if-eqz v0, :cond_1

    .line 1199
    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML10EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, v1, p0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->reset(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLEntityManager;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    .line 1200
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML10EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    .line 1201
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->setCurrentEntity(Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;)V

    goto :goto_1

    .line 1197
    :cond_1
    new-instance v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML10EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    goto :goto_2

    .line 1204
    :cond_2
    new-instance v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XML11EntityScanner;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML11EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    goto :goto_0
.end method

.method public setStandalone(Z)V
    .locals 0

    .prologue
    .line 415
    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fStandalone:Z

    .line 416
    return-void
.end method

.method public setupCurrentEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLInputSource;ZZ)Ljava/lang/String;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 946
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getPublicId()Ljava/lang/String;

    move-result-object v17

    .line 947
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v7

    .line 948
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v4

    .line 949
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getEncoding()Ljava/lang/String;

    move-result-object v9

    .line 950
    if-nez v9, :cond_0

    const/4 v2, 0x0

    move v13, v2

    :goto_0
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 952
    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    const/4 v3, 0x0

    .line 956
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v2

    .line 958
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fStrictURI:Z

    invoke-static {v7, v4, v5}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 959
    if-eqz v4, :cond_1

    move-object/from16 v16, v4

    .line 962
    :goto_1
    if-eqz v2, :cond_2

    move-object v14, v6

    move-object v15, v7

    move-object v6, v3

    move-object v7, v2

    .line 1176
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fReaderStack:Ljava/util/Stack;

    invoke-virtual {v2, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    if-nez v2, :cond_2c

    .line 1184
    :goto_3
    new-instance v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    .line 1185
    new-instance v5, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v5, v0, v15, v1, v14}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    const/4 v11, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v10, p3

    move/from16 v12, p4

    invoke-direct/range {v2 .. v12}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;-><init>(Lmf/org/apache/xerces/impl/XMLEntityManager;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/io/InputStream;Ljava/io/Reader;[BLjava/lang/String;ZZZ)V

    .line 1184
    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    .line 1187
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v2, v13}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->setEncodingExternallySpecified(Z)V

    .line 1188
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->setCurrentEntity(Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;)V

    .line 1189
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v2, v0, v15, v1, v14}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    return-object v9

    :cond_0
    const/4 v2, 0x1

    move v13, v2

    .line 950
    goto :goto_0

    :cond_1
    move-object/from16 v16, v6

    .line 960
    goto :goto_1

    .line 963
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v2

    .line 964
    if-eqz v2, :cond_3

    move-object v3, v2

    move-object v4, v7

    move-object v2, v6

    .line 1010
    :goto_4
    new-instance v6, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;-><init>(Lmf/org/apache/xerces/impl/XMLEntityManager;Ljava/io/InputStream;)V

    .line 1014
    if-eqz v9, :cond_a

    .line 1050
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v3, "UTF-8"

    .line 1053
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string/jumbo v3, "UTF-16"

    .line 1074
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    const-string/jumbo v3, "ISO-10646-UCS-4"

    .line 1113
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    const-string/jumbo v3, "ISO-10646-UCS-2"

    .line 1138
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 1161
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9, v8}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v7

    move-object v14, v2

    move-object v15, v4

    goto/16 :goto_2

    .line 965
    :cond_3
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 966
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 967
    instance-of v2, v3, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_4

    .line 971
    const/4 v2, 0x1

    .line 974
    move-object/from16 v0, p2

    instance-of v4, v0, Lmf/org/apache/xerces/util/HTTPInputSource;

    if-nez v4, :cond_5

    .line 992
    :goto_5
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 998
    if-nez v2, :cond_8

    move-object v2, v6

    move-object v3, v4

    move-object v4, v7

    goto :goto_4

    .line 968
    :cond_4
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    move-object v3, v2

    move-object v4, v7

    move-object v2, v6

    .line 969
    goto :goto_4

    :cond_5
    move-object v2, v3

    .line 975
    check-cast v2, Ljava/net/HttpURLConnection;

    .line 976
    check-cast p2, Lmf/org/apache/xerces/util/HTTPInputSource;

    .line 979
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/util/HTTPInputSource;->getHTTPRequestProperties()Ljava/util/Iterator;

    move-result-object v10

    .line 980
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 981
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 982
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 986
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/util/HTTPInputSource;->getFollowHTTPRedirects()Z

    move-result v4

    .line 987
    if-eqz v4, :cond_7

    move v2, v4

    goto :goto_5

    .line 988
    :cond_7
    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    move v2, v4

    goto :goto_5

    .line 999
    :cond_8
    invoke-virtual {v3}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1002
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object v2, v6

    move-object v3, v4

    move-object v4, v7

    goto/16 :goto_4

    :cond_9
    move-object v3, v4

    move-object v4, v2

    .line 1004
    goto/16 :goto_4

    :cond_a
    const/4 v3, 0x4

    .line 1016
    new-array v5, v3, [B

    const/4 v3, 0x0

    :goto_7
    const/4 v7, 0x4

    .line 1018
    if-ge v3, v7, :cond_b

    .line 1019
    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->readAndBuffer()I

    move-result v7

    int-to-byte v7, v7

    int-to-byte v7, v7

    aput-byte v7, v5, v3

    .line 1018
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_b
    const/4 v7, 0x4

    .line 1021
    if-eq v3, v7, :cond_c

    .line 1044
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9, v8}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v7

    move-object v14, v2

    move-object v15, v4

    .line 1046
    goto/16 :goto_2

    .line 1022
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getEncodingInfo([BI)Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    move-result-object v3

    .line 1023
    iget-object v9, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->encoding:Ljava/lang/String;

    .line 1024
    iget-object v5, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->isBigEndian:Ljava/lang/Boolean;

    .line 1025
    invoke-virtual {v6}, Ljava/io/InputStream;->reset()V

    .line 1026
    iget-boolean v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->hasBOM:Z

    if-nez v3, :cond_e

    .line 1041
    :cond_d
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9, v5}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v7

    move-object v14, v2

    move-object v15, v4

    .line 1042
    goto/16 :goto_2

    :cond_e
    const-string/jumbo v3, "UTF-8"

    .line 1030
    if-eq v9, v3, :cond_f

    const-string/jumbo v3, "UTF-16"

    .line 1035
    if-ne v9, v3, :cond_d

    const-wide/16 v10, 0x2

    .line 1038
    invoke-virtual {v6, v10, v11}, Ljava/io/InputStream;->skip(J)J

    goto :goto_8

    :cond_f
    const-wide/16 v10, 0x3

    .line 1032
    invoke-virtual {v6, v10, v11}, Ljava/io/InputStream;->skip(J)J

    goto :goto_8

    :cond_10
    const/4 v3, 0x3

    .line 1054
    new-array v5, v3, [I

    const/4 v3, 0x0

    :goto_9
    const/4 v7, 0x3

    .line 1056
    if-ge v3, v7, :cond_11

    .line 1057
    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->readAndBuffer()I

    move-result v7

    aput v7, v5, v3

    .line 1058
    aget v7, v5, v3

    const/4 v10, -0x1

    if-eq v7, v10, :cond_11

    .line 1056
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_11
    const/4 v7, 0x3

    .line 1061
    if-eq v3, v7, :cond_12

    .line 1068
    invoke-virtual {v6}, Ljava/io/InputStream;->reset()V

    :goto_a
    const-string/jumbo v3, "UTF-8"

    .line 1070
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v3, v8}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v7

    move-object v14, v2

    move-object v15, v4

    .line 1071
    goto/16 :goto_2

    :cond_12
    const/4 v3, 0x0

    .line 1062
    aget v3, v5, v3

    const/16 v7, 0xef

    if-eq v3, v7, :cond_14

    .line 1064
    :cond_13
    invoke-virtual {v6}, Ljava/io/InputStream;->reset()V

    goto :goto_a

    :cond_14
    const/4 v3, 0x1

    .line 1062
    aget v3, v5, v3

    const/16 v7, 0xbb

    if-ne v3, v7, :cond_13

    const/4 v3, 0x2

    aget v3, v5, v3

    const/16 v5, 0xbf

    if-ne v3, v5, :cond_13

    goto :goto_a

    :cond_15
    const/4 v3, 0x4

    .line 1075
    new-array v5, v3, [I

    const/4 v3, 0x0

    :goto_b
    const/4 v7, 0x4

    .line 1077
    if-ge v3, v7, :cond_16

    .line 1078
    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->readAndBuffer()I

    move-result v7

    aput v7, v5, v3

    .line 1079
    aget v7, v5, v3

    const/4 v10, -0x1

    if-eq v7, v10, :cond_16

    .line 1077
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1082
    :cond_16
    invoke-virtual {v6}, Ljava/io/InputStream;->reset()V

    const/4 v7, 0x2

    .line 1083
    if-ge v3, v7, :cond_18

    move-object v3, v8

    :cond_17
    :goto_c
    const-string/jumbo v5, "UTF-16"

    .line 1109
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v5, v3}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v7

    move-object v14, v2

    move-object v15, v4

    .line 1110
    goto/16 :goto_2

    :cond_18
    const/4 v7, 0x0

    .line 1084
    aget v7, v5, v7

    const/4 v10, 0x1

    .line 1085
    aget v10, v5, v10

    const/16 v11, 0xfe

    .line 1086
    if-eq v7, v11, :cond_1b

    :cond_19
    const/16 v11, 0xff

    .line 1091
    if-eq v7, v11, :cond_1c

    :cond_1a
    const/4 v11, 0x4

    .line 1096
    if-eq v3, v11, :cond_1d

    move-object v3, v8

    goto :goto_c

    :cond_1b
    const/16 v11, 0xff

    .line 1086
    if-ne v10, v11, :cond_19

    .line 1088
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-wide/16 v10, 0x2

    .line 1089
    invoke-virtual {v6, v10, v11}, Ljava/io/InputStream;->skip(J)J

    goto :goto_c

    :cond_1c
    const/16 v11, 0xfe

    .line 1091
    if-ne v10, v11, :cond_1a

    .line 1093
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-wide/16 v10, 0x2

    .line 1094
    invoke-virtual {v6, v10, v11}, Ljava/io/InputStream;->skip(J)J

    goto :goto_c

    :cond_1d
    const/4 v3, 0x2

    .line 1097
    aget v11, v5, v3

    const/4 v3, 0x3

    .line 1098
    aget v5, v5, v3

    .line 1099
    if-eqz v7, :cond_1f

    :cond_1e
    move-object v3, v8

    :goto_d
    const/16 v8, 0x3c

    .line 1103
    if-ne v7, v8, :cond_17

    if-nez v10, :cond_17

    const/16 v7, 0x3f

    if-ne v11, v7, :cond_17

    if-nez v5, :cond_17

    .line 1105
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_c

    :cond_1f
    const/16 v3, 0x3c

    .line 1099
    if-ne v10, v3, :cond_1e

    if-nez v11, :cond_1e

    const/16 v3, 0x3f

    if-ne v5, v3, :cond_1e

    .line 1101
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v3, v8

    goto :goto_d

    :cond_20
    const/4 v3, 0x4

    .line 1114
    new-array v5, v3, [I

    const/4 v3, 0x0

    :goto_e
    const/4 v7, 0x4

    .line 1116
    if-ge v3, v7, :cond_21

    .line 1117
    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->readAndBuffer()I

    move-result v7

    aput v7, v5, v3

    .line 1118
    aget v7, v5, v3

    const/4 v10, -0x1

    if-eq v7, v10, :cond_21

    .line 1116
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1121
    :cond_21
    invoke-virtual {v6}, Ljava/io/InputStream;->reset()V

    const/4 v7, 0x4

    .line 1124
    if-eq v3, v7, :cond_23

    .line 1134
    :cond_22
    :goto_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9, v8}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v7

    move-object v14, v2

    move-object v15, v4

    .line 1135
    goto/16 :goto_2

    :cond_23
    const/4 v3, 0x0

    .line 1126
    aget v3, v5, v3

    if-eqz v3, :cond_25

    :cond_24
    const/4 v3, 0x0

    .line 1130
    aget v3, v5, v3

    const/16 v7, 0x3c

    if-ne v3, v7, :cond_22

    const/4 v3, 0x1

    aget v3, v5, v3

    if-nez v3, :cond_22

    const/4 v3, 0x2

    aget v3, v5, v3

    if-nez v3, :cond_22

    const/4 v3, 0x3

    aget v3, v5, v3

    if-nez v3, :cond_22

    .line 1131
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_f

    :cond_25
    const/4 v3, 0x1

    .line 1126
    aget v3, v5, v3

    if-nez v3, :cond_24

    const/4 v3, 0x2

    aget v3, v5, v3

    if-nez v3, :cond_24

    const/4 v3, 0x3

    aget v3, v5, v3

    const/16 v7, 0x3c

    if-ne v3, v7, :cond_24

    .line 1127
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_f

    :cond_26
    const/4 v3, 0x4

    .line 1139
    new-array v5, v3, [I

    const/4 v3, 0x0

    :goto_10
    const/4 v7, 0x4

    .line 1141
    if-ge v3, v7, :cond_27

    .line 1142
    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->readAndBuffer()I

    move-result v7

    aput v7, v5, v3

    .line 1143
    aget v7, v5, v3

    const/4 v10, -0x1

    if-eq v7, v10, :cond_27

    .line 1141
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1146
    :cond_27
    invoke-virtual {v6}, Ljava/io/InputStream;->reset()V

    const/4 v7, 0x4

    .line 1148
    if-eq v3, v7, :cond_29

    .line 1158
    :cond_28
    :goto_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9, v8}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v7

    move-object v14, v2

    move-object v15, v4

    .line 1159
    goto/16 :goto_2

    :cond_29
    const/4 v3, 0x0

    .line 1150
    aget v3, v5, v3

    if-eqz v3, :cond_2b

    :cond_2a
    const/4 v3, 0x0

    .line 1154
    aget v3, v5, v3

    const/16 v7, 0x3c

    if-ne v3, v7, :cond_28

    const/4 v3, 0x1

    aget v3, v5, v3

    if-nez v3, :cond_28

    const/4 v3, 0x2

    aget v3, v5, v3

    const/16 v7, 0x3f

    if-ne v3, v7, :cond_28

    const/4 v3, 0x3

    aget v3, v5, v3

    if-nez v3, :cond_28

    .line 1155
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_11

    :cond_2b
    const/4 v3, 0x1

    .line 1150
    aget v3, v5, v3

    const/16 v7, 0x3c

    if-ne v3, v7, :cond_2a

    const/4 v3, 0x2

    aget v3, v5, v3

    if-nez v3, :cond_2a

    const/4 v3, 0x3

    aget v3, v5, v3

    const/16 v7, 0x3f

    if-ne v3, v7, :cond_2a

    .line 1151
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_11

    .line 1180
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3
.end method

.method public startDTDEntity(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 870
    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->DTDEntity:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLInputSource;ZZ)V

    .line 871
    return-void
.end method

.method public startDocumentEntity(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 856
    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->XMLEntity:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLInputSource;ZZ)V

    .line 857
    return-void
.end method

.method public startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLInputSource;ZZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 903
    invoke-virtual {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setupCurrentEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLInputSource;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 910
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    if-nez v1, :cond_1

    .line 922
    :cond_0
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    if-nez v1, :cond_2

    .line 926
    :goto_1
    return-void

    .line 910
    :cond_1
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityExpansionCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityExpansionCount:I

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityExpansionLimit:I

    if-le v1, v2, :cond_0

    .line 911
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "EntityExpansionLimitExceeded"

    const/4 v4, 0x1

    .line 913
    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    iget v6, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityExpansionLimit:I

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v8

    .line 911
    const/4 v5, 0x2

    invoke-virtual {v1, v2, v3, v4, v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 918
    iput v8, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityExpansionCount:I

    goto :goto_0

    .line 923
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-interface {v1, p1, v2, v0, v7}, Lmf/org/apache/xerces/impl/XMLEntityHandler;->startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_1
.end method

.method public startEntity(Ljava/lang/String;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 734
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;

    .line 735
    if-eqz v0, :cond_1

    .line 750
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;->isExternal()Z

    move-result v7

    .line 751
    if-nez v7, :cond_3

    .line 782
    :cond_0
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v6

    move v5, v6

    .line 783
    :goto_1
    if-ltz v5, :cond_17

    .line 784
    if-eq v5, v6, :cond_f

    .line 786
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v2, v5}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;

    .line 787
    :goto_2
    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;->name:Ljava/lang/String;

    if-eq v2, p1, :cond_10

    .line 783
    add-int/lit8 v2, v5, -0x1

    move v5, v2

    goto :goto_1

    .line 736
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    if-nez v0, :cond_2

    .line 746
    :goto_3
    return-void

    .line 738
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->clear()V

    .line 739
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/Augmentations;->removeAllItems()V

    .line 740
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    const-string/jumbo v2, "ENTITY_SKIPPED"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v3}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v0, p1, v2, v1, v3}, Lmf/org/apache/xerces/impl/XMLEntityHandler;->startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 742
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/Augmentations;->removeAllItems()V

    .line 743
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    const-string/jumbo v1, "ENTITY_SKIPPED"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v0, p1, v1}, Lmf/org/apache/xerces/impl/XMLEntityHandler;->endEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_3

    .line 751
    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    if-nez v2, :cond_6

    .line 752
    :cond_4
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;->isUnparsed()Z

    move-result v5

    const-string/jumbo v2, "%"

    .line 753
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    .line 754
    if-nez v6, :cond_7

    move v2, v3

    .line 755
    :goto_4
    if-eqz v5, :cond_8

    .line 757
    :cond_5
    :goto_5
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    if-nez v2, :cond_b

    .line 777
    :goto_6
    return-void

    .line 751
    :cond_6
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->isCachedDTD()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_7
    move v2, v4

    .line 754
    goto :goto_4

    .line 755
    :cond_8
    if-nez v2, :cond_a

    .line 756
    :cond_9
    if-eqz v6, :cond_0

    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fExternalParameterEntities:Z

    if-eqz v2, :cond_5

    goto :goto_0

    .line 755
    :cond_a
    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fExternalGeneralEntities:Z

    if-nez v2, :cond_9

    goto :goto_5

    .line 758
    :cond_b
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->clear()V

    .line 760
    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;

    .line 764
    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    if-nez v2, :cond_c

    move-object v2, v1

    .line 765
    :goto_7
    iget-object v3, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    if-nez v3, :cond_d

    move-object v3, v1

    .line 766
    :goto_8
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 767
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    .line 768
    iget-object v6, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    if-nez v6, :cond_e

    move-object v0, v1

    .line 767
    :goto_9
    invoke-virtual {v5, v0, v2, v3, v4}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/Augmentations;->removeAllItems()V

    .line 771
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    const-string/jumbo v2, "ENTITY_SKIPPED"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v3}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v0, p1, v2, v1, v3}, Lmf/org/apache/xerces/impl/XMLEntityHandler;->startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 773
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/Augmentations;->removeAllItems()V

    .line 774
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    const-string/jumbo v1, "ENTITY_SKIPPED"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v0, p1, v1}, Lmf/org/apache/xerces/impl/XMLEntityHandler;->endEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_6

    .line 764
    :cond_c
    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 765
    :cond_d
    iget-object v3, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 768
    :cond_e
    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 785
    :cond_f
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    goto/16 :goto_2

    .line 788
    :cond_10
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 789
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    :goto_a
    if-ge v5, v6, :cond_11

    .line 790
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v2, v5}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;

    const-string/jumbo v9, " -> "

    .line 791
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 792
    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;->name:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 789
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_a

    :cond_11
    const-string/jumbo v2, " -> "

    .line 794
    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 795
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->name:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, " -> "

    .line 796
    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 797
    invoke-virtual {v8, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 798
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v5, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v6, "RecursiveReference"

    .line 800
    new-array v9, v10, [Ljava/lang/Object;

    aput-object p1, v9, v4

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v3

    .line 798
    invoke-virtual {v2, v5, v6, v9, v10}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 802
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    if-nez v2, :cond_12

    .line 822
    :goto_b
    return-void

    .line 803
    :cond_12
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->clear()V

    .line 805
    if-nez v7, :cond_13

    .line 815
    :goto_c
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/Augmentations;->removeAllItems()V

    .line 816
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    const-string/jumbo v2, "ENTITY_SKIPPED"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v3}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v0, p1, v2, v1, v3}, Lmf/org/apache/xerces/impl/XMLEntityHandler;->startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 818
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/Augmentations;->removeAllItems()V

    .line 819
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    const-string/jumbo v1, "ENTITY_SKIPPED"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v0, p1, v1}, Lmf/org/apache/xerces/impl/XMLEntityHandler;->endEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_b

    .line 806
    :cond_13
    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;

    .line 808
    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    if-nez v2, :cond_14

    move-object v2, v1

    .line 809
    :goto_d
    iget-object v3, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    if-nez v3, :cond_15

    move-object v3, v1

    .line 810
    :goto_e
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 811
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    .line 812
    iget-object v6, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    if-nez v6, :cond_16

    move-object v0, v1

    .line 811
    :goto_f
    invoke-virtual {v5, v0, v2, v3, v4}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 808
    :cond_14
    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    .line 809
    :cond_15
    iget-object v3, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    .line 812
    :cond_16
    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 828
    :cond_17
    if-nez v7, :cond_18

    .line 835
    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager$InternalEntity;

    .line 836
    new-instance v4, Ljava/io/StringReader;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$InternalEntity;->text:Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 837
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    .line 841
    :goto_10
    invoke-virtual {p0, p1, v0, p2, v7}, Lmf/org/apache/xerces/impl/XMLEntityManager;->startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLInputSource;ZZ)V

    .line 843
    return-void

    .line 829
    :cond_18
    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;

    .line 830
    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->resolveEntity(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v0

    goto :goto_10
.end method

.method public startExternalSubset()V
    .locals 1

    .prologue
    .line 876
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fInExternalSubset:Z

    .line 877
    return-void
.end method
