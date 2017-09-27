.class public Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
.super Ljava/lang/Object;
.source "SchemaGrammar.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/grammars/XSGrammar;
.implements Lmf/org/apache/xerces/xs/XSNamespaceItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinAttrDecl;,
        Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;,
        Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;,
        Lmf/org/apache/xerces/impl/xs/SchemaGrammar$XSAnyType;
    }
.end annotation


# static fields
.field private static final BASICSET_COUNT:I = 0x1d

.field private static final FULLSET_COUNT:I = 0x2e

.field private static final GLOBAL_COMP:[Z

.field private static final GRAMMAR_XS:I = 0x1

.field private static final GRAMMAR_XSI:I = 0x2

.field private static final INC_SIZE:I = 0x10

.field private static final INITIAL_SIZE:I = 0x10

.field private static final MAX_COMP_IDX:S = 0x10s

.field private static final REDEFINED_GROUP_INIT_SIZE:I = 0x2

.field public static final SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

.field private static final SG_SchemaNSExtended:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

.field public static final SG_XSI:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

.field public static final fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

.field public static final fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;


# instance fields
.field fAllGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

.field private fCTCount:I

.field private fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

.field private fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

.field private fComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

.field private fComponentsExt:[Lmf/org/apache/xerces/xs/datatypes/ObjectList;

.field private fDOMParser:Ljava/lang/ref/SoftReference;

.field private fDocuments:Ljava/util/Vector;

.field fFullChecked:Z

.field fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalAttrDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalAttrGrpDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalElemDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalGroupDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalIDConstraintDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalNotationDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalTypeDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

.field fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

.field fImported:Ljava/util/Vector;

.field private fIsImmutable:Z

.field private fLocations:Ljava/util/Vector;

.field fNumAnnotations:I

.field private fRGCount:I

.field private fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

.field private fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

.field private fSAXParser:Ljava/lang/ref/SoftReference;

.field private fSubGroupCount:I

.field private fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field fTargetNamespace:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1173
    new-instance v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$XSAnyType;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$XSAnyType;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 1296
    new-instance v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    invoke-direct {v0, v2, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;-><init>(IS)V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    .line 1297
    new-instance v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    invoke-direct {v0, v2, v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;-><init>(IS)V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNSExtended:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    .line 1299
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    const-string/jumbo v1, "anySimpleType"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    sput-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 1302
    new-instance v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    invoke-direct {v0, v3, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;-><init>(IS)V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_XSI:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    const/16 v0, 0x11

    .line 1341
    new-array v0, v0, [Z

    .line 1342
    aput-boolean v2, v0, v2

    .line 1343
    aput-boolean v2, v0, v3

    const/4 v1, 0x3

    .line 1344
    aput-boolean v2, v0, v1

    const/4 v1, 0x5

    .line 1346
    aput-boolean v2, v0, v1

    const/4 v1, 0x6

    .line 1347
    aput-boolean v2, v0, v1

    const/16 v1, 0xa

    .line 1351
    aput-boolean v2, v0, v1

    const/16 v1, 0xb

    .line 1352
    aput-boolean v2, v0, v1

    const/16 v1, 0xf

    .line 1356
    aput-boolean v2, v0, v1

    const/16 v1, 0x10

    .line 1357
    aput-boolean v2, v0, v1

    .line 1341
    sput-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->GLOBAL_COMP:[Z

    .line 1358
    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    .line 113
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    .line 119
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 121
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSAXParser:Ljava/lang/ref/SoftReference;

    .line 122
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDOMParser:Ljava/lang/ref/SoftReference;

    .line 125
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fIsImmutable:Z

    .line 800
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fImported:Ljava/util/Vector;

    .line 1062
    iput v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    .line 1063
    new-array v0, v3, [Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 1064
    new-array v0, v3, [Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    .line 1069
    iput v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    const/4 v0, 0x2

    .line 1070
    new-array v0, v0, [Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    const/4 v0, 0x1

    .line 1071
    new-array v0, v0, [Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    .line 1075
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fFullChecked:Z

    .line 1159
    iput v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroupCount:I

    .line 1160
    new-array v0, v3, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 1361
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

    .line 1362
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponentsExt:[Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    .line 1366
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDocuments:Ljava/util/Vector;

    .line 1367
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fLocations:Ljava/util/Vector;

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/XSDDescription;Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 4

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    .line 113
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    .line 119
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 121
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSAXParser:Ljava/lang/ref/SoftReference;

    .line 122
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDOMParser:Ljava/lang/ref/SoftReference;

    .line 125
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fIsImmutable:Z

    .line 800
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fImported:Ljava/util/Vector;

    .line 1062
    iput v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    .line 1063
    new-array v0, v3, [Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 1064
    new-array v0, v3, [Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    .line 1069
    iput v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    const/4 v0, 0x2

    .line 1070
    new-array v0, v0, [Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    const/4 v0, 0x1

    .line 1071
    new-array v0, v0, [Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    .line 1075
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fFullChecked:Z

    .line 1159
    iput v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroupCount:I

    .line 1160
    new-array v0, v3, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 1361
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

    .line 1362
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponentsExt:[Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    .line 1366
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDocuments:Ljava/util/Vector;

    .line 1367
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fLocations:Ljava/util/Vector;

    .line 144
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    .line 145
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    .line 146
    iput-object p3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 151
    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 152
    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 153
    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 154
    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 155
    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 156
    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 159
    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 160
    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 161
    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 162
    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 163
    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 164
    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 165
    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 168
    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAllGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 173
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    .line 176
    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 177
    :goto_0
    return-void

    .line 174
    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_0
.end method

.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 5

    .prologue
    const/16 v2, 0x10

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object v4, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    .line 113
    iput-object v4, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    .line 119
    iput-object v4, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 121
    iput-object v4, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSAXParser:Ljava/lang/ref/SoftReference;

    .line 122
    iput-object v4, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDOMParser:Ljava/lang/ref/SoftReference;

    .line 125
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fIsImmutable:Z

    .line 800
    iput-object v4, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fImported:Ljava/util/Vector;

    .line 1062
    iput v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    .line 1063
    new-array v0, v2, [Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 1064
    new-array v0, v2, [Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    .line 1069
    iput v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    const/4 v0, 0x2

    .line 1070
    new-array v0, v0, [Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    const/4 v0, 0x1

    .line 1071
    new-array v0, v0, [Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    .line 1075
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fFullChecked:Z

    .line 1159
    iput v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroupCount:I

    .line 1160
    new-array v0, v2, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 1361
    iput-object v4, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

    .line 1362
    iput-object v4, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponentsExt:[Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    .line 1366
    iput-object v4, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDocuments:Ljava/util/Vector;

    .line 1367
    iput-object v4, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fLocations:Ljava/util/Vector;

    .line 181
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    .line 182
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->makeClone()Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    .line 184
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 186
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 187
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 188
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 189
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 190
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 191
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 192
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 195
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 196
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 197
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 198
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 199
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 200
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 201
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 204
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAllGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAllGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 207
    iget v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fNumAnnotations:I

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fNumAnnotations:I

    .line 208
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fNumAnnotations:I

    if-gtz v0, :cond_2

    .line 214
    :goto_0
    iget v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroupCount:I

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroupCount:I

    .line 215
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroupCount:I

    if-gtz v0, :cond_3

    .line 221
    :goto_1
    iget v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    .line 222
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    if-gtz v0, :cond_4

    .line 230
    :goto_2
    iget v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    .line 231
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    if-gtz v0, :cond_5

    .line 239
    :goto_3
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fImported:Ljava/util/Vector;

    if-nez v0, :cond_6

    .line 247
    :cond_0
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fLocations:Ljava/util/Vector;

    if-nez v0, :cond_7

    .line 253
    :cond_1
    return-void

    .line 209
    :cond_2
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    array-length v0, v0

    new-array v0, v0, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    .line 210
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fNumAnnotations:I

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 216
    :cond_3
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    array-length v0, v0

    new-array v0, v0, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 217
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroupCount:I

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 223
    :cond_4
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    array-length v0, v0

    new-array v0, v0, [Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 224
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    array-length v0, v0

    new-array v0, v0, [Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    .line 225
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 232
    :cond_5
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    array-length v0, v0

    new-array v0, v0, [Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    .line 233
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    array-length v0, v0

    new-array v0, v0, [Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    .line 234
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 240
    :cond_6
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fImported:Ljava/util/Vector;

    move v0, v1

    .line 241
    :goto_4
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fImported:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 242
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fImported:Ljava/util/Vector;

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fImported:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 249
    :goto_5
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fLocations:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v4, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addDocument(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    add-int/lit8 v1, v1, 0x1

    :cond_7
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fLocations:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    goto :goto_5
.end method

.method public static getS4SGrammar(S)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1305
    if-eq p0, v0, :cond_0

    .line 1309
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNSExtended:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    return-object v0

    .line 1306
    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    return-object v0
.end method

.method static final resize([Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;I)[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1314
    new-array v0, p1, [Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 1315
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1316
    return-object v0
.end method

.method static final resize([Lmf/org/apache/xerces/impl/xs/XSElementDecl;I)[Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1326
    new-array v0, p1, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 1327
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1328
    return-object v0
.end method

.method static final resize([Lmf/org/apache/xerces/impl/xs/XSGroupDecl;I)[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1320
    new-array v0, p1, [Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    .line 1321
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1322
    return-object v0
.end method

.method static final resize([Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;I)[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1332
    new-array v0, p1, [Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    .line 1333
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1334
    return-object v0
.end method


# virtual methods
.method public addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1676
    if-eqz p1, :cond_0

    .line 1679
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    if-eqz v0, :cond_1

    .line 1682
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fNumAnnotations:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    array-length v1, v1

    if-eq v0, v1, :cond_2

    .line 1687
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fNumAnnotations:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fNumAnnotations:I

    aput-object p1, v0, v1

    .line 1688
    return-void

    .line 1677
    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x2

    .line 1680
    new-array v0, v0, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    goto :goto_0

    .line 1683
    :cond_2
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fNumAnnotations:I

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    .line 1684
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fNumAnnotations:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1685
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    goto :goto_0
.end method

.method public addComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;)V
    .locals 3

    .prologue
    .line 1081
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 1085
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    aput-object p2, v0, v1

    .line 1086
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    aput-object p1, v0, v1

    .line 1087
    return-void

    .line 1082
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    add-int/lit8 v1, v1, 0x10

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;I)[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 1083
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    add-int/lit8 v1, v1, 0x10

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;I)[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    goto :goto_0
.end method

.method public declared-synchronized addDocument(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .prologue
    monitor-enter p0

    .line 1370
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDocuments:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 1374
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDocuments:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1375
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fLocations:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1376
    return-void

    .line 1371
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDocuments:Ljava/util/Vector;

    .line 1372
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fLocations:Ljava/util/Vector;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;)V
    .locals 2

    .prologue
    .line 821
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 822
    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    .line 823
    return-void
.end method

.method public addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 826
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 827
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 830
    :goto_0
    return-void

    .line 828
    :cond_1
    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    goto :goto_0
.end method

.method public addGlobalAttributeGroupDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V
    .locals 2

    .prologue
    .line 836
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 837
    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    .line 838
    return-void
.end method

.method public addGlobalAttributeGroupDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 841
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 842
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 845
    :goto_0
    return-void

    .line 843
    :cond_1
    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    goto :goto_0
.end method

.method public addGlobalComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)V
    .locals 2

    .prologue
    .line 934
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 935
    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    .line 936
    return-void
.end method

.method public addGlobalComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 939
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 940
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 943
    :goto_0
    return-void

    .line 941
    :cond_1
    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    goto :goto_0
.end method

.method public addGlobalElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V
    .locals 2

    .prologue
    .line 864
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 865
    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    .line 866
    return-void
.end method

.method public addGlobalElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 869
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 870
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 873
    :goto_0
    return-void

    .line 871
    :cond_1
    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    goto :goto_0
.end method

.method public addGlobalElementDeclAll(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V
    .locals 3

    .prologue
    .line 851
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAllGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 861
    :cond_0
    :goto_0
    return-void

    .line 852
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAllGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 855
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fSubGroup:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v0, :cond_0

    .line 856
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroupCount:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    array-length v1, v1

    if-eq v0, v1, :cond_2

    .line 858
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroupCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroupCount:I

    aput-object p1, v0, v1

    goto :goto_0

    .line 857
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroupCount:I

    add-int/lit8 v1, v1, 0x10

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/XSElementDecl;I)[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    goto :goto_1
.end method

.method public addGlobalGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;)V
    .locals 2

    .prologue
    .line 879
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 880
    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    .line 881
    return-void
.end method

.method public addGlobalGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 884
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 885
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 888
    :goto_0
    return-void

    .line 886
    :cond_1
    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    goto :goto_0
.end method

.method public addGlobalNotationDecl(Lmf/org/apache/xerces/impl/xs/XSNotationDecl;)V
    .locals 2

    .prologue
    .line 894
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->fName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 895
    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    .line 896
    return-void
.end method

.method public addGlobalNotationDecl(Lmf/org/apache/xerces/impl/xs/XSNotationDecl;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 899
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->fName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 900
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 903
    :goto_0
    return-void

    .line 901
    :cond_1
    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    goto :goto_0
.end method

.method public addGlobalSimpleTypeDecl(Lmf/org/apache/xerces/impl/dv/XSSimpleType;)V
    .locals 2

    .prologue
    .line 949
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 950
    instance-of v0, p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-nez v0, :cond_0

    .line 953
    :goto_0
    return-void

    .line 951
    :cond_0
    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    goto :goto_0
.end method

.method public addGlobalSimpleTypeDecl(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 956
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 957
    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 960
    :cond_1
    :goto_0
    return-void

    .line 957
    :cond_2
    instance-of v0, p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v0, :cond_1

    .line 958
    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    goto :goto_0
.end method

.method public addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V
    .locals 2

    .prologue
    .line 909
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 910
    instance-of v0, p1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-nez v0, :cond_0

    .line 913
    instance-of v0, p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-nez v0, :cond_1

    .line 916
    :goto_0
    return-void

    .line 911
    :cond_0
    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    goto :goto_0

    .line 914
    :cond_1
    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    goto :goto_0
.end method

.method public addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 919
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 920
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 928
    :cond_1
    :goto_0
    return-void

    .line 921
    :cond_2
    instance-of v0, p1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-nez v0, :cond_3

    .line 924
    instance-of v0, p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v0, :cond_1

    .line 925
    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    goto :goto_0

    .line 922
    :cond_3
    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    goto :goto_0
.end method

.method public final addIDConstraintDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V
    .locals 2

    .prologue
    .line 966
    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->addIDConstraint(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    .line 967
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 968
    return-void
.end method

.method public final addIDConstraintDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 971
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    const-string/jumbo p3, ""

    :cond_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 972
    return-void
.end method

.method public addRedefinedGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;Lmf/org/apache/xerces/impl/xs/XSGroupDecl;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;)V
    .locals 3

    .prologue
    .line 1093
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 1098
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    div-int/lit8 v1, v1, 0x2

    aput-object p3, v0, v1

    .line 1099
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    aput-object p1, v0, v1

    .line 1100
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    aput-object p2, v0, v1

    .line 1101
    return-void

    .line 1095
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/XSGroupDecl;I)[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    .line 1096
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;I)[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    goto :goto_0
.end method

.method public getAnnotations()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 3

    .prologue
    .line 1669
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fNumAnnotations:I

    if-eqz v0, :cond_0

    .line 1672
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fNumAnnotations:I

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    return-object v0

    .line 1670
    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    return-object v0
.end method

.method public getAttributeDeclaration(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeDeclaration;
    .locals 1

    .prologue
    .line 1575
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeGroup(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeGroupDefinition;
    .locals 1

    .prologue
    .line 1595
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getComponents(S)Lmf/org/apache/xerces/xs/XSNamedMap;
    .locals 4

    .prologue
    const/16 v2, 0x10

    const/4 v0, 0x0

    monitor-enter p0

    .line 1456
    if-gtz p1, :cond_1

    .line 1458
    :cond_0
    :try_start_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->EMPTY_MAP:Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1456
    :cond_1
    if-gt p1, v2, :cond_0

    .line 1457
    :try_start_1
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->GLOBAL_COMP:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_0

    .line 1461
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

    if-eqz v1, :cond_2

    .line 1465
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

    aget-object v1, v1, p1

    if-eqz v1, :cond_3

    .line 1504
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

    aget-object v0, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    const/16 v1, 0x11

    .line 1462
    :try_start_2
    new-array v1, v1, [Lmf/org/apache/xerces/xs/XSNamedMap;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1467
    :cond_3
    packed-switch p1, :pswitch_data_0

    :goto_2
    :pswitch_0
    const/16 v1, 0xf

    .line 1495
    if-ne p1, v1, :cond_5

    .line 1497
    :cond_4
    :try_start_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

    new-instance v2, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    invoke-direct {v2, v3, v0, p1}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolHash;S)V

    aput-object v2, v1, p1

    goto :goto_1

    .line 1471
    :pswitch_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_2

    .line 1474
    :pswitch_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_2

    .line 1477
    :pswitch_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_2

    .line 1480
    :pswitch_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_2

    .line 1483
    :pswitch_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_2

    .line 1486
    :pswitch_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_2

    .line 1489
    :pswitch_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_2

    .line 1496
    :cond_5
    if-eq p1, v2, :cond_4

    .line 1500
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

    new-instance v2, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolHash;)V

    aput-object v2, v1, p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1467
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized getComponentsExt(S)Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    .locals 4

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    .line 1508
    if-gtz p1, :cond_1

    .line 1510
    :cond_0
    :try_start_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    const/16 v1, 0x10

    .line 1508
    if-gt p1, v1, :cond_0

    .line 1509
    :try_start_1
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->GLOBAL_COMP:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_0

    .line 1513
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponentsExt:[Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    if-eqz v1, :cond_2

    .line 1517
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponentsExt:[Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    aget-object v1, v1, p1

    if-eqz v1, :cond_3

    .line 1549
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponentsExt:[Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    aget-object v0, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    const/16 v1, 0x11

    .line 1514
    :try_start_2
    new-array v1, v1, [Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponentsExt:[Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1519
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 1545
    :goto_2
    :pswitch_0
    :try_start_3
    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SymbolHash;->getEntries()[Ljava/lang/Object;

    move-result-object v0

    .line 1546
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponentsExt:[Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    new-instance v2, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;

    array-length v3, v0

    invoke-direct {v2, v0, v3}, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;-><init>([Ljava/lang/Object;I)V

    aput-object v2, v1, p1

    goto :goto_1

    .line 1523
    :pswitch_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_2

    .line 1526
    :pswitch_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_2

    .line 1529
    :pswitch_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_2

    .line 1532
    :pswitch_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_2

    .line 1535
    :pswitch_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_2

    .line 1538
    :pswitch_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_2

    .line 1541
    :pswitch_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1519
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method declared-synchronized getDOMParser()Lmf/org/apache/xerces/parsers/DOMParser;
    .locals 3

    .prologue
    monitor-enter p0

    .line 1398
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDOMParser:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_1

    .line 1406
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/parsers/XML11Configuration;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/parsers/XML11Configuration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;)V

    const-string/jumbo v1, "http://xml.org/sax/features/namespaces"

    .line 1410
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v1, "http://xml.org/sax/features/validation"

    .line 1411
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setFeature(Ljava/lang/String;Z)V

    .line 1413
    new-instance v1, Lmf/org/apache/xerces/parsers/DOMParser;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/parsers/DOMParser;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v0, "http://apache.org/xml/features/dom/defer-node-expansion"

    .line 1415
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lmf/org/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1418
    :goto_0
    :try_start_2
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDOMParser:Ljava/lang/ref/SoftReference;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 1419
    return-object v1

    .line 1399
    :cond_1
    :try_start_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDOMParser:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/parsers/DOMParser;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1400
    if-eqz v0, :cond_0

    monitor-exit p0

    .line 1401
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1416
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getDocumentLocations()Lmf/org/apache/xerces/xs/StringList;
    .locals 2

    .prologue
    .line 1631
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fLocations:Ljava/util/Vector;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;-><init>(Ljava/util/Vector;)V

    return-object v0
.end method

.method public getElementDeclaration(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSElementDeclaration;
    .locals 1

    .prologue
    .line 1585
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    return-object v0
.end method

.method public final getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    return-object v0
.end method

.method public final getGlobalAttributeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    .locals 3

    .prologue
    .line 982
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    return-object v0
.end method

.method public final getGlobalAttributeGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    return-object v0
.end method

.method public final getGlobalAttributeGroupDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    .locals 3

    .prologue
    .line 993
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    return-object v0
.end method

.method public final getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    return-object v0
.end method

.method public final getGlobalElementDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .locals 3

    .prologue
    .line 1004
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    return-object v0
.end method

.method public final getGlobalGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    .locals 1

    .prologue
    .line 1011
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    return-object v0
.end method

.method public final getGlobalGroupDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    .locals 3

    .prologue
    .line 1015
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    return-object v0
.end method

.method public final getGlobalNotationDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    return-object v0
.end method

.method public final getGlobalNotationDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    .locals 3

    .prologue
    .line 1026
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    return-object v0
.end method

.method public final getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .locals 1

    .prologue
    .line 1033
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    return-object v0
.end method

.method public final getGlobalTypeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .locals 3

    .prologue
    .line 1037
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    return-object v0
.end method

.method public getGrammarDescription()Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    return-object v0
.end method

.method public getIDCDefinition(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSIDCDefinition;
    .locals 1

    .prologue
    .line 1621
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getIDConstraintDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v0

    return-object v0
.end method

.method public final getIDConstraintDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    return-object v0
.end method

.method public final getIDConstraintDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;
    .locals 3

    .prologue
    .line 1048
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    return-object v0
.end method

.method public getImportedGrammars()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fImported:Ljava/util/Vector;

    return-object v0
.end method

.method public getModelGroupDefinition(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSModelGroupDefinition;
    .locals 1

    .prologue
    .line 1606
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v0

    return-object v0
.end method

.method public getNotationDeclaration(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSNotationDeclaration;
    .locals 1

    .prologue
    .line 1617
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object v0

    return-object v0
.end method

.method final getRGLocators()[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;
    .locals 2

    .prologue
    .line 1140
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1144
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    return-object v0

    .line 1141
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/XSGroupDecl;I)[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    .line 1142
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;I)[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    goto :goto_0
.end method

.method final getRedefinedGroupDecls()[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    .locals 2

    .prologue
    .line 1129
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1133
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    return-object v0

    .line 1130
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/XSGroupDecl;I)[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    .line 1131
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;I)[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    goto :goto_0
.end method

.method declared-synchronized getSAXParser()Lmf/org/apache/xerces/parsers/SAXParser;
    .locals 3

    .prologue
    monitor-enter p0

    .line 1423
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSAXParser:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_1

    .line 1431
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/parsers/XML11Configuration;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/parsers/XML11Configuration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;)V

    const-string/jumbo v1, "http://xml.org/sax/features/namespaces"

    .line 1435
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v1, "http://xml.org/sax/features/validation"

    .line 1436
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setFeature(Ljava/lang/String;Z)V

    .line 1437
    new-instance v1, Lmf/org/apache/xerces/parsers/SAXParser;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/parsers/SAXParser;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    .line 1438
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSAXParser:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1439
    return-object v1

    .line 1424
    :cond_1
    :try_start_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSAXParser:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/parsers/SAXParser;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1425
    if-eqz v0, :cond_0

    monitor-exit p0

    .line 1426
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSchemaNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1393
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    return-object v0
.end method

.method final getSubstitutionGroups()[Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .locals 2

    .prologue
    .line 1166
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroupCount:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1168
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    return-object v0

    .line 1167
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroupCount:I

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/XSElementDecl;I)[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    goto :goto_0
.end method

.method public final getTargetNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeDefinition(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .locals 1

    .prologue
    .line 1565
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    return-object v0
.end method

.method final getUncheckedCTLocators()[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;
    .locals 2

    .prologue
    .line 1118
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1122
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    return-object v0

    .line 1119
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;I)[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 1120
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;I)[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    goto :goto_0
.end method

.method final getUncheckedComplexTypeDecls()[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .locals 2

    .prologue
    .line 1107
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1111
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    return-object v0

    .line 1108
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;I)[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 1109
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;I)[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    goto :goto_0
.end method

.method public final hasIDConstraints()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1055
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SymbolHash;->getLength()I

    move-result v0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isImmutable()Z
    .locals 1

    .prologue
    .line 1695
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fIsImmutable:Z

    return v0
.end method

.method public isNamespaceAware()Z
    .locals 1

    .prologue
    .line 797
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized removeDocument(I)V
    .locals 1

    .prologue
    monitor-enter p0

    .line 1379
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDocuments:Ljava/util/Vector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    .line 1385
    return-void

    .line 1380
    :cond_1
    if-ltz p1, :cond_0

    .line 1381
    :try_start_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDocuments:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1382
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDocuments:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 1383
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fLocations:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElementAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetComponents()V
    .locals 1

    .prologue
    monitor-enter p0

    const/4 v0, 0x0

    .line 1553
    :try_start_0
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

    const/4 v0, 0x0

    .line 1554
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponentsExt:[Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1555
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setImmutable(Z)V
    .locals 0

    .prologue
    .line 1691
    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fIsImmutable:Z

    .line 1692
    return-void
.end method

.method public setImportedGrammars(Ljava/util/Vector;)V
    .locals 0

    .prologue
    .line 803
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fImported:Ljava/util/Vector;

    .line 804
    return-void
.end method

.method final setUncheckedTypeNum(I)V
    .locals 2

    .prologue
    .line 1152
    iput p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    .line 1153
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;I)[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 1154
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;I)[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    .line 1155
    return-void
.end method

.method public toXSModel()Lmf/org/apache/xerces/xs/XSModel;
    .locals 3

    .prologue
    .line 1641
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;

    const/4 v1, 0x1

    new-array v1, v1, [Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;-><init>([Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    return-object v0
.end method

.method public toXSModel([Lmf/org/apache/xerces/xni/grammars/XSGrammar;)Lmf/org/apache/xerces/xs/XSModel;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1645
    if-nez p1, :cond_1

    .line 1646
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->toXSModel()Lmf/org/apache/xerces/xs/XSModel;

    move-result-object v0

    return-object v0

    .line 1645
    :cond_1
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 1648
    array-length v1, p1

    move v0, v2

    .line 1650
    :goto_0
    if-ge v0, v1, :cond_6

    .line 1651
    aget-object v3, p1, v0

    if-eq v3, p0, :cond_2

    .line 1650
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1652
    :cond_2
    const/4 v0, 0x1

    move v3, v0

    .line 1657
    :goto_1
    if-nez v3, :cond_3

    add-int/lit8 v0, v1, 0x1

    :goto_2
    new-array v4, v0, [Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .line 1658
    :goto_3
    if-ge v2, v1, :cond_4

    .line 1659
    aget-object v0, p1, v2

    check-cast v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aput-object v0, v4, v2

    .line 1658
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_3
    move v0, v1

    .line 1657
    goto :goto_2

    .line 1660
    :cond_4
    if-eqz v3, :cond_5

    .line 1662
    :goto_4
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;

    invoke-direct {v0, v4}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;-><init>([Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    return-object v0

    .line 1661
    :cond_5
    aput-object p0, v4, v1

    goto :goto_4

    :cond_6
    move v3, v2

    goto :goto_1
.end method
