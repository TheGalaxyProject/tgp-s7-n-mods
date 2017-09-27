.class public Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;
.super Ljava/lang/Object;
.source "XSAttributeChecker.java"


# static fields
.field public static final ATTIDX_ABSTRACT:I

.field public static final ATTIDX_AFORMDEFAULT:I

.field public static final ATTIDX_BASE:I

.field public static final ATTIDX_BLOCK:I

.field public static final ATTIDX_BLOCKDEFAULT:I

.field private static ATTIDX_COUNT:I = 0x0

.field public static final ATTIDX_DEFAULT:I

.field public static final ATTIDX_EFORMDEFAULT:I

.field public static final ATTIDX_ENUMNSDECLS:I

.field public static final ATTIDX_FINAL:I

.field public static final ATTIDX_FINALDEFAULT:I

.field public static final ATTIDX_FIXED:I

.field public static final ATTIDX_FORM:I

.field public static final ATTIDX_FROMDEFAULT:I

.field public static final ATTIDX_ID:I

.field public static final ATTIDX_ISRETURNED:I

.field public static final ATTIDX_ITEMTYPE:I

.field public static final ATTIDX_MAXOCCURS:I

.field public static final ATTIDX_MEMBERTYPES:I

.field public static final ATTIDX_MINOCCURS:I

.field public static final ATTIDX_MIXED:I

.field public static final ATTIDX_NAME:I

.field public static final ATTIDX_NAMESPACE:I

.field public static final ATTIDX_NAMESPACE_LIST:I

.field public static final ATTIDX_NILLABLE:I

.field public static final ATTIDX_NONSCHEMA:I

.field public static final ATTIDX_PROCESSCONTENTS:I

.field public static final ATTIDX_PUBLIC:I

.field public static final ATTIDX_REF:I

.field public static final ATTIDX_REFER:I

.field public static final ATTIDX_SCHEMALOCATION:I

.field public static final ATTIDX_SOURCE:I

.field public static final ATTIDX_SUBSGROUP:I

.field public static final ATTIDX_SYSTEM:I

.field public static final ATTIDX_TARGETNAMESPACE:I

.field public static final ATTIDX_TYPE:I

.field public static final ATTIDX_USE:I

.field public static final ATTIDX_VALUE:I

.field public static final ATTIDX_VERSION:I

.field public static final ATTIDX_XML_LANG:I

.field public static final ATTIDX_XPATH:I

.field private static final ATTRIBUTE_N:Ljava/lang/String; = "attribute_n"

.field private static final ATTRIBUTE_R:Ljava/lang/String; = "attribute_r"

.field protected static final DT_ANYURI:I = 0x0

.field protected static final DT_BLOCK:I = -0x1

.field protected static final DT_BLOCK1:I = -0x2

.field protected static final DT_BOOLEAN:I = -0xf

.field protected static final DT_COUNT:I = 0x9

.field protected static final DT_FINAL:I = -0x3

.field protected static final DT_FINAL1:I = -0x4

.field protected static final DT_FINAL2:I = -0x5

.field protected static final DT_FORM:I = -0x6

.field protected static final DT_ID:I = 0x1

.field protected static final DT_LANGUAGE:I = 0x8

.field protected static final DT_MAXOCCURS:I = -0x7

.field protected static final DT_MAXOCCURS1:I = -0x8

.field protected static final DT_MEMBERTYPES:I = -0x9

.field protected static final DT_MINOCCURS1:I = -0xa

.field protected static final DT_NAMESPACE:I = -0xb

.field protected static final DT_NCNAME:I = 0x5

.field protected static final DT_NONNEGINT:I = -0x10

.field protected static final DT_POSINT:I = -0x11

.field protected static final DT_PROCESSCONTENTS:I = -0xc

.field protected static final DT_QNAME:I = 0x2

.field protected static final DT_STRING:I = 0x3

.field protected static final DT_TOKEN:I = 0x4

.field protected static final DT_USE:I = -0xd

.field protected static final DT_WHITESPACE:I = -0xe

.field protected static final DT_XPATH:I = 0x6

.field protected static final DT_XPATH1:I = 0x7

.field private static final ELEMENT_N:Ljava/lang/String; = "element_n"

.field private static final ELEMENT_R:Ljava/lang/String; = "element_r"

.field static final INC_POOL_SIZE:I = 0xa

.field static final INIT_POOL_SIZE:I = 0xa

.field private static final INT_ANY_ANY:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_ANY_LAX:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_ANY_LIST:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_ANY_NOT:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_ANY_SKIP:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_ANY_STRICT:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_EMPTY_SET:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_QUALIFIED:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_UNBOUNDED:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_UNQUALIFIED:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_USE_OPTIONAL:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_USE_PROHIBITED:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_USE_REQUIRED:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_WS_COLLAPSE:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_WS_PRESERVE:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_WS_REPLACE:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final fEleAttrsMapG:Ljava/util/Hashtable;

.field private static final fEleAttrsMapL:Ljava/util/Hashtable;

.field private static final fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

