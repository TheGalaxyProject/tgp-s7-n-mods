.class public Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;
.super Ljava/lang/Object;
.source "XMLDTDValidator.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLComponent;
.implements Lmf/org/apache/xerces/xni/parser/XMLDocumentFilter;
.implements Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;
.implements Lmf/org/apache/xerces/impl/RevalidationHandler;


# static fields
.field protected static final BALANCE_SYNTAX_TREES:Ljava/lang/String; = "http://apache.org/xml/features/validation/balance-syntax-trees"

.field protected static final DATATYPE_VALIDATOR_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/datatype-validator-factory"

.field private static final DEBUG_ATTRIBUTES:Z = false

.field private static final DEBUG_ELEMENT_CHILDREN:Z = false

.field protected static final DYNAMIC_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/dynamic"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field protected static final GRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field private static final TOP_LEVEL_SCOPE:I = -0x1

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field protected static final WARN_ON_DUPLICATE_ATTDEF:Ljava/lang/String; = "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"


# instance fields
.field protected fBalanceSyntaxTrees:Z

.field private final fBuffer:Ljava/lang/StringBuffer;

.field private fContentSpecTypeStack:[I

.field private fCurrentContentSpecType:I

.field private final fCurrentElement:Lmf/org/apache/xerces/xni/QName;

.field private fCurrentElementIndex:I

.field protected fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

.field protected fDTDValidation:Z

.field protected fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

.field protected fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

.field protected fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

.field protected fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

.field protected fDynamicValidation:Z

.field private fElementChildren:[Lmf/org/apache/xerces/xni/QName;

.field private fElementChildrenLength:I

.field private fElementChildrenOffsetStack:[I

.field private fElementDepth:I

.field private fElementIndexStack:[I

.field private fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

.field private final fEntityDecl:Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

.field protected fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field protected fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

.field protected fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

.field private fInCDATASection:Z

.field private fInElementContent:Z

.field protected fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

.field protected fNamespaces:Z

.field private fPerformValidation:Z

.field private final fRootElement:Lmf/org/apache/xerces/xni/QName;

.field private fSchemaType:Ljava/lang/String;

.field protected fSeenDoctypeDecl:Z

.field private fSeenRootElement:Z

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field private final fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

.field private fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

.field private final fTempQName:Lmf/org/apache/xerces/xni/QName;

.field protected fValENTITIES:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

.field protected fValENTITY:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

.field protected fValID:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

.field protected fValIDRef:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

.field protected fValIDRefs:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

.field protected fValNMTOKEN:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

.field protected fValNMTOKENS:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

.field protected fValNOTATION:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

.field protected fValidation:Z

.field protected fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

.field protected final fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

.field protected fWarnDuplicateAttdef:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 150
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "http://xml.org/sax/features/namespaces"

    .line 151
    aput-object v1, v0, v5

    const-string/jumbo v1, "http://xml.org/sax/features/validation"

    .line 152
    aput-object v1, v0, v6

    const-string/jumbo v1, "http://apache.org/xml/features/validation/dynamic"

    .line 153
    aput-object v1, v0, v2

    const-string/jumbo v1, "http://apache.org/xml/features/validation/balance-syntax-trees"

    .line 154
    aput-object v1, v0, v3

    .line 150
    sput-object v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    .line 158
    new-array v0, v4, [Ljava/lang/Boolean;

    .line 161
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    .line 162
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v3

    .line 158
    sput-object v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    const/4 v0, 0x5

    .line 166
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/symbol-table"

    .line 167
    aput-object v1, v0, v5

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/error-reporter"

    .line 168
    aput-object v1, v0, v6

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/grammar-pool"

    .line 169
    aput-object v1, v0, v2

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    .line 170
    aput-object v1, v0, v3

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/validation-manager"

    .line 171
    aput-object v1, v0, v4

    .line 166
    sput-object v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    const/4 v0, 0x5

    .line 175
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    .line 189
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x20

    const/16 v3, 0x8

    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    .line 199
    new-instance v1, Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/validation/ValidationState;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    .line 242
    iput-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    .line 261
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenDoctypeDecl:Z

    .line 272
    new-instance v1, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v1}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    .line 275
    iput v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    .line 278
    iput v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    .line 281
    new-instance v1, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v1}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fRootElement:Lmf/org/apache/xerces/xni/QName;

    .line 283
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInCDATASection:Z

    .line 287
    new-array v1, v3, [I

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementIndexStack:[I

    .line 290
    new-array v1, v3, [I

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fContentSpecTypeStack:[I

    .line 293
    new-array v1, v3, [Lmf/org/apache/xerces/xni/QName;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

    .line 310
    new-array v1, v4, [Lmf/org/apache/xerces/xni/QName;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    .line 313
    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    .line 320
    new-array v1, v4, [I

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenOffsetStack:[I

    .line 323
    iput v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    .line 328
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenRootElement:Z

    .line 331
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    .line 336
    new-instance v1, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    .line 339
    new-instance v1, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    .line 342
    new-instance v1, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fEntityDecl:Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    .line 345
    new-instance v1, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v1}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    .line 348
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fBuffer:Ljava/lang/StringBuffer;

    .line 389
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 390
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

    new-instance v2, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v2}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    aput-object v2, v1, v0

    .line 389
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 392
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    .line 394
    return-void
.end method

.method private charDataInContent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1777
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    array-length v0, v0

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    if-le v0, v1, :cond_0

    .line 1782
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    aget-object v0, v0, v1

    .line 1783
    if-eqz v0, :cond_1

    .line 1789
    :goto_1
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/QName;->clear()V

    .line 1790
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    .line 1792
    return-void

    .line 1778
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lmf/org/apache/xerces/xni/QName;

    .line 1779
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1780
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    goto :goto_0

    .line 1784
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    :goto_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1785
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    new-instance v2, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v2}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    aput-object v2, v1, v0

    .line 1784
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1787
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    aget-object v0, v0, v1

    goto :goto_1
.end method

.method private checkContent(I[Lmf/org/apache/xerces/xni/QName;II)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1691
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-virtual {v0, p1, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDecl(ILmf/org/apache/xerces/impl/dtd/XMLElementDecl;)Z

    .line 1694
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 1697
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    const/4 v1, 0x1

    .line 1705
    if-eq v0, v1, :cond_1

    .line 1714
    if-nez v0, :cond_2

    .line 1755
    :cond_0
    :goto_0
    return v3

    .line 1710
    :cond_1
    if-eqz p4, :cond_0

    .line 1711
    return v2

    :cond_2
    const/4 v1, 0x2

    .line 1720
    if-ne v0, v1, :cond_4

    .line 1724
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->contentModelValidator:Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    .line 1725
    invoke-interface {v0, p2, p3, p4}, Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;->validate([Lmf/org/apache/xerces/xni/QName;II)I

    move-result v0

    .line 1726
    return v0

    :cond_4
    const/4 v1, 0x3

    .line 1721
    if-eq v0, v1, :cond_3

    .line 1728
    if-ne v0, v3, :cond_0

    goto :goto_0
.end method

.method private ensureStackCapacity(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1859
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

    array-length v0, v0

    if-eq p1, v0, :cond_0

    .line 1881
    :goto_0
    return-void

    .line 1861
    :cond_0
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [Lmf/org/apache/xerces/xni/QName;

    .line 1862
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

    invoke-static {v1, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1863
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

    .line 1865
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

    aget-object v0, v0, p1

    .line 1866
    if-eqz v0, :cond_2

    .line 1872
    :cond_1
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [I

    .line 1873
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementIndexStack:[I

    invoke-static {v1, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1874
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementIndexStack:[I

    .line 1876
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [I

    .line 1877
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fContentSpecTypeStack:[I

    invoke-static {v1, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1878
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fContentSpecTypeStack:[I

    goto :goto_0

    :cond_2
    move v0, p1

    .line 1867
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1868
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

    new-instance v2, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v2}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    aput-object v2, v1, v0

    .line 1867
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getAttributeTypeName(Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1797
    iget-object v1, p1, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    packed-switch v1, :pswitch_data_0

    .line 1826
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    return-object v0

    .line 1799
    :pswitch_0
    iget-object v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    if-nez v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->fENTITYSymbol:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->fENTITIESSymbol:Ljava/lang/String;

    goto :goto_0

    .line 1802
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1803
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1804
    :goto_1
    iget-object v2, p1, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->enumeration:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 1805
    if-gtz v0, :cond_1

    .line 1808
    :goto_2
    iget-object v2, p1, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->enumeration:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1804
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1806
    :cond_1
    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1810
    :cond_2
    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1811
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1814
    :pswitch_2
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->fIDSymbol:Ljava/lang/String;

    return-object v0

    .line 1817
    :pswitch_3
    iget-object v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    if-nez v0, :cond_3

    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->fIDREFSymbol:Ljava/lang/String;

    :goto_3
    return-object v0

    :cond_3
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->fIDREFSSymbol:Ljava/lang/String;

    goto :goto_3

    .line 1820
    :pswitch_4
    iget-object v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    if-nez v0, :cond_4

    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->fNMTOKENSymbol:Ljava/lang/String;

    :goto_4
    return-object v0

    :cond_4
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->fNMTOKENSSymbol:Ljava/lang/String;

    goto :goto_4

    .line 1823
    :pswitch_5
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->fNOTATIONSymbol:Ljava/lang/String;

    return-object v0

    .line 1797
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getContentSpecType(I)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 1763
    if-gt p1, v0, :cond_1

    .line 1768
    :cond_0
    :goto_0
    return v0

    .line 1764
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-virtual {v1, p1, v2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDecl(ILmf/org/apache/xerces/impl/dtd/XMLElementDecl;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1765
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    goto :goto_0
.end method

.method private normalizeAttrValue(Lmf/org/apache/xerces/xni/XMLAttributes;I)Z
    .locals 12

    .prologue
    const/16 v11, 0x20

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1558
    invoke-interface {p1, p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v8

    .line 1559
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    new-array v9, v0, [C

    .line 1561
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1562
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v8, v5, v0, v9, v5}, Ljava/lang/String;->getChars(II[CI)V

    move v7, v5

    move v0, v5

    move v1, v5

    move v2, v5

    move v4, v5

    move v6, v3

    .line 1563
    :goto_0
    array-length v10, v9

    if-ge v7, v10, :cond_6

    .line 1565
    aget-char v10, v9, v7

    if-eq v10, v11, :cond_0

    .line 1608
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fBuffer:Ljava/lang/StringBuffer;

    aget-char v4, v9, v7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1609
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    move v4, v5

    move v6, v5

    .line 1563
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1568
    :cond_0
    if-nez v2, :cond_3

    .line 1573
    :goto_2
    if-nez v4, :cond_4

    .line 1579
    :cond_1
    if-eqz v6, :cond_5

    .line 1580
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v2, v5

    move v4, v3

    .line 1570
    goto :goto_2

    .line 1573
    :cond_4
    if-nez v6, :cond_1

    .line 1575
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fBuffer:Ljava/lang/StringBuffer;

    aget-char v10, v9, v7

    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1576
    add-int/lit8 v1, v1, 0x1

    move v4, v5

    .line 1577
    goto :goto_1

    .line 1579
    :cond_5
    if-eqz v4, :cond_2

    goto :goto_1

    .line 1614
    :cond_6
    if-gtz v1, :cond_8

    .line 1634
    :cond_7
    :goto_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1635
    invoke-interface {p1, p2, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->setValue(ILjava/lang/String;)V

    .line 1636
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_4
    return v3

    .line 1614
    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fBuffer:Ljava/lang/StringBuffer;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v11, :cond_7

    .line 1615
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fBuffer:Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_3

    :cond_9
    move v3, v5

    .line 1636
    goto :goto_4
.end method

.method private final rootElementSpecified(Lmf/org/apache/xerces/xni/QName;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1641
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-nez v0, :cond_0

    .line 1651
    :goto_0
    return-void

    .line 1642
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fRootElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 1643
    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 1644
    if-nez v0, :cond_2

    .line 1645
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "RootElementTypeMustMatchDoctypedecl"

    const/4 v5, 0x2

    .line 1647
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    aput-object v1, v5, v7

    .line 1645
    invoke-virtual {v2, v3, v4, v5, v7}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_0

    .line 1644
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0
.end method


# virtual methods
.method protected addDTDDefaultAttrsAndValidate(Lmf/org/apache/xerces/xni/QName;ILmf/org/apache/xerces/xni/XMLAttributes;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 1159
    if-ne p2, v0, :cond_1

    .line 1160
    :cond_0
    return-void

    .line 1159
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    .line 1168
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getFirstAttributeDeclIndex(I)I

    move-result v0

    move v5, v0

    :goto_0
    const/4 v0, -0x1

    .line 1170
    if-eq v5, v0, :cond_f

    .line 1172
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    invoke-virtual {v0, v5, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getAttributeDecl(ILmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;)Z

    .line 1188
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 1189
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    .line 1190
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 1191
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->getAttributeTypeName(Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;)Ljava/lang/String;

    move-result-object v8

    .line 1192
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-short v1, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultType:S

    const/4 v0, 0x0

    .line 1195
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultValue:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 1199
    :goto_1
    const/4 v6, 0x0

    const/4 v2, 0x2

    .line 1200
    if-eq v1, v2, :cond_4

    const/4 v1, 0x0

    .line 1201
    :goto_2
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    if-eq v8, v2, :cond_5

    const/4 v2, 0x0

    .line 1203
    :goto_3
    if-nez v2, :cond_6

    .line 1204
    :cond_2
    invoke-interface {p3}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v9

    const/4 v2, 0x0

    .line 1205
    :goto_4
    if-ge v2, v9, :cond_21

    .line 1206
    invoke-interface {p3, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v10

    if-eq v10, v7, :cond_8

    .line 1205
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1196
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultValue:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    .line 1200
    goto :goto_2

    :cond_5
    const/4 v2, 0x1

    .line 1201
    goto :goto_3

    .line 1203
    :cond_6
    if-nez v1, :cond_2

    if-nez v0, :cond_2

    move v2, v6

    .line 1213
    :goto_5
    if-eqz v2, :cond_9

    .line 1250
    :cond_7
    :goto_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getNextAttributeDeclIndex(I)I

    move-result v0

    move v5, v0

    goto :goto_0

    .line 1207
    :cond_8
    const/4 v2, 0x1

    goto :goto_5

    .line 1214
    :cond_9
    if-nez v1, :cond_b

    .line 1222
    if-eqz v0, :cond_7

    .line 1223
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-nez v1, :cond_c

    .line 1234
    :cond_a
    :goto_7
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fNamespaces:Z

    if-nez v1, :cond_d

    move-object v1, v3

    move-object v2, v4

    .line 1245
    :goto_8
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v3, v2, v1, v7, v4}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p3, v1, v8, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1215
    :cond_b
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    .line 1216
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v7, v0, v1

    .line 1217
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_REQUIRED_ATTRIBUTE_NOT_SPECIFIED"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_6

    .line 1223
    :cond_c
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->getStandalone()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1224
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v1, v5}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getAttributeDeclIsExternal(I)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x2

    .line 1226
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    aput-object v6, v1, v2

    const/4 v2, 0x1

    aput-object v7, v1, v2

    .line 1227
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v6, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v9, "MSG_DEFAULTED_ATTRIBUTE_NOT_SPECIFIED"

    const/4 v10, 0x1

    invoke-virtual {v2, v6, v9, v1, v10}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_7

    :cond_d
    const/16 v1, 0x3a

    .line 1235
    invoke-virtual {v7, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    .line 1236
    if-ne v1, v2, :cond_e

    move-object v1, v3

    move-object v2, v4

    goto :goto_8

    :cond_e
    const/4 v2, 0x0

    .line 1237
    invoke-virtual {v7, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1238
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v3, v2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1239
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1240
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 1257
    :cond_f
    invoke-interface {p3}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v4

    const/4 v0, 0x0

    move v2, v0

    .line 1258
    :goto_9
    if-ge v2, v4, :cond_20

    .line 1259
    invoke-interface {p3, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v5

    .line 1260
    const/4 v0, 0x0

    .line 1261
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-nez v1, :cond_11

    .line 1282
    :cond_10
    :goto_a
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v1, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getFirstAttributeDeclIndex(I)I

    move-result v1

    move v3, v1

    :goto_b
    const/4 v1, -0x1

    .line 1283
    if-eq v3, v1, :cond_13

    .line 1284
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    invoke-virtual {v1, v3, v6}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getAttributeDecl(ILmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;)Z

    .line 1285
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq v1, v5, :cond_12

    .line 1291
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getNextAttributeDeclIndex(I)I

    move-result v1

    move v3, v1

    goto :goto_b

    .line 1262
    :cond_11
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->getStandalone()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1268
    invoke-interface {p3, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getNonNormalizedValue(I)Ljava/lang/String;

    move-result-object v1

    .line 1269
    if-eqz v1, :cond_10

    .line 1270
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->getExternalEntityRefInAttrValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1271
    if-eqz v1, :cond_10

    .line 1272
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v6, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v7, "MSG_REFERENCE_TO_EXTERNALLY_DECLARED_ENTITY_WHEN_STANDALONE"

    const/4 v8, 0x1

    .line 1274
    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    .line 1272
    const/4 v1, 0x1

    invoke-virtual {v3, v6, v7, v8, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_a

    .line 1288
    :cond_12
    const/4 v0, 0x1

    .line 1293
    :cond_13
    if-eqz v0, :cond_18

    .line 1311
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->getAttributeTypeName(Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;)Ljava/lang/String;

    move-result-object v1

    .line 1312
    invoke-interface {p3, v2, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->setType(ILjava/lang/String;)V

    .line 1313
    invoke-interface {p3, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    const-string/jumbo v6, "ATTRIBUTE_DECLARED"

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v6, v7}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    invoke-interface {p3, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    .line 1318
    invoke-interface {p3, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->isSpecified(I)Z

    move-result v6

    if-nez v6, :cond_19

    .line 1332
    :cond_14
    :goto_c
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v1, :cond_17

    .line 1335
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultType:S

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1e

    .line 1350
    :cond_15
    :goto_d
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1f

    .line 1357
    :cond_16
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    invoke-virtual {p0, p1, v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->validateDTDattribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;)V

    .line 1258
    :cond_17
    :goto_e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_9

    .line 1294
    :cond_18
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v0, :cond_17

    const/4 v0, 0x2

    .line 1297
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object v5, v0, v1

    .line 1299
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v5, "MSG_ATTRIBUTE_NOT_DECLARED"

    const/4 v6, 0x1

    invoke-virtual {v1, v3, v5, v0, v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_e

    .line 1318
    :cond_19
    sget-object v6, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    if-eq v1, v6, :cond_14

    .line 1319
    invoke-direct {p0, p3, v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->normalizeAttrValue(Lmf/org/apache/xerces/xni/XMLAttributes;I)Z

    move-result v6

    .line 1320
    invoke-interface {p3, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    .line 1321
    iget-boolean v7, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-nez v7, :cond_1b

    :cond_1a
    move-object v0, v1

    goto :goto_c

    :cond_1b
    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->getStandalone()Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 1322
    if-nez v6, :cond_1c

    move-object v0, v1

    goto :goto_c

    .line 1323
    :cond_1c
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v6, v3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getAttributeDeclIsExternal(I)Z

    move-result v3

    if-nez v3, :cond_1d

    move-object v0, v1

    goto :goto_c

    .line 1326
    :cond_1d
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v6, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v7, "MSG_ATTVALUE_CHANGED_DURING_NORMALIZATION_WHEN_STANDALONE"

    const/4 v8, 0x3

    .line 1328
    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v9, 0x1

    aput-object v0, v8, v9

    const/4 v0, 0x2

    aput-object v1, v8, v0

    .line 1326
    const/4 v0, 0x1

    invoke-virtual {v3, v6, v7, v8, v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    move-object v0, v1

    goto :goto_c

    .line 1337
    :cond_1e
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultValue:Ljava/lang/String;

    .line 1339
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    const/4 v3, 0x4

    .line 1340
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    aput-object v7, v3, v6

    const/4 v6, 0x1

    .line 1341
    aput-object v5, v3, v6

    const/4 v5, 0x2

    .line 1342
    aput-object v0, v3, v5

    const/4 v5, 0x3

    .line 1343
    aput-object v1, v3, v5

    .line 1344
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v5, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v6, "MSG_FIXED_ATTVALUE_INVALID"

    const/4 v7, 0x1

    invoke-virtual {v1, v5, v6, v3, v7}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_d

    .line 1351
    :cond_1f
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    const/4 v3, 0x2

    if-eq v1, v3, :cond_16

    .line 1352
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    const/4 v3, 0x3

    if-eq v1, v3, :cond_16

    .line 1353
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    const/4 v3, 0x4

    if-eq v1, v3, :cond_16

    .line 1354
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    const/4 v3, 0x5

    if-eq v1, v3, :cond_16

    .line 1355
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    const/4 v3, 0x6

    if-eq v1, v3, :cond_16

    goto/16 :goto_e

    .line 1361
    :cond_20
    return-void

    :cond_21
    move v2, v6

    goto/16 :goto_5
.end method

.method public characterData(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)Z
    .locals 4

    .prologue
    .line 2111
    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/xni/XMLString;-><init>([CII)V

    invoke-virtual {p0, v0, p2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 2112
    const/4 v0, 0x1

    return v0
.end method

.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 838
    iget v0, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    :goto_0
    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v4, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/2addr v3, v4

    if-ge v0, v3, :cond_d

    .line 839
    iget-object v3, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v3, v3, v0

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->isSpace(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 838
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 846
    :goto_1
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    if-nez v3, :cond_4

    :cond_1
    move v3, v2

    .line 854
    :goto_2
    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-nez v4, :cond_6

    .line 885
    :cond_2
    :goto_3
    if-nez v3, :cond_c

    .line 889
    :cond_3
    :goto_4
    return-void

    .line 846
    :cond_4
    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInCDATASection:Z

    if-nez v3, :cond_1

    .line 847
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v3, :cond_5

    move v3, v2

    goto :goto_2

    .line 848
    :cond_5
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v3, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    move v3, v1

    .line 849
    goto :goto_2

    .line 855
    :cond_6
    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    if-nez v4, :cond_8

    .line 879
    :cond_7
    :goto_5
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    if-ne v0, v2, :cond_2

    .line 880
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->charDataInContent()V

    goto :goto_3

    .line 856
    :cond_8
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->getStandalone()Z

    move-result v4

    if-nez v4, :cond_a

    .line 864
    :cond_9
    :goto_6
    if-eqz v0, :cond_b

    .line 869
    :goto_7
    if-eqz p2, :cond_7

    const-string/jumbo v0, "CHAR_REF_PROBABLE_WS"

    invoke-interface {p2, v0}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v4, :cond_7

    .line 870
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v5, "MSG_CONTENT_INVALID_SPECIFIED"

    const/4 v6, 0x3

    .line 872
    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v6, v1

    .line 873
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget v7, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    invoke-virtual {v1, v7}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpecAsString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v2

    const/4 v1, 0x2

    const-string/jumbo v7, "character reference"

    .line 874
    aput-object v7, v6, v1

    .line 870
    invoke-virtual {v0, v4, v5, v6, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_5

    .line 857
    :cond_a
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDeclIsExternal(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 858
    if-eqz v0, :cond_9

    .line 859
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v5, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v6, "MSG_WHITE_SPACE_IN_ELEMENT_CONTENT_WHEN_STANDALONE"

    invoke-virtual {v4, v5, v6, v7, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_6

    .line 865
    :cond_b
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->charDataInContent()V

    goto :goto_7

    .line 885
    :cond_c
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_3

    .line 886
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_4

    :cond_d
    move v0, v2

    goto/16 :goto_1
.end method

.method public comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 989
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-nez v0, :cond_1

    .line 1001
    :cond_0
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_2

    .line 1005
    :goto_1
    return-void

    .line 989
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDecl(ILmf/org/apache/xerces/impl/dtd/XMLElementDecl;)Z

    .line 991
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    if-ne v0, v6, :cond_0

    .line 992
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v2, "MSG_CONTENT_INVALID_SPECIFIED"

    const/4 v3, 0x3

    .line 994
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v5

    const-string/jumbo v4, "EMPTY"

    .line 995
    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string/jumbo v5, "comment"

    .line 996
    aput-object v5, v3, v4

    .line 992
    invoke-virtual {v0, v1, v2, v3, v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_0

    .line 1002
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_1
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 730
    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenDoctypeDecl:Z

    .line 731
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fRootElement:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, v4, p1, p1, v4}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p3, v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 738
    :goto_0
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v3

    move-object v1, p2

    move-object v2, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->getGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    .line 740
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v1, :cond_1

    .line 753
    :cond_0
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v1, :cond_4

    .line 764
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->setCachedDTD(Z)V

    .line 766
    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->setActiveGrammar(Lmf/org/apache/xerces/impl/dtd/DTDGrammar;)V

    .line 769
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_6

    .line 773
    :goto_3
    return-void

    .line 749
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v1, :cond_0

    if-eqz p3, :cond_3

    .line 750
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->retrieveGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    goto :goto_1

    .line 749
    :cond_3
    if-nez p2, :cond_2

    goto :goto_1

    .line 755
    :cond_4
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fBalanceSyntaxTrees:Z

    if-eqz v1, :cond_5

    .line 759
    new-instance v1, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v1, v2, v0}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    goto :goto_2

    .line 756
    :cond_5
    new-instance v1, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v1, v2, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    goto :goto_2

    .line 770
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_3

    .line 736
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 809
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->handleStartElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)Z

    move-result v0

    .line 811
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v1, :cond_0

    .line 814
    :goto_0
    if-eqz v0, :cond_1

    .line 819
    :goto_1
    return-void

    .line 812
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0

    .line 815
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, v0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->handleEndElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;Z)V

    goto :goto_1
.end method

.method public endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 956
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInCDATASection:Z

    .line 958
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_0

    .line 962
    :goto_0
    return-void

    .line 959
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 973
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_0

    .line 977
    :goto_0
    return-void

    .line 974
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 925
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->handleEndElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;Z)V

    .line 927
    return-void
.end method

.method public endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1100
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_0

    .line 1103
    :goto_0
    return-void

    .line 1101
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method protected endNamespaceScope(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;Z)V
    .locals 2

    .prologue
    .line 2093
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_1

    .line 2102
    :cond_0
    :goto_0
    return-void

    .line 2093
    :cond_1
    if-nez p3, :cond_0

    .line 2100
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {v0, v1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    return-object v0
.end method

.method public getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    return-object v0
.end method

.method protected getExternalEntityRefInAttrValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x26

    const/4 v6, -0x1

    .line 1365
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1366
    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    move v1, v0

    .line 1367
    :goto_0
    if-eq v1, v6, :cond_4

    .line 1368
    add-int/lit8 v0, v1, 0x1

    if-lt v0, v2, :cond_1

    .line 1382
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 1369
    :cond_1
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x23

    if-eq v0, v3, :cond_0

    const/16 v0, 0x3b

    .line 1370
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 1371
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1372
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1373
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getEntityDeclIndex(Ljava/lang/String;)I

    move-result v3

    .line 1374
    if-le v3, v6, :cond_0

    .line 1375
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fEntityDecl:Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    invoke-virtual {v4, v3, v5}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getEntityDecl(ILmf/org/apache/xerces/impl/dtd/XMLEntityDecl;)Z

    .line 1376
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fEntityDecl:Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    iget-boolean v3, v3, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->inExternal:Z

    if-eqz v3, :cond_3

    .line 1378
    :cond_2
    return-object v0

    .line 1377
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fEntityDecl:Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->value:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->getExternalEntityRefInAttrValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 1384
    :cond_4
    return-object v8
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 588
    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 589
    sget-object v1, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 588
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 590
    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    aget-object v0, v1, v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 593
    return-object v0
.end method

.method getGrammarBucket()Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    return-object v0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 606
    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 607
    sget-object v1, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 606
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 608
    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    aget-object v0, v1, v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 611
    return-object v0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 528
    sget-object v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 556
    sget-object v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected handleEndElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v8, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2017
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    .line 2020
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-nez v0, :cond_0

    .line 2051
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {p0, v0, p2, p3}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->endNamespaceScope(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;Z)V

    .line 2054
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    if-lt v0, v8, :cond_5

    .line 2057
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    if-ltz v0, :cond_6

    .line 2082
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    .line 2084
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementIndexStack:[I

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    aget v0, v0, v3

    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    .line 2085
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fContentSpecTypeStack:[I

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    aget v0, v0, v3

    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    .line 2086
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_9

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    .line 2088
    return-void

    .line 2021
    :cond_0
    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    .line 2022
    if-ne v3, v8, :cond_2

    .line 2048
    :cond_1
    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenOffsetStack:[I

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    add-int/lit8 v3, v3, 0x1

    aget v0, v0, v3

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    goto :goto_0

    .line 2022
    :cond_2
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    if-eq v0, v8, :cond_1

    .line 2023
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    .line 2024
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenOffsetStack:[I

    iget v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    add-int/lit8 v4, v4, 0x1

    .line 2025
    iget v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    sub-int/2addr v5, v4

    .line 2026
    invoke-direct {p0, v3, v0, v4, v5}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->checkContent(I[Lmf/org/apache/xerces/xni/QName;II)I

    move-result v0

    .line 2029
    if-eq v0, v8, :cond_1

    .line 2030
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-virtual {v4, v3, v6}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDecl(ILmf/org/apache/xerces/impl/dtd/XMLElementDecl;)Z

    .line 2031
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    iget-short v4, v4, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    if-eq v4, v2, :cond_3

    .line 2038
    if-ne v0, v5, :cond_4

    const-string/jumbo v0, "MSG_CONTENT_INCOMPLETE"

    .line 2040
    :goto_3
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v5, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 2042
    new-array v6, v7, [Ljava/lang/Object;

    iget-object v7, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v6, v1

    .line 2043
    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v7, v3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpecAsString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 2040
    invoke-virtual {v4, v5, v0, v6, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_2

    .line 2032
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_CONTENT_INVALID"

    .line 2034
    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v6, v5, v1

    const-string/jumbo v6, "EMPTY"

    aput-object v6, v5, v2

    .line 2032
    invoke-virtual {v0, v3, v4, v5, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string/jumbo v0, "MSG_CONTENT_INVALID"

    goto :goto_3

    .line 2055
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "FWK008 Element stack underflow"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2058
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/QName;->clear()V

    .line 2059
    iput v8, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    .line 2060
    iput v8, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    .line 2061
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    .line 2069
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-nez v0, :cond_8

    .line 2078
    :cond_7
    :goto_4
    return-void

    .line 2070
    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/validation/ValidationState;->checkIDRefID()Ljava/lang/String;

    move-result-object v0

    .line 2071
    if-eqz v0, :cond_7

    .line 2072
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v5, "MSG_ELEMENT_WITH_ID_REQUIRED"

    .line 2074
    new-array v6, v2, [Ljava/lang/Object;

    aput-object v0, v6, v1

    .line 2072
    invoke-virtual {v3, v4, v5, v6, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_4

    :cond_9
    move v0, v2

    .line 2086
    goto/16 :goto_1
.end method

.method protected handleStartElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1897
    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenRootElement:Z

    if-eqz v2, :cond_3

    .line 1925
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v2, :cond_4

    .line 1948
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDeclIndex(Lmf/org/apache/xerces/xni/QName;)I

    move-result v2

    iput v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    .line 1950
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpecType(I)S

    move-result v2

    iput v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    .line 1951
    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    if-eq v2, v4, :cond_8

    .line 1963
    :cond_0
    :goto_1
    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    invoke-virtual {p0, p1, v2, p2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->addDTDDefaultAttrsAndValidate(Lmf/org/apache/xerces/xni/QName;ILmf/org/apache/xerces/xni/XMLAttributes;)V

    .line 1967
    :cond_1
    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    .line 1971
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    .line 1972
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-nez v0, :cond_9

    .line 1999
    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    .line 2000
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->ensureStackCapacity(I)V

    .line 2001
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    .line 2002
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementIndexStack:[I

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    aput v3, v0, v2

    .line 2003
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fContentSpecTypeStack:[I

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    aput v3, v0, v2

    .line 2004
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->startNamespaceScope(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 2005
    return v1

    .line 1919
    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->validate()Z

    move-result v2

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    .line 1920
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenRootElement:Z

    .line 1921
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->setEntityState(Lmf/org/apache/xerces/impl/validation/EntityState;)V

    .line 1922
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenDoctypeDecl:Z

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->setGrammarFound(Z)V

    .line 1923
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->rootElementSpecified(Lmf/org/apache/xerces/xni/QName;)V

    goto :goto_0

    .line 1927
    :cond_4
    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v2, :cond_5

    .line 1932
    :goto_3
    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-nez v2, :cond_6

    .line 1939
    :goto_4
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    if-eqz v2, :cond_1

    .line 1940
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 1941
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v1, :cond_7

    .line 1943
    :goto_5
    return v0

    .line 1928
    :cond_5
    iput v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    .line 1929
    iput v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    .line 1930
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    goto :goto_3

    .line 1933
    :cond_6
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_GRAMMAR_NOT_FOUND"

    .line 1935
    new-array v5, v0, [Ljava/lang/Object;

    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v6, v5, v1

    .line 1933
    invoke-virtual {v2, v3, v4, v5, v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_4

    .line 1942
    :cond_7
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    goto :goto_5

    .line 1951
    :cond_8
    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v2, :cond_0

    .line 1952
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_ELEMENT_NOT_DECLARED"

    .line 1954
    new-array v5, v0, [Ljava/lang/Object;

    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v6, v5, v1

    .line 1952
    invoke-virtual {v2, v3, v4, v5, v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_1

    .line 1974
    :cond_9
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenOffsetStack:[I

    array-length v0, v0

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    if-le v0, v2, :cond_a

    .line 1979
    :goto_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenOffsetStack:[I

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    aput v3, v0, v2

    .line 1982
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    array-length v0, v0

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    if-le v0, v2, :cond_b

    .line 1987
    :goto_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    aget-object v0, v0, v2

    .line 1988
    if-eqz v0, :cond_c

    .line 1994
    :goto_8
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    .line 1995
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    goto/16 :goto_2

    .line 1975
    :cond_a
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenOffsetStack:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 1976
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenOffsetStack:[I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenOffsetStack:[I

    array-length v3, v3

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1977
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenOffsetStack:[I

    goto :goto_6

    .line 1983
    :cond_b
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lmf/org/apache/xerces/xni/QName;

    .line 1984
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    array-length v3, v3

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1985
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    goto :goto_7

    .line 1989
    :cond_c
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    :goto_9
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    array-length v2, v2

    if-ge v0, v2, :cond_d

    .line 1990
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    new-instance v3, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v3}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    aput-object v3, v2, v0

    .line 1989
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1992
    :cond_d
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    aget-object v0, v0, v2

    goto :goto_8
.end method

.method public final hasGrammar()Z
    .locals 1

    .prologue
    .line 1130
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 909
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_0

    .line 913
    :goto_0
    return-void

    .line 910
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method protected init()V
    .locals 2

    .prologue
    .line 1834
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidation:Z

    if-eqz v0, :cond_1

    .line 1838
    :cond_0
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->fIDSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValID:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    .line 1839
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->fIDREFSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValIDRef:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    .line 1840
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->fIDREFSSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValIDRefs:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    .line 1841
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->fENTITYSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValENTITY:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    .line 1842
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->fENTITIESSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValENTITIES:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    .line 1843
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->fNMTOKENSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValNMTOKEN:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    .line 1844
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->fNMTOKENSSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValNMTOKENS:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    .line 1845
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->fNOTATIONSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValNOTATION:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1855
    :goto_0
    return-void

    .line 1834
    :cond_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDynamicValidation:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1847
    :catch_0
    move-exception v0

    .line 1850
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method protected invalidStandaloneAttDef(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;)Z
    .locals 1

    .prologue
    .line 1524
    const/4 v0, 0x1

    .line 1535
    return v0
.end method

.method protected isSpace(I)Z
    .locals 1

    .prologue
    .line 2107
    invoke-static {p1}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v0

    return v0
.end method

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1029
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-nez v0, :cond_1

    .line 1041
    :cond_0
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_2

    .line 1044
    :goto_1
    return-void

    .line 1029
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDecl(ILmf/org/apache/xerces/impl/dtd/XMLElementDecl;)Z

    .line 1031
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    if-ne v0, v6, :cond_0

    .line 1032
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v2, "MSG_CONTENT_INVALID_SPECIFIED"

    const/4 v3, 0x3

    .line 1034
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v5

    const-string/jumbo v4, "EMPTY"

    .line 1035
    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string/jumbo v5, "processing instruction"

    .line 1036
    aput-object v5, v3, v4

    .line 1032
    invoke-virtual {v0, v1, v2, v3, v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_0

    .line 1042
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_1
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 422
    iput-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    .line 423
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenDoctypeDecl:Z

    .line 424
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInCDATASection:Z

    .line 426
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenRootElement:Z

    .line 427
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    .line 428
    iput v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    .line 429
    iput v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    .line 431
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fRootElement:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/QName;->clear()V

    .line 433
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/validation/ValidationState;->resetIDTables()V

    .line 435
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->clear()V

    .line 436
    iput v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    .line 437
    iput v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    :try_start_0
    const-string/jumbo v0, "http://apache.org/xml/features/internal/parser-settings"

    .line 441
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 447
    :goto_0
    if-eqz v0, :cond_0

    :try_start_1
    const-string/jumbo v0, "http://xml.org/sax/features/namespaces"

    .line 455
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fNamespaces:Z
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    const-string/jumbo v0, "http://xml.org/sax/features/validation"

    .line 461
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidation:Z
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    const-string/jumbo v0, "http://apache.org/xml/features/validation/schema"

    .line 467
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDValidation:Z
    :try_end_3
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    const-string/jumbo v0, "http://apache.org/xml/features/validation/dynamic"

    .line 476
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDynamicValidation:Z
    :try_end_4
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    :try_start_5
    const-string/jumbo v0, "http://apache.org/xml/features/validation/balance-syntax-trees"

    .line 483
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fBalanceSyntaxTrees:Z
    :try_end_5
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_6
    :try_start_6
    const-string/jumbo v0, "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

    .line 490
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fWarnDuplicateAttdef:Z
    :try_end_6
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_6 .. :try_end_6} :catch_6

    :goto_7
    :try_start_7
    const-string/jumbo v0, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    .line 497
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSchemaType:Ljava/lang/String;
    :try_end_7
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_7 .. :try_end_7} :catch_7

    :goto_8
    const-string/jumbo v0, "http://apache.org/xml/properties/internal/validation-manager"

    .line 504
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    .line 505
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->addValidationState(Lmf/org/apache/xerces/impl/validation/ValidationState;)V

    .line 506
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fNamespaces:Z

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setUsingNamespaces(Z)V

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/error-reporter"

    .line 509
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/symbol-table"

    .line 510
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    :try_start_8
    const-string/jumbo v0, "http://apache.org/xml/properties/internal/grammar-pool"

    .line 512
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
    :try_end_8
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_8 .. :try_end_8} :catch_8

    :goto_9
    const-string/jumbo v0, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    .line 517
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    .line 518
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->init()V

    .line 520
    return-void

    .line 442
    :catch_0
    move-exception v0

    move v0, v1

    .line 444
    goto/16 :goto_0

    .line 449
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->addValidationState(Lmf/org/apache/xerces/impl/validation/ValidationState;)V

    .line 450
    return-void

    .line 456
    :catch_1
    move-exception v0

    .line 458
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fNamespaces:Z

    goto/16 :goto_1

    .line 462
    :catch_2
    move-exception v0

    .line 464
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidation:Z

    goto/16 :goto_2

    :cond_1
    move v0, v2

    .line 467
    goto/16 :goto_3

    .line 468
    :catch_3
    move-exception v0

    .line 471
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDValidation:Z

    goto/16 :goto_4

    .line 477
    :catch_4
    move-exception v0

    .line 479
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDynamicValidation:Z

    goto/16 :goto_5

    .line 484
    :catch_5
    move-exception v0

    .line 486
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fBalanceSyntaxTrees:Z

    goto/16 :goto_6

    .line 491
    :catch_6
    move-exception v0

    .line 493
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fWarnDuplicateAttdef:Z

    goto :goto_7

    .line 499
    :catch_7
    move-exception v0

    .line 501
    iput-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSchemaType:Ljava/lang/String;

    goto :goto_8

    .line 513
    :catch_8
    move-exception v0

    .line 514
    iput-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    goto :goto_9
.end method

.method public setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 0

    .prologue
    .line 620
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    .line 621
    return-void
.end method

.method public setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V
    .locals 0

    .prologue
    .line 635
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    .line 636
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 548
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 576
    return-void
.end method

.method public startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 937
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-nez v0, :cond_1

    .line 940
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInCDATASection:Z

    .line 942
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_2

    .line 946
    :goto_1
    return-void

    .line 937
    :cond_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    if-eqz v0, :cond_0

    .line 938
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->charDataInContent()V

    goto :goto_0

    .line 943
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_1
.end method

.method public startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 671
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-nez v1, :cond_1

    .line 678
    :cond_0
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    .line 679
    iput-object p3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    .line 681
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_3

    .line 685
    :goto_0
    return-void

    .line 672
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    const-string/jumbo v2, "http://www.w3.org/TR/REC-xml"

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->retrieveInitialGrammarSet(Ljava/lang/String;)[Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v3

    .line 673
    if-nez v3, :cond_2

    move v1, v0

    :goto_1
    move v2, v0

    .line 674
    :goto_2
    if-ge v2, v1, :cond_0

    .line 675
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    aget-object v0, v3, v2

    check-cast v0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/dtd/DTDGrammar;)V

    .line 674
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 673
    :cond_2
    array-length v1, v3

    goto :goto_1

    .line 682
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 788
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->handleStartElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)Z

    .line 790
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_0

    .line 795
    :goto_0
    return-void

    .line 791
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1067
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-nez v0, :cond_1

    .line 1081
    :cond_0
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_3

    .line 1084
    :goto_1
    return-void

    .line 1067
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDecl(ILmf/org/apache/xerces/impl/dtd/XMLElementDecl;)Z

    .line 1070
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    if-eq v0, v6, :cond_2

    .line 1077
    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->getStandalone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1078
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fEntityDecl:Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-static {p1, v0, v1, v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->checkStandaloneEntityRef(Ljava/lang/String;Lmf/org/apache/xerces/impl/dtd/DTDGrammar;Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    goto :goto_0

    .line 1071
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v2, "MSG_CONTENT_INVALID_SPECIFIED"

    const/4 v3, 0x3

    .line 1073
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v5

    const-string/jumbo v4, "EMPTY"

    .line 1074
    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string/jumbo v5, "ENTITY"

    aput-object v5, v3, v4

    .line 1071
    invoke-virtual {v0, v1, v2, v3, v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_2

    .line 1082
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_1
.end method

.method protected startNamespaceScope(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0

    .prologue
    .line 2010
    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1122
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_0

    .line 1125
    :goto_0
    return-void

    .line 1123
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public final validate()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1145
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSchemaType:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return v2

    .line 1146
    :cond_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDynamicValidation:Z

    if-eqz v0, :cond_4

    .line 1147
    :cond_2
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDynamicValidation:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenDoctypeDecl:Z

    if-eqz v0, :cond_0

    .line 1148
    :goto_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDValidation:Z

    if-eqz v0, :cond_5

    .line 1145
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 1146
    :cond_4
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidation:Z

    if-eqz v0, :cond_2

    goto :goto_1

    .line 1148
    :cond_5
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenDoctypeDecl:Z

    if-nez v0, :cond_3

    goto :goto_0
.end method

.method protected validateDTDattribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1394
    iget-object v0, p3, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    packed-switch v0, :pswitch_data_0

    .line 1518
    :cond_0
    :goto_0
    return-void

    .line 1397
    :pswitch_0
    iget-object v0, p3, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    .line 1400
    if-nez v0, :cond_1

    .line 1404
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValENTITY:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-interface {v0, p2, v1}, Lmf/org/apache/xerces/impl/dv/DatatypeValidator;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1406
    :catch_0
    move-exception v0

    .line 1408
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 1409
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 1410
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    .line 1408
    invoke-virtual {v1, v3, v4, v0, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_0

    .line 1401
    :cond_1
    :try_start_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValENTITIES:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-interface {v0, p2, v1}, Lmf/org/apache/xerces/impl/dv/DatatypeValidator;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1420
    :pswitch_1
    iget-object v0, p3, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-object v3, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->enumeration:[Ljava/lang/String;

    .line 1421
    if-eqz v3, :cond_4

    move v0, v1

    .line 1425
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_b

    .line 1426
    aget-object v4, v3, v0

    if-ne p2, v4, :cond_5

    :cond_2
    move v0, v2

    .line 1432
    :goto_2
    if-nez v0, :cond_0

    .line 1433
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1434
    if-nez v3, :cond_6

    .line 1438
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v5, "MSG_ATTRIBUTE_VALUE_NOT_IN_LIST"

    const/4 v6, 0x3

    .line 1440
    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p3, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v6, v1

    aput-object p2, v6, v2

    const/4 v1, 0x2

    aput-object v4, v6, v1

    .line 1438
    invoke-virtual {v0, v3, v5, v6, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1423
    goto :goto_2

    .line 1426
    :cond_5
    aget-object v4, v3, v0

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1425
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move v0, v1

    .line 1435
    :goto_3
    array-length v5, v3

    if-ge v0, v5, :cond_3

    .line 1436
    new-instance v5, Ljava/lang/StringBuilder;

    aget-object v6, v3, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1435
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1448
    :pswitch_2
    :try_start_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValID:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-interface {v0, p2, v1}, Lmf/org/apache/xerces/impl/dv/DatatypeValidator;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1449
    :catch_1
    move-exception v0

    .line 1451
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 1452
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 1453
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    .line 1451
    invoke-virtual {v1, v3, v4, v0, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_0

    .line 1460
    :pswitch_3
    iget-object v0, p3, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    .line 1463
    if-nez v3, :cond_7

    .line 1467
    :try_start_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValIDRef:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-interface {v0, p2, v4}, Lmf/org/apache/xerces/impl/dv/DatatypeValidator;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_3
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 1469
    :catch_2
    move-exception v0

    .line 1471
    if-nez v3, :cond_8

    .line 1478
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 1479
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 1480
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    .line 1478
    invoke-virtual {v1, v3, v4, v0, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_0

    .line 1464
    :cond_7
    :try_start_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValIDRefs:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-interface {v0, p2, v4}, Lmf/org/apache/xerces/impl/dv/DatatypeValidator;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_4
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 1472
    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "IDREFSInvalid"

    .line 1474
    new-array v5, v2, [Ljava/lang/Object;

    aput-object p2, v5, v1

    .line 1472
    invoke-virtual {v0, v3, v4, v5, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_0

    .line 1489
    :pswitch_4
    iget-object v0, p3, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    .line 1492
    if-nez v0, :cond_9

    .line 1496
    :try_start_5
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValNMTOKEN:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-interface {v3, p2, v4}, Lmf/org/apache/xerces/impl/dv/DatatypeValidator;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_5
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 1498
    :catch_3
    move-exception v3

    .line 1500
    if-nez v0, :cond_a

    .line 1507
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "NMTOKENInvalid"

    .line 1509
    new-array v5, v2, [Ljava/lang/Object;

    aput-object p2, v5, v1

    .line 1507
    invoke-virtual {v0, v3, v4, v5, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_0

    .line 1493
    :cond_9
    :try_start_6
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValNMTOKENS:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-interface {v3, p2, v4}, Lmf/org/apache/xerces/impl/dv/DatatypeValidator;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_6
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 1501
    :cond_a
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "NMTOKENSInvalid"

    .line 1503
    new-array v5, v2, [Ljava/lang/Object;

    aput-object p2, v5, v1

    .line 1501
    invoke-virtual {v0, v3, v4, v5, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    move v0, v1

    goto/16 :goto_2

    .line 1394
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 704
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->setStandalone(Z)V

    .line 707
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_2

    .line 711
    :goto_1
    return-void

    :cond_1
    const-string/jumbo v2, "yes"

    .line 704
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 708
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_1
.end method