.field private static fSeenTemp:[Z

.field private static fTempArray:[Ljava/lang/Object;

.field private static final fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;


# instance fields
.field fArrayPool:[[Ljava/lang/Object;

.field protected fNamespaceList:Ljava/util/Vector;

.field protected fNonSchemaAttrs:Ljava/util/Hashtable;

.field fPoolPos:I

.field protected fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

.field protected fSeen:[Z

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 57

    .prologue
    const/4 v3, 0x0

    .line 82
    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    .line 83
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ABSTRACT:I

    .line 84
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_AFORMDEFAULT:I

    .line 85
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    .line 86
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BLOCK:I

    .line 87
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BLOCKDEFAULT:I

    .line 88
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_DEFAULT:I

    .line 89
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_EFORMDEFAULT:I

    .line 90
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINAL:I

    .line 91
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINALDEFAULT:I

    .line 92
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FIXED:I

    .line 93
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FORM:I

    .line 94
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ID:I

    .line 95
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ITEMTYPE:I

    .line 96
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    .line 97
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MEMBERTYPES:I

    .line 98
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    .line 99
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MIXED:I

    .line 100
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    .line 101
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE:I

    .line 102
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE_LIST:I

    .line 103
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NILLABLE:I

    .line 104
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    .line 105
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_PROCESSCONTENTS:I

    .line 106
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_PUBLIC:I

    .line 107
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REF:I

    .line 108
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REFER:I

    .line 109
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SCHEMALOCATION:I

    .line 110
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SOURCE:I

    .line 111
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SUBSGROUP:I

    .line 112
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SYSTEM:I

    .line 113
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_TARGETNAMESPACE:I

    .line 114
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_TYPE:I

    .line 115
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_USE:I

    .line 116
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    .line 117
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ENUMNSDECLS:I

    .line 118
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VERSION:I

    .line 119
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_XML_LANG:I

    .line 120
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_XPATH:I

    .line 121
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FROMDEFAULT:I

    .line 123
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ISRETURNED:I

    .line 125
    new-instance v3, Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;-><init>()V

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    .line 127
    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v3

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_QUALIFIED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 128
    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v3

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_UNQUALIFIED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 129
    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v3

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_EMPTY_SET:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 130
    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v3

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_STRICT:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 131
    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v3

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_LAX:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 132
    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v3

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_SKIP:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 133
    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v3

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_ANY:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 134
    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v3

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_LIST:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 135
    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v3

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_NOT:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 136
    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v3

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_USE_OPTIONAL:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 137
    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v3

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_USE_REQUIRED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 138
    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v3

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_USE_PROHIBITED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 139
    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v3

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_WS_PRESERVE:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 140
    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v3

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_WS_REPLACE:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 141
    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v3

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_WS_COLLAPSE:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 142
    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v3

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_UNBOUNDED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 146
    new-instance v3, Ljava/util/Hashtable;

    const/16 v4, 0x1d

    invoke-direct {v3, v4}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    .line 148
    new-instance v3, Ljava/util/Hashtable;

    const/16 v4, 0x4f

    invoke-direct {v3, v4}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    const/16 v3, 0x9

    .line 167
    new-array v3, v3, [Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 170
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    .line 172
    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v6, 0x0

    const-string/jumbo v3, "anyURI"

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v3, v5, v6

    .line 174
    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v6, 0x1

    const-string/jumbo v3, "ID"

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v3, v5, v6

    .line 176
    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v6, 0x2

    const-string/jumbo v3, "QName"

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v3, v5, v6

    .line 178
    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v6, 0x3

    const-string/jumbo v3, "string"

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v3, v5, v6

    .line 180
    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v6, 0x4

    const-string/jumbo v3, "token"

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v3, v5, v6

    .line 182
    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v6, 0x5

    const-string/jumbo v3, "NCName"

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v3, v5, v6

    .line 184
    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v5, 0x6

    sget-object v6, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    aput-object v6, v3, v5

    .line 186
    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v5, 0x6

    sget-object v6, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    aput-object v6, v3, v5

    .line 188
    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/16 v6, 0x8

    const-string/jumbo v3, "language"

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v3, v5, v6

    .line 212
    const/4 v3, 0x1

    .line 213
    const/4 v4, 0x2

    .line 214
    const/4 v5, 0x3

    .line 215
    const/4 v6, 0x4

    .line 216
    const/4 v7, 0x5

    .line 217
    const/4 v8, 0x6

    .line 218
    const/4 v9, 0x7

    .line 219
    const/16 v10, 0x8

    .line 220
    const/16 v11, 0x9

    .line 221
    const/16 v12, 0xa

    .line 222
    const/16 v13, 0xb

    .line 223
    const/16 v14, 0xc

    .line 224
    const/16 v15, 0xd

    .line 225
    const/16 v16, 0xe

    .line 226
    const/16 v17, 0xf

    .line 227
    const/16 v18, 0x10

    .line 228
    const/16 v19, 0x11

    .line 229
    const/16 v20, 0x12

    .line 230
    const/16 v21, 0x13

    .line 231
    const/16 v22, 0x14

    .line 232
    const/16 v23, 0x15

    .line 233
    const/16 v24, 0x16

    .line 234
    const/16 v25, 0x17

    .line 235
    const/16 v26, 0x18

    .line 236
    const/16 v27, 0x19

    .line 237
    const/16 v28, 0x1a

    .line 238
    const/16 v29, 0x1b

    .line 239
    const/16 v30, 0x1c

    .line 240
    const/16 v31, 0x1d

    .line 241
    const/16 v32, 0x1e

    .line 242
    const/16 v33, 0x1f

    .line 243
    const/16 v34, 0x20

    .line 244
    const/16 v35, 0x21

    .line 245
    const/16 v36, 0x22

    .line 246
    const/16 v37, 0x23

    .line 247
    const/16 v38, 0x24

    .line 248
    const/16 v39, 0x25

    .line 249
    const/16 v40, 0x26

    .line 250
    const/16 v41, 0x27

    .line 251
    const/16 v42, 0x28

    .line 252
    const/16 v43, 0x29

    .line 253
    const/16 v44, 0x2a

    .line 254
    const/16 v45, 0x2b

    .line 255
    const/16 v46, 0x2c

    .line 256
    const/16 v47, 0x2d

    .line 257
    const/16 v48, 0x2e

    .line 258
    const/16 v49, 0x2f

    .line 259
    const/16 v50, 0x30

    .line 262
    move/from16 v0, v50

    new-array v0, v0, [Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    .line 263
    new-instance v52, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v53, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ABSTRACT:Ljava/lang/String;

    const/16 v54, -0xf

    .line 265
    sget v55, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ABSTRACT:I

    .line 266
    sget-object v56, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct/range {v52 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 263
    aput-object v52, v50, v51

    .line 267
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ATTRIBUTEFORMDEFAULT:Ljava/lang/String;

    const/16 v53, -0x6

    .line 269
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_AFORMDEFAULT:I

    .line 270
    sget-object v55, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_UNQUALIFIED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 267
    aput-object v51, v50, v3

    .line 271
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BASE:Ljava/lang/String;

    const/16 v53, 0x2

    .line 273
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    const/16 v55, 0x0

    .line 274
    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 271
    aput-object v51, v50, v4

    .line 275
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BASE:Ljava/lang/String;

    const/16 v53, 0x2

    .line 277
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    const/16 v55, 0x0

    .line 278
    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 275
    aput-object v51, v50, v5

    .line 279
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BLOCK:Ljava/lang/String;

    const/16 v53, -0x1

    .line 281
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BLOCK:I

    const/16 v55, 0x0

    .line 282
    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 279
    aput-object v51, v50, v6

    .line 283
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BLOCK:Ljava/lang/String;

    const/16 v53, -0x2

    .line 285
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BLOCK:I

    const/16 v55, 0x0

    .line 286
    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 283
    aput-object v51, v50, v7

    .line 287
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BLOCKDEFAULT:Ljava/lang/String;

    const/16 v53, -0x1

    .line 289
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BLOCKDEFAULT:I

    .line 290
    sget-object v55, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_EMPTY_SET:Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 287
    aput-object v51, v50, v8

    .line 291
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_DEFAULT:Ljava/lang/String;

    const/16 v53, 0x3

    .line 293
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_DEFAULT:I

    const/16 v55, 0x0

    .line 294
    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 291
    aput-object v51, v50, v9

    .line 295
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ELEMENTFORMDEFAULT:Ljava/lang/String;

    const/16 v53, -0x6

    .line 297
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_EFORMDEFAULT:I

    .line 298
    sget-object v55, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_UNQUALIFIED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 295
    aput-object v51, v50, v10

    .line 299
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINAL:Ljava/lang/String;

    const/16 v53, -0x3

    .line 301
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINAL:I

    const/16 v55, 0x0

    .line 302
    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 299
    aput-object v51, v50, v11

    .line 303
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINAL:Ljava/lang/String;

    const/16 v53, -0x4

    .line 305
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINAL:I

    const/16 v55, 0x0

    .line 306
    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 303
    aput-object v51, v50, v12

    .line 307
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINALDEFAULT:Ljava/lang/String;

    const/16 v53, -0x5

    .line 309
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINALDEFAULT:I

    .line 310
    sget-object v55, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_EMPTY_SET:Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 307
    aput-object v51, v50, v13

    .line 311
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    const/16 v53, 0x3

    .line 313
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FIXED:I

    const/16 v55, 0x0

    .line 314
    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 311
    aput-object v51, v50, v14

    .line 315
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    const/16 v53, -0xf

    .line 317
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FIXED:I

    .line 318
    sget-object v55, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 315
    aput-object v51, v50, v15

    .line 319
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FORM:Ljava/lang/String;

    const/16 v53, -0x6

    .line 321
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FORM:I

    const/16 v55, 0x0

    .line 322
    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 319
    aput-object v51, v50, v16

    .line 323
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    const/16 v53, 0x1

    .line 325
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ID:I

    const/16 v55, 0x0

    .line 326
    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 323
    aput-object v51, v50, v17

    .line 327
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ITEMTYPE:Ljava/lang/String;

    const/16 v53, 0x2

    .line 329
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ITEMTYPE:I

    const/16 v55, 0x0

    .line 330
    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 327
    aput-object v51, v50, v18

    .line 331
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    const/16 v53, -0x7

    .line 333
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    .line 334
    sget-object v55, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v56, 0x1

    invoke-virtual/range {v55 .. v56}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v55

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 331
    aput-object v51, v50, v19

    .line 335
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    const/16 v53, -0x8

    .line 337
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    .line 338
    sget-object v55, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v56, 0x1

    invoke-virtual/range {v55 .. v56}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v55

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 335
    aput-object v51, v50, v20

    .line 339
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MEMBERTYPES:Ljava/lang/String;

    const/16 v53, -0x9

    .line 341
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MEMBERTYPES:I

    const/16 v55, 0x0

    .line 342
    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 339
    aput-object v51, v50, v21

    .line 343
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    const/16 v53, -0x10

    .line 345
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    .line 346
    sget-object v55, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v56, 0x1

    invoke-virtual/range {v55 .. v56}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v55

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 343
    aput-object v51, v50, v22

    .line 347
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    const/16 v53, -0xa

    .line 349
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    .line 350
    sget-object v55, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v56, 0x1

    invoke-virtual/range {v55 .. v56}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v55

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 347
    aput-object v51, v50, v23

    .line 351
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MIXED:Ljava/lang/String;

    const/16 v53, -0xf

    .line 353
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MIXED:I

    .line 354
    sget-object v55, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 351
    aput-object v51, v50, v24

    .line 355
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MIXED:Ljava/lang/String;

    const/16 v53, -0xf

    .line 357
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MIXED:I

    const/16 v55, 0x0

    .line 358
    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 355
    aput-object v51, v50, v25

    .line 359
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    const/16 v53, 0x5

    .line 361
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    const/16 v55, 0x0

    .line 362
    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 359
    aput-object v51, v50, v26

    .line 363
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAMESPACE:Ljava/lang/String;

    const/16 v53, -0xb

    .line 365
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE:I

    .line 366
    sget-object v55, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_ANY:Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 363
    aput-object v51, v50, v27

    .line 367
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAMESPACE:Ljava/lang/String;

    const/16 v53, 0x0

    .line 369
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE:I

    const/16 v55, 0x0

    .line 370
    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 367
    aput-object v51, v50, v28

    .line 371
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NILLABLE:Ljava/lang/String;

    const/16 v53, -0xf

    .line 373
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NILLABLE:I

    .line 374
    sget-object v55, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 371
    aput-object v51, v50, v29

    .line 375
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_PROCESSCONTENTS:Ljava/lang/String;

    const/16 v53, -0xc

    .line 377
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_PROCESSCONTENTS:I

    .line 378
    sget-object v55, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_STRICT:Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 375
    aput-object v51, v50, v30

    .line 379
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_PUBLIC:Ljava/lang/String;

    const/16 v53, 0x4

    .line 381
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_PUBLIC:I

    const/16 v55, 0x0

    .line 382
    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 379
    aput-object v51, v50, v31

    .line 383
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    const/16 v53, 0x2

    .line 385
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REF:I

    const/16 v55, 0x0

    .line 386
    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 383
    aput-object v51, v50, v32

    .line 387
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REFER:Ljava/lang/String;

    const/16 v53, 0x2

    .line 389
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REFER:I

    const/16 v55, 0x0

    .line 390
    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 387
    aput-object v51, v50, v33

    .line 391
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SCHEMALOCATION:Ljava/lang/String;

    const/16 v53, 0x0

    .line 393
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SCHEMALOCATION:I

    const/16 v55, 0x0

    .line 394
    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 391
    aput-object v51, v50, v34

    .line 395
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SCHEMALOCATION:Ljava/lang/String;

    const/16 v53, 0x0

    .line 397
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SCHEMALOCATION:I

    const/16 v55, 0x0

    .line 398
    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 395
    aput-object v51, v50, v35

    .line 399
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SOURCE:Ljava/lang/String;

    const/16 v53, 0x0

    .line 401
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SOURCE:I

    const/16 v55, 0x0

    .line 402
    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 399
    aput-object v51, v50, v36

    .line 403
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SUBSTITUTIONGROUP:Ljava/lang/String;

    const/16 v53, 0x2

    .line 405
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SUBSGROUP:I

    const/16 v55, 0x0

    .line 406
    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 403
    aput-object v51, v50, v37

    .line 407
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SYSTEM:Ljava/lang/String;

    const/16 v53, 0x0

    .line 409
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SYSTEM:I

    const/16 v55, 0x0

    .line 410
    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 407
    aput-object v51, v50, v38

    .line 411
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_TARGETNAMESPACE:Ljava/lang/String;

    const/16 v53, 0x0

    .line 413
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_TARGETNAMESPACE:I

    const/16 v55, 0x0

    .line 414
    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 411
    aput-object v51, v50, v39

    .line 415
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_TYPE:Ljava/lang/String;

    const/16 v53, 0x2

    .line 417
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_TYPE:I

    const/16 v55, 0x0

    .line 418
    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 415
    aput-object v51, v50, v40

    .line 419
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_USE:Ljava/lang/String;

    const/16 v53, -0xd

    .line 421
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_USE:I

    .line 422
    sget-object v55, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_USE_OPTIONAL:Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 419
    aput-object v51, v50, v41

    .line 423
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    const/16 v53, -0x10

    .line 425
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    const/16 v55, 0x0

    .line 426
    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 423
    aput-object v51, v50, v42

    .line 427
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    const/16 v53, -0x11

    .line 429
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    const/16 v55, 0x0

    .line 430
    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 427
    aput-object v51, v50, v43

    .line 431
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    const/16 v53, 0x3

    .line 433
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    const/16 v55, 0x0

    .line 434
    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 431
    aput-object v51, v50, v44

    .line 435
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    const/16 v53, -0xe

    .line 437
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    const/16 v55, 0x0

    .line 438
    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 435
    aput-object v51, v50, v45

    .line 439
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VERSION:Ljava/lang/String;

    const/16 v53, 0x4

    .line 441
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VERSION:I

    const/16 v55, 0x0

    .line 442
    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 439
    aput-object v51, v50, v46

    .line 443
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XML_LANG:Ljava/lang/String;

    const/16 v53, 0x8

    .line 445
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_XML_LANG:I

    const/16 v55, 0x0

    .line 446
    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 443
    aput-object v51, v50, v47

    .line 447
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XPATH:Ljava/lang/String;

    const/16 v53, 0x6

    .line 449
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_XPATH:I

    const/16 v55, 0x0

    .line 450
    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 447
    aput-object v51, v50, v48

    .line 451
    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XPATH:Ljava/lang/String;

    const/16 v53, 0x7

    .line 453
    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_XPATH:I

    const/16 v55, 0x0

    .line 454
    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 451
    aput-object v51, v50, v49

    const/16 v51, 0x5

    .line 460
    invoke-static/range {v51 .. v51}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v51

    .line 462
    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_DEFAULT:Ljava/lang/String;

    aget-object v53, v50, v9

    invoke-virtual/range {v51 .. v53}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 464
    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    aget-object v53, v50, v14

    invoke-virtual/range {v51 .. v53}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 466
    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v53, v50, v17

    invoke-virtual/range {v51 .. v53}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 468
    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v53, v50, v26

    invoke-virtual/range {v51 .. v53}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 470
    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_TYPE:Ljava/lang/String;

    aget-object v53, v50, v40

    invoke-virtual/range {v51 .. v53}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 471
    sget-object v52, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v53, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTE:Ljava/lang/String;

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v51, 0x7

    .line 474
    invoke-static/range {v51 .. v51}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v51

    .line 476
    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_DEFAULT:Ljava/lang/String;

    aget-object v53, v50, v9

    invoke-virtual/range {v51 .. v53}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 478
    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    aget-object v53, v50, v14

    invoke-virtual/range {v51 .. v53}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 480
    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FORM:Ljava/lang/String;

    aget-object v53, v50, v16

    invoke-virtual/range {v51 .. v53}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 482
    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v53, v50, v17

    invoke-virtual/range {v51 .. v53}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 484
    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v53, v50, v26

    invoke-virtual/range {v51 .. v53}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 486
    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_TYPE:Ljava/lang/String;

    aget-object v53, v50, v40

    invoke-virtual/range {v51 .. v53}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 488
    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_USE:Ljava/lang/String;

    aget-object v53, v50, v41

    invoke-virtual/range {v51 .. v53}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 489
    sget-object v52, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    const-string/jumbo v53, "attribute_n"

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v51, 0x5

    .line 492
    invoke-static/range {v51 .. v51}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v51

    .line 494
    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_DEFAULT:Ljava/lang/String;

    aget-object v53, v50, v9

    invoke-virtual/range {v51 .. v53}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 496
    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    aget-object v53, v50, v14

    invoke-virtual/range {v51 .. v53}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 498
    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v53, v50, v17

    invoke-virtual/range {v51 .. v53}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 500
    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    aget-object v53, v50, v32

    invoke-virtual/range {v51 .. v53}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 502
    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_USE:Ljava/lang/String;

    aget-object v41, v50, v41

    move-object/from16 v0, v51

    move-object/from16 v1, v52

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 503
    sget-object v41, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    const-string/jumbo v52, "attribute_r"

    move-object/from16 v0, v41

    move-object/from16 v1, v52

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v41, 0xa

    .line 506
    invoke-static/range {v41 .. v41}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v41

    .line 508
    sget-object v51, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ABSTRACT:Ljava/lang/String;

    const/16 v52, 0x0

    aget-object v52, v50, v52

    move-object/from16 v0, v41

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 510
    sget-object v51, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BLOCK:Ljava/lang/String;

    aget-object v52, v50, v6

    move-object/from16 v0, v41

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 512
    sget-object v51, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_DEFAULT:Ljava/lang/String;

    aget-object v52, v50, v9

    move-object/from16 v0, v41

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 514
    sget-object v51, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINAL:Ljava/lang/String;

    aget-object v52, v50, v11

    move-object/from16 v0, v41

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 516
    sget-object v51, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    aget-object v52, v50, v14

    move-object/from16 v0, v41

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 518
    sget-object v51, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v52, v50, v17

    move-object/from16 v0, v41

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 520
    sget-object v51, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v52, v50, v26

    move-object/from16 v0, v41

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 522
    sget-object v51, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NILLABLE:Ljava/lang/String;

    aget-object v52, v50, v29

    move-object/from16 v0, v41

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 524
    sget-object v51, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SUBSTITUTIONGROUP:Ljava/lang/String;

    aget-object v37, v50, v37

    move-object/from16 v0, v41

    move-object/from16 v1, v51

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 526
    sget-object v37, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_TYPE:Ljava/lang/String;

    aget-object v51, v50, v40

    move-object/from16 v0, v41

    move-object/from16 v1, v37

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 527
    sget-object v37, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v51, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ELEMENT:Ljava/lang/String;

    move-object/from16 v0, v37

    move-object/from16 v1, v51

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v37, 0xa

    .line 530
    invoke-static/range {v37 .. v37}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v37

    .line 532
    sget-object v41, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BLOCK:Ljava/lang/String;

    aget-object v6, v50, v6

    move-object/from16 v0, v37

    move-object/from16 v1, v41

    invoke-virtual {v0, v1, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 534
    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_DEFAULT:Ljava/lang/String;

    aget-object v9, v50, v9

    move-object/from16 v0, v37

    invoke-virtual {v0, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 536
    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    aget-object v9, v50, v14

    move-object/from16 v0, v37

    invoke-virtual {v0, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 538
    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FORM:Ljava/lang/String;

    aget-object v9, v50, v16

    move-object/from16 v0, v37

    invoke-virtual {v0, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 540
    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v9, v50, v17

    move-object/from16 v0, v37

    invoke-virtual {v0, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 542
    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    aget-object v9, v50, v19

    move-object/from16 v0, v37

    invoke-virtual {v0, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 544
    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    aget-object v9, v50, v22

    move-object/from16 v0, v37

    invoke-virtual {v0, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 546
    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v9, v50, v26

    move-object/from16 v0, v37

    invoke-virtual {v0, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 548
    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NILLABLE:Ljava/lang/String;

    aget-object v9, v50, v29

    move-object/from16 v0, v37

    invoke-virtual {v0, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 550
    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_TYPE:Ljava/lang/String;

    aget-object v9, v50, v40

    move-object/from16 v0, v37

    invoke-virtual {v0, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 551
    sget-object v6, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    const-string/jumbo v9, "element_n"

    move-object/from16 v0, v37

    invoke-virtual {v6, v9, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x4

    .line 554
    invoke-static {v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v6

    .line 556
    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v14, v50, v17

    invoke-virtual {v6, v9, v14}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 558
    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    aget-object v14, v50, v19

    invoke-virtual {v6, v9, v14}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 560
    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    aget-object v14, v50, v22

    invoke-virtual {v6, v9, v14}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 562
    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    aget-object v14, v50, v32

    invoke-virtual {v6, v9, v14}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 563
    sget-object v9, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    const-string/jumbo v14, "element_r"

    invoke-virtual {v9, v14, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x6

    .line 566
    invoke-static {v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v6

    .line 568
    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ABSTRACT:Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v14, v50, v14

    invoke-virtual {v6, v9, v14}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 570
    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BLOCK:Ljava/lang/String;

    aget-object v7, v50, v7

    invoke-virtual {v6, v9, v7}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 572
    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINAL:Ljava/lang/String;

    aget-object v9, v50, v11

    invoke-virtual {v6, v7, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 574
    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v9, v50, v17

    invoke-virtual {v6, v7, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 576
    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MIXED:Ljava/lang/String;

    aget-object v9, v50, v24

    invoke-virtual {v6, v7, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 578
    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v9, v50, v26

    invoke-virtual {v6, v7, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 579
    sget-object v7, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    invoke-virtual {v7, v9, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x4

    .line 582
    invoke-static {v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v6

    .line 584
    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v9, v50, v17

    invoke-virtual {v6, v7, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 586
    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v9, v50, v26

    invoke-virtual {v6, v7, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 588
    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_PUBLIC:Ljava/lang/String;

    aget-object v9, v50, v31

    invoke-virtual {v6, v7, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 590
    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SYSTEM:Ljava/lang/String;

    aget-object v9, v50, v38

    invoke-virtual {v6, v7, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 591
    sget-object v7, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_NOTATION:Ljava/lang/String;

    invoke-virtual {v7, v9, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x2

    .line 595
    invoke-static {v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v6

    .line 597
    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v9, v50, v17

    invoke-virtual {v6, v7, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 599
    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MIXED:Ljava/lang/String;

    aget-object v9, v50, v24

    invoke-virtual {v6, v7, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 600
    sget-object v7, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    invoke-virtual {v7, v9, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    .line 603
    invoke-static {v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v6

    .line 605
    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v9, v50, v17

    invoke-virtual {v6, v7, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 606
    sget-object v7, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLECONTENT:Ljava/lang/String;

    invoke-virtual {v7, v9, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x2

    .line 609
    invoke-static {v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v6

    .line 611
    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BASE:Ljava/lang/String;

    aget-object v5, v50, v5

    invoke-virtual {v6, v7, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 613
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v7, v50, v17

    invoke-virtual {v6, v5, v7}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 614
    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_RESTRICTION:Ljava/lang/String;

    invoke-virtual {v5, v7, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x2

    .line 617
    invoke-static {v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v5

    .line 619
    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BASE:Ljava/lang/String;

    aget-object v4, v50, v4

    invoke-virtual {v5, v6, v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 621
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v50, v17

    invoke-virtual {v5, v4, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 622
    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_EXTENSION:Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    .line 625
    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    .line 627
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v50, v17

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 629
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    aget-object v6, v50, v32

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 630
    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x3

    .line 633
    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    .line 635
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v50, v17

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 637
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAMESPACE:Ljava/lang/String;

    aget-object v6, v50, v27

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 639
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_PROCESSCONTENTS:Ljava/lang/String;

    aget-object v6, v50, v30

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 640
    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANYATTRIBUTE:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    .line 643
    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    .line 645
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v50, v17

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 647
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MIXED:Ljava/lang/String;

    aget-object v6, v50, v25

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 648
    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXCONTENT:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    .line 651
    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    .line 653
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v50, v17

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 655
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v6, v50, v26

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 656
    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    .line 659
    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    .line 661
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v50, v17

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 663
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v6, v50, v26

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 664
    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x4

    .line 667
    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    .line 669
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v50, v17

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 671
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    aget-object v6, v50, v19

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 673
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    aget-object v6, v50, v22

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 675
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    aget-object v6, v50, v32

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 676
    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x3

    .line 679
    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    .line 681
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v50, v17

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 683
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    aget-object v6, v50, v20

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 685
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    aget-object v6, v50, v23

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 686
    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ALL:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x3

    .line 689
    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    .line 691
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v50, v17

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 693
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    aget-object v6, v50, v19

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 695
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    aget-object v6, v50, v22

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 696
    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_CHOICE:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SEQUENCE:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x5

    .line 701
    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    .line 703
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v50, v17

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 705
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    aget-object v6, v50, v19

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 707
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    aget-object v6, v50, v22

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 709
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAMESPACE:Ljava/lang/String;

    aget-object v6, v50, v27

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 711
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_PROCESSCONTENTS:Ljava/lang/String;

    aget-object v6, v50, v30

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 712
    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANY:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    .line 715
    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    .line 717
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v50, v17

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 719
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v6, v50, v26

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 720
    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_UNIQUE:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_KEY:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x3

    .line 725
    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    .line 727
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v50, v17

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 729
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v6, v50, v26

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 731
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REFER:Ljava/lang/String;

    aget-object v6, v50, v33

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 732
    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_KEYREF:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    .line 735
    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    .line 737
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v50, v17

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 739
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XPATH:Ljava/lang/String;

    aget-object v6, v50, v48

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 740
    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SELECTOR:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    .line 743
    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    .line 745
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v50, v17

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 747
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XPATH:Ljava/lang/String;

    aget-object v6, v50, v49

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 748
    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_FIELD:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    .line 751
    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    .line 753
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v50, v17

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 754
    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    .line 759
    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    .line 761
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SOURCE:Ljava/lang/String;

    aget-object v6, v50, v36

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 762
    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_APPINFO:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_APPINFO:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    .line 766
    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    .line 768
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SOURCE:Ljava/lang/String;

    aget-object v6, v50, v36

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 770
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XML_LANG:Ljava/lang/String;

    aget-object v6, v50, v47

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 771
    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x3

    .line 775
    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    .line 777
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINAL:Ljava/lang/String;

    aget-object v6, v50, v12

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 779
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v50, v17

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 781
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v6, v50, v26

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 782
    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    .line 785
    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    .line 787
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINAL:Ljava/lang/String;

    aget-object v6, v50, v12

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 789
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v50, v17

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 790
    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    .line 796
    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    .line 798
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v50, v17

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 800
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ITEMTYPE:Ljava/lang/String;

    aget-object v6, v50, v18

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 801
    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_LIST:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    .line 804
    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    .line 806
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v50, v17

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 808
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MEMBERTYPES:Ljava/lang/String;

    aget-object v6, v50, v21

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 809
    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_UNION:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x8

    .line 812
    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    .line 814
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ATTRIBUTEFORMDEFAULT:Ljava/lang/String;

    aget-object v3, v50, v3

    invoke-virtual {v4, v5, v3}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 816
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BLOCKDEFAULT:Ljava/lang/String;

    aget-object v5, v50, v8

    invoke-virtual {v4, v3, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 818
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ELEMENTFORMDEFAULT:Ljava/lang/String;

    aget-object v5, v50, v10

    invoke-virtual {v4, v3, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 820
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINALDEFAULT:Ljava/lang/String;

    aget-object v5, v50, v13

    invoke-virtual {v4, v3, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 822
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v5, v50, v17

    invoke-virtual {v4, v3, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 824
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_TARGETNAMESPACE:Ljava/lang/String;

    aget-object v5, v50, v39

    invoke-virtual {v4, v3, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 826
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VERSION:Ljava/lang/String;

    aget-object v5, v50, v46

    invoke-virtual {v4, v3, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 828
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XML_LANG:Ljava/lang/String;

    aget-object v5, v50, v47

    invoke-virtual {v4, v3, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 829
    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SCHEMA:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    .line 832
    invoke-static {v3}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v3

    .line 834
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v5, v50, v17

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 836
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SCHEMALOCATION:Ljava/lang/String;

    aget-object v5, v50, v34

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 837
    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_INCLUDE:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    .line 842
    invoke-static {v3}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v3

    .line 844
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v5, v50, v17

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 846
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAMESPACE:Ljava/lang/String;

    aget-object v5, v50, v28

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 848
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SCHEMALOCATION:Ljava/lang/String;

    aget-object v5, v50, v35

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 849
    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_IMPORT:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    .line 852
    invoke-static {v3}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v3

    .line 854
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v5, v50, v17

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 856
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    aget-object v5, v50, v42

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 858
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    aget-object v5, v50, v15

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 859
    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_LENGTH:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MINLENGTH:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MAXLENGTH:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_FRACTIONDIGITS:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    .line 868
    invoke-static {v3}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v3

    .line 870
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v5, v50, v17

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 872
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    aget-object v5, v50, v43

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 874
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    aget-object v5, v50, v15

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 875
    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_TOTALDIGITS:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    .line 878
    invoke-static {v3}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v3

    .line 880
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v5, v50, v17

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 882
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    aget-object v5, v50, v44

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 883
    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_PATTERN:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    .line 886
    invoke-static {v3}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v3

    .line 888
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v5, v50, v17

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 890
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    aget-object v5, v50, v44

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 891
    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ENUMERATION:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    .line 894
    invoke-static {v3}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v3

    .line 896
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v5, v50, v17

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 898
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    aget-object v5, v50, v45

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 900
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    aget-object v5, v50, v15

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 901
    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_WHITESPACE:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    .line 904
    invoke-static {v3}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v3

    .line 906
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v5, v50, v17

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 908
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    aget-object v5, v50, v44

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 910
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    aget-object v5, v50, v15

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 911
    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MAXINCLUSIVE:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MAXEXCLUSIVE:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MININCLUSIVE:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MINEXCLUSIVE:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    new-array v3, v3, [Z

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSeenTemp:[Z

    .line 1641
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    new-array v3, v3, [Ljava/lang/Object;

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fTempArray:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 921
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    .line 924
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 927
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNonSchemaAttrs:Ljava/util/Hashtable;

    .line 930
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNamespaceList:Ljava/util/Vector;

    .line 933
    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSeen:[Z

    .line 1638
    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/16 v3, 0xa

    aput v3, v2, v4

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fArrayPool:[[Ljava/lang/Object;

    .line 1643
    iput v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    .line 938
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    .line 939
    return-void
.end method

.method public static normalize(Ljava/lang/String;S)Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v9, 0xd

    const/16 v8, 0xa

    const/16 v7, 0x9

    const/16 v6, 0x20

    const/4 v1, 0x0

    .line 1584
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1585
    :goto_0
    if-nez v0, :cond_2

    .line 1586
    :cond_0
    return-object p0

    :cond_1
    move v0, v1

    .line 1584
    goto :goto_0

    .line 1585
    :cond_2
    if-eqz p1, :cond_0

    .line 1588
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x1

    .line 1589
    if-eq p1, v2, :cond_6

    .line 1602
    const/4 v2, 0x1

    move v3, v1

    .line 1604
    :goto_1
    if-ge v3, v0, :cond_d

    .line 1605
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1607
    if-ne v5, v7, :cond_9

    .line 1613
    :cond_3
    :goto_2
    add-int/lit8 v5, v0, -0x1

    if-ge v3, v5, :cond_c

    .line 1614
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1615
    if-ne v5, v7, :cond_b

    .line 1613
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1595
    :cond_5
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1592
    :goto_3
    add-int/lit8 v1, v1, 0x1

    :cond_6
    if-ge v1, v0, :cond_d

    .line 1593
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1594
    if-ne v2, v7, :cond_8

    .line 1597
    :cond_7
    :goto_4
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1594
    :cond_8
    if-eq v2, v8, :cond_7

    if-ne v2, v9, :cond_5

    goto :goto_4

    .line 1607
    :cond_9
    if-eq v5, v8, :cond_3

    if-eq v5, v9, :cond_3

    if-eq v5, v6, :cond_3

    .line 1608
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v1

    .line 1604
    :cond_a
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1615
    :cond_b
    if-eq v5, v8, :cond_4

    if-eq v5, v9, :cond_4

    if-eq v5, v6, :cond_4

    .line 1619
    :cond_c
    add-int/lit8 v5, v0, -0x1

    if-ge v3, v5, :cond_a

    if-nez v2, :cond_a

    .line 1620
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 1625
    :cond_d
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private validate([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    .prologue
    .line 1187
    if-eqz p3, :cond_1

    .line 1195
    invoke-static {p3}, Lmf/org/apache/xerces/util/XMLChar;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    .line 1200
    packed-switch p4, :pswitch_data_0

    .line 1524
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    .line 1188
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "false"

    .line 1202
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1204
    :cond_2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "0"

    .line 1203
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "true"

    .line 1205
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1207
    :cond_4
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "1"

    .line 1206
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1209
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-datatype-valid.1.2.1"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "boolean"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1214
    :pswitch_1
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_7

    .line 1216
    :cond_6
    :goto_1
    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v0, v1

    .line 1220
    check-cast v0, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    .line 1221
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-datatype-valid.1.2.1"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "nonNegativeInteger"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_7
    const/4 v0, 0x0

    .line 1214
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    .line 1215
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_1

    .line 1217
    :catch_0
    move-exception v0

    .line 1218
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-datatype-valid.1.2.1"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "nonNegativeInteger"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1225
    :pswitch_2
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_9

    .line 1227
    :cond_8
    :goto_2
    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    move-object v0, v1

    .line 1231
    check-cast v0, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1232
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-datatype-valid.1.2.1"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "positiveInteger"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_9
    const/4 v0, 0x0

    .line 1225
    :try_start_3
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    .line 1226
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v3

    goto :goto_2

    .line 1228
    :catch_1
    move-exception v0

    .line 1229
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-datatype-valid.1.2.1"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "positiveInteger"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_3
    const/4 v0, 0x0

    const-string/jumbo v1, "#all"

    .line 1237
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1243
    new-instance v1, Ljava/util/StringTokenizer;

    const-string/jumbo v2, " \n\t\r"

    invoke-direct {v1, v3, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    :goto_3
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1245
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "extension"

    .line 1247
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string/jumbo v4, "restriction"

    .line 1250
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string/jumbo v4, "substitution"

    .line 1253
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1257
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-datatype-valid.1.2.3"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "(#all | List of (extension | restriction | substitution))"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_a
    const/16 v0, 0x1f

    .line 1261
    :cond_b
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v1

    goto/16 :goto_0

    .line 1248
    :cond_c
    or-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1251
    :cond_d
    or-int/lit8 v0, v0, 0x2

    goto :goto_3

    .line 1254
    :cond_e
    or-int/lit8 v0, v0, 0x4

    goto :goto_3

    :pswitch_4
    const/4 v0, 0x0

    const-string/jumbo v1, "#all"

    .line 1268
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1285
    new-instance v1, Ljava/util/StringTokenizer;

    const-string/jumbo v2, " \n\t\r"

    invoke-direct {v1, v3, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    :goto_4
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1287
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "extension"

    .line 1289
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string/jumbo v4, "restriction"

    .line 1292
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1296
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-datatype-valid.1.2.3"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "(#all | List of (extension | restriction))"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_f
    const/16 v0, 0x1f

    .line 1300
    :cond_10
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v1

    goto/16 :goto_0

    .line 1290
    :cond_11
    or-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1293
    :cond_12
    or-int/lit8 v0, v0, 0x2

    goto :goto_4

    :pswitch_5
    const/4 v0, 0x0

    const-string/jumbo v1, "#all"

    .line 1305
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 1317
    new-instance v1, Ljava/util/StringTokenizer;

    const-string/jumbo v2, " \n\t\r"

    invoke-direct {v1, v3, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    :goto_5
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1319
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "list"

    .line 1321
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string/jumbo v4, "union"

    .line 1324
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    const-string/jumbo v4, "restriction"

    .line 1327
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 1331
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-datatype-valid.1.2.3"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "(#all | List of (list | union | restriction))"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_13
    const/16 v0, 0x1f

    .line 1335
    :cond_14
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v1

    goto/16 :goto_0

    .line 1322
    :cond_15
    or-int/lit8 v0, v0, 0x10

    goto :goto_5

    .line 1325
    :cond_16
    or-int/lit8 v0, v0, 0x8

    goto :goto_5

    .line 1328
    :cond_17
    or-int/lit8 v0, v0, 0x2

    goto :goto_5

    :pswitch_6
    const/4 v0, 0x0

    const-string/jumbo v1, "#all"

    .line 1340
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1352
    new-instance v1, Ljava/util/StringTokenizer;

    const-string/jumbo v2, " \n\t\r"

    invoke-direct {v1, v3, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    :goto_6
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1354
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "extension"

    .line 1356
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    const-string/jumbo v4, "restriction"

    .line 1359
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    const-string/jumbo v4, "list"

    .line 1362
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    const-string/jumbo v4, "union"

    .line 1365
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1369
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-datatype-valid.1.2.3"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "(#all | List of (extension | restriction | list | union))"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_18
    const/16 v0, 0x1f

    .line 1373
    :cond_19
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v1

    goto/16 :goto_0

    .line 1357
    :cond_1a
    or-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1360
    :cond_1b
    or-int/lit8 v0, v0, 0x2

    goto :goto_6

    .line 1363
    :cond_1c
    or-int/lit8 v0, v0, 0x10

    goto :goto_6

    .line 1366
    :cond_1d
    or-int/lit8 v0, v0, 0x8

    goto :goto_6

    :pswitch_7
    const-string/jumbo v0, "qualified"

    .line 1377
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string/jumbo v0, "unqualified"

    .line 1379
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1382
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-enumeration-valid"

    const/4 v2, 0x2

    .line 1383
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "(qualified | unqualified)"

    aput-object v4, v2, v3

    .line 1382
    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1378
    :cond_1e
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_QUALIFIED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_0

    .line 1380
    :cond_1f
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_UNQUALIFIED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_0

    :pswitch_8
    const-string/jumbo v0, "unbounded"

    .line 1387
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const/16 v4, -0x10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    .line 1391
    :try_start_4
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->validate([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v1

    goto/16 :goto_0

    .line 1388
    :cond_20
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_UNBOUNDED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_0

    .line 1392
    :catch_2
    move-exception v0

    .line 1393
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-datatype-valid.1.2.3"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "(nonNegativeInteger | unbounded)"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_9
    const-string/jumbo v0, "1"

    .line 1399
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 1402
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-enumeration-valid"

    const/4 v2, 0x2

    .line 1403
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "(1)"

    aput-object v4, v2, v3

    .line 1402
    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1400
    :cond_21
    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v1

    goto/16 :goto_0

    .line 1407
    :pswitch_a
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1409
    :try_start_5
    new-instance v2, Ljava/util/StringTokenizer;

    const-string/jumbo v0, " \n\t\r"

    invoke-direct {v2, v3, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    :goto_7
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1411
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 1412
    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    iget-object v5, p5, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fValidationContext:Lmf/org/apache/xerces/impl/validation/ValidationState;

    const/4 v6, 0x0

    invoke-interface {v4, v0, v5, v6}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/QName;

    .line 1414
    iget-object v4, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v4, v5, :cond_23

    .line 1416
    :cond_22
    :goto_8
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_5
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_7

    .line 1419
    :catch_3
    move-exception v0

    .line 1421
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-datatype-valid.1.2.2"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "(List of QName)"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1414
    :cond_23
    :try_start_6
    iget-object v4, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v4, :cond_22

    iget-boolean v4, p5, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fIsChameleonSchema:Z

    if-eqz v4, :cond_22

    .line 1415
    iget-object v4, p5, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    iput-object v4, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;
    :try_end_6
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_8

    :pswitch_b
    const-string/jumbo v0, "0"

    .line 1426
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string/jumbo v0, "1"

    .line 1428
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 1431
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-enumeration-valid"

    const/4 v2, 0x2

    .line 1432
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "(0 | 1)"

    aput-object v4, v2, v3

    .line 1431
    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1427
    :cond_24
    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v1

    goto/16 :goto_0

    .line 1429
    :cond_25
    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_c
    const-string/jumbo v0, "##any"

    .line 1436
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string/jumbo v0, "##other"

    .line 1439
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1448
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_LIST:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 1450
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNamespaceList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 1453
    new-instance v2, Ljava/util/StringTokenizer;

    const-string/jumbo v0, " \n\t\r"

    invoke-direct {v2, v3, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    :cond_26
    :goto_9
    :try_start_7
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1458
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "##local"

    .line 1459
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    const-string/jumbo v4, "##targetNamespace"

    .line 1461
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 1466
    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-object v5, p5, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fValidationContext:Lmf/org/apache/xerces/impl/validation/ValidationState;

    const/4 v6, 0x0

    invoke-interface {v4, v0, v5, v6}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    .line 1467
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1471
    :goto_a
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNamespaceList:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 1472
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNamespaceList:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_7
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_9

    .line 1475
    :catch_4
    move-exception v0

    .line 1476
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-datatype-valid.1.2.3"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "((##any | ##other) | List of (anyURI | (##targetNamespace | ##local)) )"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1438
    :cond_27
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_ANY:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_0

    .line 1441
    :cond_28
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_NOT:Lmf/org/apache/xerces/impl/xs/util/XInt;

    const/4 v0, 0x2

    .line 1442
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 1443
    iget-object v3, p5, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1444
    aput-object v3, v0, v2

    .line 1445
    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE_LIST:I

    aput-object v0, p1, v2

    goto/16 :goto_0

    :cond_29
    const/4 v0, 0x0

    .line 1460
    goto :goto_a

    .line 1462
    :cond_2a
    :try_start_8
    iget-object v0, p5, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;
    :try_end_8
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_a

    .line 1480
    :cond_2b
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNamespaceList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 1481
    new-array v0, v0, [Ljava/lang/String;

    .line 1482
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNamespaceList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1483
    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE_LIST:I

    aput-object v0, p1, v2

    goto/16 :goto_0

    :pswitch_d
    const-string/jumbo v0, "strict"

    .line 1488
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    const-string/jumbo v0, "lax"

    .line 1490
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string/jumbo v0, "skip"

    .line 1492
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 1495
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-enumeration-valid"

    const/4 v2, 0x2

    .line 1496
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "(lax | skip | strict)"

    aput-object v4, v2, v3

    .line 1495
    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1489
    :cond_2c
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_STRICT:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_0

    .line 1491
    :cond_2d
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_LAX:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_0

    .line 1493
    :cond_2e
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_SKIP:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_0

    :pswitch_e
    const-string/jumbo v0, "optional"

    .line 1500
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string/jumbo v0, "required"

    .line 1502
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string/jumbo v0, "prohibited"

    .line 1504
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 1507
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-enumeration-valid"

    const/4 v2, 0x2

    .line 1508
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "(optional | prohibited | required)"

    aput-object v4, v2, v3

    .line 1507
    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1501
    :cond_2f
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_USE_OPTIONAL:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_0

    .line 1503
    :cond_30
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_USE_REQUIRED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_0

    .line 1505
    :cond_31
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_USE_PROHIBITED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_0

    :pswitch_f
    const-string/jumbo v0, "preserve"

    .line 1512
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string/jumbo v0, "replace"

    .line 1514
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string/jumbo v0, "collapse"

    .line 1516
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 1519
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-enumeration-valid"

    const/4 v2, 0x2

    .line 1520
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "(preserve | replace | collapse)"

    aput-object v4, v2, v3

    .line 1519
    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1513
    :cond_32
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_WS_PRESERVE:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_0

    .line 1515
    :cond_33
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_WS_REPLACE:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_0

    .line 1517
    :cond_34
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_WS_COLLAPSE:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_0

    .line 1200
    :pswitch_data_0
    .packed-switch -0x11
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 958
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Z)[Ljava/lang/Object;
    .locals 17

    .prologue
    .line 977
    if-eqz p1, :cond_4

    .line 981
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getAttrs(Lmf/org/w3c/dom/Element;)[Lmf/org/w3c/dom/Attr;

    move-result-object v13

    .line 984
    move-object/from16 v0, p3

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->resolveNamespace(Lmf/org/w3c/dom/Element;[Lmf/org/w3c/dom/Attr;Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;)V

    .line 986
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getNamespaceURI(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    .line 987
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v9

    .line 989
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 993
    :goto_0
    sget-object v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    .line 1000
    if-eqz p2, :cond_6

    move-object v3, v2

    move-object v2, v9

    .line 1016
    :goto_1
    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lmf/org/apache/xerces/impl/xs/traversers/Container;

    .line 1017
    if-eqz v8, :cond_b

    .line 1026
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->getAvailableArray()[Ljava/lang/Object;

    move-result-object v3

    const-wide/16 v10, 0x0

    .line 1031
    sget-object v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSeenTemp:[Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSeen:[Z

    const/4 v6, 0x0

    sget v7, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    invoke-static {v2, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1034
    array-length v14, v13

    const/4 v2, 0x0

    move v12, v2

    .line 1036
    :goto_2
    if-ge v12, v14, :cond_19

    .line 1037
    aget-object v6, v13, v12

    .line 1040
    invoke-interface {v6}, Lmf/org/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1041
    invoke-static {v6}, Lmf/org/apache/xerces/util/DOMUtil;->getNamespaceURI(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    .line 1042
    invoke-static {v6}, Lmf/org/apache/xerces/util/DOMUtil;->getValue(Lmf/org/w3c/dom/Attr;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "xml"

    .line 1044
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 1062
    :cond_0
    :goto_3
    if-nez v2, :cond_f

    .line 1098
    :cond_1
    invoke-virtual {v8, v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->get(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    move-result-object v15

    .line 1099
    if-eqz v15, :cond_12

    .line 1107
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSeen:[Z

    iget v6, v15, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    .line 1114
    :try_start_0
    iget v2, v15, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dvIndex:I

    if-gez v2, :cond_13

    .line 1132
    iget v0, v15, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    move/from16 v16, v0

    iget v6, v15, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dvIndex:I

    move-object/from16 v2, p0

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->validate([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v3, v16
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1145
    :cond_2
    :goto_4
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ENUMERATION:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 1036
    :cond_3
    :goto_5
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 978
    return-object v2

    :cond_5
    const-string/jumbo v2, "s4s-elt-schema-ns"

    const/4 v3, 0x1

    .line 990
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v9, v3, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v3, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_0

    .line 1001
    :cond_6
    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    .line 1002
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ELEMENT:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1007
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTE:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move-object v2, v9

    goto/16 :goto_1

    .line 1003
    :cond_7
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lmf/org/apache/xerces/util/DOMUtil;->getAttr(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "element_n"

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v2, "element_r"

    goto/16 :goto_1

    .line 1008
    :cond_9
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lmf/org/apache/xerces/util/DOMUtil;->getAttr(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v2

    if-nez v2, :cond_a

    const-string/jumbo v2, "attribute_n"

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v2, "attribute_r"

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v2, "s4s-elt-invalid"

    const/4 v3, 0x1

    .line 1021
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v9, v3, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v3, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v2, 0x0

    .line 1022
    return-object v2

    .line 1045
    :cond_c
    invoke-static {v6}, Lmf/org/apache/xerces/util/DOMUtil;->getPrefix(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "xmlns"

    .line 1047
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "xmlns"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1053
    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XML_LANG:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1054
    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SCHEMA:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    :cond_d
    const/4 v2, 0x0

    .line 1056
    goto/16 :goto_3

    .line 1055
    :cond_e
    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    goto/16 :goto_3

    .line 1062
    :cond_f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 1065
    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 1069
    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    aget-object v2, v3, v2

    if-eqz v2, :cond_11

    .line 1073
    :goto_6
    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    aget-object v2, v3, v2

    check-cast v2, Ljava/util/Vector;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1074
    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    aget-object v2, v3, v2

    check-cast v2, Ljava/util/Vector;

    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_10
    const-string/jumbo v2, "s4s-att-not-allowed"

    const/4 v5, 0x2

    .line 1066
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v9, v5, v6

    const/4 v6, 0x1

    aput-object v4, v5, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v5, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_5

    .line 1071
    :cond_11
    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    new-instance v6, Ljava/util/Vector;

    const/4 v7, 0x4

    const/4 v15, 0x2

    invoke-direct {v6, v7, v15}, Ljava/util/Vector;-><init>(II)V

    aput-object v6, v3, v2

    goto :goto_6

    :cond_12
    const-string/jumbo v2, "s4s-att-not-allowed"

    const/4 v5, 0x2

    .line 1101
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v9, v5, v6

    const/4 v6, 0x1

    aput-object v4, v5, v6

    .line 1100
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v5, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_5

    .line 1115
    :cond_13
    :try_start_1
    iget v2, v15, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dvIndex:I

    const/4 v6, 0x3

    if-ne v2, v6, :cond_15

    .line 1128
    :cond_14
    iget v2, v15, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    aput-object v5, v3, v2
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 1134
    :catch_0
    move-exception v2

    const-string/jumbo v5, "s4s-att-invalid-value"

    const/4 v6, 0x3

    .line 1136
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v9, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    const/4 v4, 0x2

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v4

    .line 1135
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v6, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 1138
    iget-object v2, v15, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dfltValue:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 1140
    iget v2, v15, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    iget-object v4, v15, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dfltValue:Ljava/lang/Object;

    aput-object v4, v3, v2

    goto/16 :goto_4

    .line 1116
    :cond_15
    :try_start_2
    iget v2, v15, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dvIndex:I

    const/4 v6, 0x6

    if-eq v2, v6, :cond_14

    .line 1117
    iget v2, v15, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dvIndex:I

    const/4 v6, 0x7

    if-eq v2, v6, :cond_14

    .line 1118
    sget-object v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iget v6, v15, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dvIndex:I

    aget-object v2, v2, v6

    .line 1119
    move-object/from16 v0, p3

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fValidationContext:Lmf/org/apache/xerces/impl/validation/ValidationState;

    const/4 v7, 0x0

    invoke-interface {v2, v5, v6, v7}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v5

    .line 1121
    iget v2, v15, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dvIndex:I

    const/4 v6, 0x2

    if-eq v2, v6, :cond_17

    .line 1126
    :cond_16
    :goto_7
    iget v2, v15, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    aput-object v5, v3, v2

    goto/16 :goto_4

    .line 1122
    :cond_17
    move-object v0, v5

    check-cast v0, Lmf/org/apache/xerces/xni/QName;

    move-object v2, v0

    .line 1123
    iget-object v6, v2, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v7, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v6, v7, :cond_16

    iget-object v6, v2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v6, :cond_16

    move-object/from16 v0, p3

    iget-boolean v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fIsChameleonSchema:Z

    if-eqz v6, :cond_16

    .line 1124
    move-object/from16 v0, p3

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    iput-object v6, v2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    .line 1145
    :cond_18
    if-eqz p4, :cond_3

    .line 1146
    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ENUMNSDECLS:I

    new-instance v4, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    move-object/from16 v0, p3

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-direct {v4, v5}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;-><init>(Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;)V

    aput-object v4, v3, v2

    goto/16 :goto_5

    .line 1151
    :cond_19
    iget-object v6, v8, Lmf/org/apache/xerces/impl/xs/traversers/Container;->values:[Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    const/4 v2, 0x0

    move-wide v4, v10

    .line 1152
    :goto_8
    array-length v7, v6

    if-ge v2, v7, :cond_1c

    .line 1153
    aget-object v7, v6, v2

    .line 1157
    iget-object v8, v7, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dfltValue:Ljava/lang/Object;

    if-nez v8, :cond_1b

    .line 1152
    :cond_1a
    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1157
    :cond_1b
    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSeen:[Z

    iget v10, v7, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    aget-boolean v8, v8, v10

    if-nez v8, :cond_1a

    .line 1159
    iget v8, v7, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    iget-object v10, v7, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dfltValue:Ljava/lang/Object;

    aput-object v10, v3, v8

    .line 1160
    iget v7, v7, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    const/4 v8, 0x1

    shl-int v7, v8, v7

    int-to-long v10, v7

    or-long/2addr v4, v10

    goto :goto_9

    .line 1164
    :cond_1c
    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FROMDEFAULT:I

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, v4, v5}, Ljava/lang/Long;-><init>(J)V

    aput-object v6, v3, v2

    .line 1169
    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v2, v3, v2

    if-nez v2, :cond_1e

    .line 1182
    :cond_1d
    :goto_a
    return-object v3

    .line 1170
    :cond_1e
    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    aget-object v2, v3, v2

    check-cast v2, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v4

    .line 1171
    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v2, v3, v2

    check-cast v2, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v2

    const/4 v5, -0x1

    .line 1172
    if-eq v2, v5, :cond_1d

    .line 1173
    if-le v4, v2, :cond_1d

    const-string/jumbo v2, "p-props-correct.2.1"

    const/4 v4, 0x3

    .line 1175
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    const/4 v5, 0x1

    sget v6, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    aget-object v6, v3, v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget v6, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v6, v3, v6

    aput-object v6, v4, v5

    .line 1174
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 1177
    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v4, v3, v4

    aput-object v4, v3, v2

    goto :goto_a
.end method

.method public checkNonSchemaAttributes(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;)V
    .locals 14

    .prologue
    const/16 v13, 0x2c

    const/4 v6, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 1537
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNonSchemaAttrs:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1539
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1540
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1542
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1543
    invoke-virtual {v1, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v1, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1544
    invoke-virtual {v1, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1546
    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v2

    .line 1547
    if-eqz v2, :cond_0

    .line 1551
    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v1

    .line 1552
    if-eqz v1, :cond_0

    .line 1555
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 1556
    if-eqz v1, :cond_0

    .line 1561
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 1563
    invoke-virtual {v0, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1565
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v8

    move v5, v6

    .line 1566
    :goto_0
    if-ge v5, v8, :cond_0

    .line 1567
    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1572
    add-int/lit8 v4, v5, 0x1

    :try_start_0
    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v1, v4, v9, v10}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1566
    :goto_1
    add-int/lit8 v3, v5, 0x2

    move v5, v3

    goto :goto_0

    .line 1573
    :catch_0
    move-exception v4

    const-string/jumbo v9, "s4s-att-invalid-value"

    const/4 v10, 0x3

    .line 1575
    new-array v10, v10, [Ljava/lang/Object;

    aput-object v3, v10, v12

    aput-object v2, v10, v6

    const/4 v3, 0x2

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v3

    .line 1574
    invoke-virtual {p0, v9, v10, v11}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_1

    .line 1580
    :cond_1
    return-void
.end method

.method protected getAvailableArray()[Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1648
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fArrayPool:[[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    if-eq v0, v1, :cond_1

    .line 1656
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fArrayPool:[[Ljava/lang/Object;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    aget-object v0, v0, v1

    .line 1659
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fArrayPool:[[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 1663
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fTempArray:[Ljava/lang/Object;

    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1664
    sget v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ISRETURNED:I

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    .line 1666
    return-object v0

    .line 1650
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    add-int/lit8 v0, v0, 0xa

    new-array v0, v0, [[Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fArrayPool:[[Ljava/lang/Object;

    .line 1652
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fArrayPool:[[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1653
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fArrayPool:[[Ljava/lang/Object;

    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 1652
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V
    .locals 1

    .prologue
    .line 1528
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 1529
    return-void
.end method

.method public reset(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1

    .prologue
    .line 942
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 943
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNonSchemaAttrs:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 944
    return-void
.end method

.method public resolveNamespace(Lmf/org/w3c/dom/Element;[Lmf/org/w3c/dom/Attr;Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1697
    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->pushContext()V

    .line 1700
    array-length v4, p2

    move v2, v0

    .line 1703
    :goto_0
    if-ge v2, v4, :cond_4

    .line 1704
    aget-object v5, p2, v2

    .line 1705
    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 1707
    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "xmlns:"

    .line 1709
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v3, v1

    .line 1711
    :goto_1
    if-nez v3, :cond_2

    .line 1703
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1708
    :cond_0
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object v3, v0

    goto :goto_1

    .line 1710
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    .line 1712
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getValue(Lmf/org/w3c/dom/Attr;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1713
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    move-object v0, v1

    :cond_3
    invoke-virtual {p3, v3, v0}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 1716
    :cond_4
    return-void
.end method

.method public returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V
    .locals 2

    .prologue
    .line 1672
    if-nez p2, :cond_1

    .line 1678
    :goto_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    if-nez v0, :cond_2

    .line 1682
    :cond_0
    return-void

    .line 1673
    :cond_1
    iget-object v0, p2, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->popContext()V

    goto :goto_0

    .line 1679
    :cond_2
    if-eqz p1, :cond_0

    .line 1680
    array-length v0, p1

    sget v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    if-ne v0, v1, :cond_0

    .line 1681
    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ISRETURNED:I

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1686
    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ISRETURNED:I

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, p1, v0

    .line 1688
    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    aget-object v0, p1, v0

    if-nez v0, :cond_3

    .line 1691
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fArrayPool:[[Ljava/lang/Object;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    aput-object p1, v0, v1

    .line 1692
    return-void

    .line 1689
    :cond_3
    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    aget-object v0, p1, v0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    goto :goto_1
.end method
