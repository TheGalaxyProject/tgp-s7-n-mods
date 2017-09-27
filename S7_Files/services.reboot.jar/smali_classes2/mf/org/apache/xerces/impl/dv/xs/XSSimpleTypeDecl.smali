.class public Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
.super Ljava/lang/Object;
.source "XSSimpleTypeDecl.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/dv/XSSimpleType;
.implements Lmf/org/w3c/dom/TypeInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$AbstractObjectList;,
        Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;,
        Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;,
        Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;
    }
.end annotation


# static fields
.field public static final ANYATOMICTYPE_DT:S = 0x31s

.field static final ANY_TYPE:Ljava/lang/String; = "anyType"

.field public static final DAYTIMEDURATION_DT:S = 0x2fs

.field static final DERIVATION_ANY:I = 0x0

.field static final DERIVATION_EXTENSION:I = 0x2

.field static final DERIVATION_LIST:I = 0x8

.field static final DERIVATION_RESTRICTION:I = 0x1

.field static final DERIVATION_UNION:I = 0x4

.field protected static final DV_ANYATOMICTYPE:S = 0x1ds

.field protected static final DV_ANYSIMPLETYPE:S = 0x0s

.field protected static final DV_ANYURI:S = 0x11s

.field protected static final DV_BASE64BINARY:S = 0x10s

.field protected static final DV_BOOLEAN:S = 0x2s

.field protected static final DV_DATE:S = 0x9s

.field protected static final DV_DATETIME:S = 0x7s

.field protected static final DV_DAYTIMEDURATION:S = 0x1cs

.field protected static final DV_DECIMAL:S = 0x3s

.field protected static final DV_DOUBLE:S = 0x5s

.field protected static final DV_DURATION:S = 0x6s

.field protected static final DV_ENTITY:S = 0x17s

.field protected static final DV_FLOAT:S = 0x4s

.field protected static final DV_GDAY:S = 0xds

.field protected static final DV_GMONTH:S = 0xes

.field protected static final DV_GMONTHDAY:S = 0xcs

.field protected static final DV_GYEAR:S = 0xbs

.field protected static final DV_GYEARMONTH:S = 0xas

.field protected static final DV_HEXBINARY:S = 0xfs

.field protected static final DV_ID:S = 0x15s

.field protected static final DV_IDREF:S = 0x16s

.field protected static final DV_INTEGER:S = 0x18s

.field protected static final DV_LIST:S = 0x19s

.field protected static final DV_NOTATION:S = 0x14s

.field protected static final DV_PRECISIONDECIMAL:S = 0x13s

.field protected static final DV_QNAME:S = 0x12s

.field protected static final DV_STRING:S = 0x1s

.field protected static final DV_TIME:S = 0x8s

.field protected static final DV_UNION:S = 0x1as

.field protected static final DV_YEARMONTHDURATION:S = 0x1bs

.field static final NORMALIZE_FULL:S = 0x2s

.field static final NORMALIZE_NONE:S = 0x0s

.field static final NORMALIZE_TRIM:S = 0x1s

.field public static final PRECISIONDECIMAL_DT:S = 0x30s

.field static final SPECIAL_PATTERN_NAME:S = 0x2s

.field static final SPECIAL_PATTERN_NCNAME:S = 0x3s

.field static final SPECIAL_PATTERN_NMTOKEN:S = 0x1s

.field static final SPECIAL_PATTERN_NONE:S = 0x0s

.field static final SPECIAL_PATTERN_STRING:[Ljava/lang/String;

.field static final URI_SCHEMAFORSCHEMA:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema"

.field static final WS_FACET_STRING:[Ljava/lang/String;

.field public static final YEARMONTHDURATION_DT:S = 0x2es

.field static final fAnyAtomicType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

.field static final fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

.field static final fDVNormalizeType:[S

.field static final fDummyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

.field static final fEmptyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

.field private static final gDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;


# instance fields
.field public enumerationAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

.field private fActualEnumeration:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

.field private fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

.field private fAnonymous:Z

.field private fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

.field private fBounded:Z

.field private fBuiltInKind:S

.field private fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

.field private fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

.field private fEnumerationItemTypeList:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

.field private fEnumerationSize:I

.field private fEnumerationTypeList:Lmf/org/apache/xerces/xs/ShortList;

.field private fFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

.field private fFacetsDefined:S

.field private fFinalSet:S

.field private fFinite:Z

.field private fFixedFacet:S

.field private fFractionDigits:I

.field private fIsImmutable:Z

.field private fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

.field private fLength:I

.field private fLexicalEnumeration:Lmf/org/apache/xerces/xs/StringList;

.field private fLexicalPattern:Lmf/org/apache/xerces/xs/StringList;

.field private fMaxExclusive:Ljava/lang/Object;

.field private fMaxInclusive:Ljava/lang/Object;

.field private fMaxLength:I

.field private fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

.field private fMinExclusive:Ljava/lang/Object;

.field private fMinInclusive:Ljava/lang/Object;

.field private fMinLength:I

.field private fMultiValueFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

.field private fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

.field private fNumeric:Z

.field private fOrdered:S

.field private fPattern:Ljava/util/Vector;

.field private fPatternStr:Ljava/util/Vector;

.field private fPatternType:S

.field private fTargetNamespace:Ljava/lang/String;

.field private fTotalDigits:I

.field private fTypeName:Ljava/lang/String;

.field private fValidationDV:S

.field private fVariety:S

.field private fWhiteSpace:S

.field public fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

.field public totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v0, 0x1e

    .line 99
    new-array v0, v0, [Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    const/4 v1, 0x0

    .line 100
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/AnySimpleDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/AnySimpleDV;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 101
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/StringDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/StringDV;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 102
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/BooleanDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/BooleanDV;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 103
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 104
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/FloatDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/FloatDV;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 105
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 106
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 107
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/DateTimeDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/DateTimeDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 108
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/TimeDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/TimeDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 109
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/DateDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/DateDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 110
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/YearMonthDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/YearMonthDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 111
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/YearDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/YearDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 112
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/MonthDayDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/MonthDayDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 113
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/DayDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/DayDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 114
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/MonthDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/MonthDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 115
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/HexBinaryDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/HexBinaryDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 116
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 117
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 118
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/QNameDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/QNameDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 119
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 120
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/QNameDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/QNameDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 121
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/IDDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/IDDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 122
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/IDREFDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/IDREFDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 123
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/EntityDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/EntityDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 124
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/IntegerDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/IntegerDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 125
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/ListDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/ListDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 126
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/UnionDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/UnionDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 127
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/YearMonthDurationDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/YearMonthDurationDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 128
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/DayTimeDurationDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/DayTimeDurationDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 129
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/AnyAtomicDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/AnyAtomicDV;-><init>()V

    aput-object v2, v0, v1

    .line 99
    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->gDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    const/16 v0, 0x1e

    .line 135
    new-array v0, v0, [S

    const/4 v1, 0x1

    .line 137
    const/4 v2, 0x2

    aput-short v2, v0, v1

    const/4 v1, 0x2

    .line 138
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/4 v1, 0x3

    .line 139
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/4 v1, 0x4

    .line 140
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/4 v1, 0x5

    .line 141
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/4 v1, 0x6

    .line 142
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/4 v1, 0x7

    .line 143
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x8

    .line 144
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x9

    .line 145
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0xa

    .line 146
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0xb

    .line 147
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0xc

    .line 148
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0xd

    .line 149
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0xe

    .line 150
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0xf

    .line 151
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x11

    .line 153
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x12

    .line 154
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x13

    .line 155
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x14

    .line 156
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x15

    .line 157
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x16

    .line 158
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x17

    .line 159
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x18

    .line 160
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x19

    .line 161
    const/4 v2, 0x2

    aput-short v2, v0, v1

    const/16 v1, 0x1b

    .line 163
    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x1c

    .line 164
    const/4 v2, 0x1

    aput-short v2, v0, v1

    .line 135
    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVNormalizeType:[S

    const/4 v0, 0x4

    .line 173
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "NONE"

    .line 174
    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "NMTOKEN"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "Name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "NCName"

    aput-object v2, v0, v1

    .line 173
    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->SPECIAL_PATTERN_STRING:[Ljava/lang/String;

    const/4 v0, 0x3

    .line 177
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "preserve"

    .line 178
    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "replace"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "collapse"

    aput-object v2, v0, v1

    .line 177
    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->WS_FACET_STRING:[Ljava/lang/String;

    .line 197
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$1;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$1;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEmptyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    .line 2838
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string/jumbo v2, "anySimpleType"

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 2840
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    sget-object v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string/jumbo v2, "anyAtomicType"

    const/16 v3, 0x1d

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x31

    invoke-direct/range {v0 .. v9}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnyAtomicType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 2845
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$2;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$2;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDummyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    .line 2889
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->gDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    .line 245
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    .line 254
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    .line 256
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    .line 257
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    .line 259
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 260
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    .line 263
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    .line 264
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    .line 265
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    .line 266
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    .line 267
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    .line 268
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    .line 304
    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 306
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    .line 316
    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    .line 2891
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    .line 319
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;ZLmf/org/apache/xerces/xs/XSObjectList;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x10

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->gDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    .line 245
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    .line 254
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    .line 256
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    .line 257
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    .line 259
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 260
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    .line 263
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    .line 264
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    .line 265
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    .line 266
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    .line 267
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    .line 268
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    .line 304
    iput-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 306
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    .line 316
    iput-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    .line 2891
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    .line 427
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 428
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    .line 429
    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    .line 430
    int-to-short v0, p3

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    .line 431
    iput-object p6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 433
    iput-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    .line 434
    iput-object p4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 435
    const/16 v0, 0x19

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    .line 436
    iput-short v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 437
    iput-short v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    .line 438
    iput-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    .line 441
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->calcFundamentalFacets()V

    .line 442
    iput-boolean p5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    .line 445
    const/16 v0, 0x2c

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    .line 446
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;S[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->gDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    .line 245
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    .line 254
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    .line 256
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    .line 257
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    .line 259
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 260
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    .line 263
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    .line 264
    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    .line 265
    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    .line 266
    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    .line 267
    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    .line 268
    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    .line 304
    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 306
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    .line 316
    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    .line 2891
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    .line 451
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 452
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    .line 453
    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    .line 454
    int-to-short v0, p3

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    .line 455
    iput-object p5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 457
    const/4 v0, 0x3

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    .line 458
    iput-object p4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 459
    const/16 v0, 0x1a

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    .line 464
    const/16 v0, 0x10

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 465
    const/4 v0, 0x2

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    .line 468
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->calcFundamentalFacets()V

    .line 471
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    .line 474
    const/16 v0, 0x2d

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    .line 475
    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->gDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    .line 245
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    .line 254
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    .line 256
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    .line 257
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    .line 259
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 260
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    .line 263
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    .line 264
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    .line 265
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    .line 266
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    .line 267
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    .line 268
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    .line 304
    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 306
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    .line 316
    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    .line 2891
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    .line 363
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 364
    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    .line 365
    iput-object p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    .line 366
    int-to-short v0, p4

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    .line 367
    iput-object p6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 369
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    .line 370
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    .line 371
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    packed-switch v0, :pswitch_data_0

    .line 384
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    .line 385
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    .line 386
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    .line 387
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    .line 388
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    .line 389
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    .line 390
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    .line 391
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    .line 392
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    .line 393
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    .line 394
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    .line 395
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    .line 396
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    .line 397
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    .line 398
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    .line 399
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    .line 400
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 403
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 404
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 405
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 406
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    .line 407
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 408
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 409
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 410
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 411
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 412
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 413
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 414
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 417
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->calcFundamentalFacets()V

    .line 418
    iput-boolean p5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    .line 421
    iget-short v0, p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    .line 422
    return-void

    .line 375
    :pswitch_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    goto/16 :goto_0

    .line 378
    :pswitch_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    goto/16 :goto_0

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V
    .locals 1

    .prologue
    .line 355
    invoke-direct/range {p0 .. p6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;)V

    .line 357
    int-to-short v0, p7

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    .line 358
    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V
    .locals 6

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->gDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    .line 245
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    .line 254
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    .line 256
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    .line 257
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    .line 259
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 260
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    .line 263
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    .line 264
    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    .line 265
    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    .line 266
    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    .line 267
    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    .line 268
    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    .line 304
    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 306
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    .line 316
    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    .line 2891
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    .line 325
    iput-boolean p8, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    .line 326
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 327
    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const-string/jumbo v0, "http://www.w3.org/2001/XMLSchema"

    .line 328
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    .line 330
    iput-short v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    .line 331
    int-to-short v0, p3

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    .line 332
    iput-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 333
    if-nez p3, :cond_1

    .line 336
    :cond_0
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    .line 342
    :goto_0
    int-to-short v0, p4

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    .line 343
    iput-boolean p5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    .line 344
    iput-boolean p6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    .line 345
    iput-boolean p7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    .line 346
    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 349
    int-to-short v0, p9

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    .line 350
    return-void

    :cond_1
    const/16 v0, 0x1d

    .line 334
    if-eq p3, v0, :cond_0

    .line 335
    if-eq p3, v4, :cond_0

    .line 339
    const/4 v0, 0x2

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    .line 340
    iput-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    goto :goto_0
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    return-object v0
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    return v0
.end method

.method private appendEnumString(Ljava/lang/StringBuffer;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3481
    const/16 v1, 0x5b

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3482
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    if-ge v0, v1, :cond_1

    .line 3483
    if-nez v0, :cond_0

    .line 3486
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 3482
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, ", "

    .line 3484
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 3488
    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3489
    return-void
.end method

.method private calcFundamentalFacets()V
    .locals 0

    .prologue
    .line 2377
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setOrdered()V

    .line 2378
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setNumeric()V

    .line 2379
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setBounded()V

    .line 2380
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setCardinality()V

    .line 2381
    return-void
.end method

.method private checkExtraRules(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    .prologue
    .line 1778
    iget-object v0, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    .line 1780
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 1784
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 1811
    iget-object v0, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-direct {v0, p1, p2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->checkExtraRules(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    .line 1815
    :goto_0
    return-void

    .line 1782
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v1, v1, v2

    invoke-virtual {v1, v0, p1}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->checkExtraRules(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V

    goto :goto_0

    .line 1786
    :cond_1
    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;

    .line 1787
    iget-object v3, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 1788
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->getLength()I

    move-result v2

    .line 1790
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2

    .line 1798
    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 1799
    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->item(I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    .line 1800
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-direct {v2, p1, p2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->checkExtraRules(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    .line 1798
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1791
    :cond_2
    iget-object v1, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberTypes:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    check-cast v1, [Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 1792
    :goto_2
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_3

    .line 1793
    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->item(I)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    .line 1794
    aget-object v4, v1, v2

    iput-object v4, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 1795
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-direct {v4, p1, p2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->checkExtraRules(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1803
    :catchall_0
    move-exception v1

    .line 1805
    iput-object v0, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    .line 1806
    iput-object v3, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 1807
    throw v1

    .line 1805
    :cond_3
    iput-object v0, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    .line 1806
    iput-object v3, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto :goto_0
.end method

.method private checkFacets(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    .prologue
    .line 1636
    iget-object v4, p1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    .line 1637
    iget-object v5, p1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    .line 1638
    iget-short v0, p1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    .line 1639
    iget-object v6, p1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    .line 1642
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v2, 0x12

    if-ne v1, v2, :cond_8

    .line 1671
    :cond_0
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x800

    if-nez v1, :cond_d

    .line 1719
    :cond_1
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_1e

    .line 1728
    :cond_2
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_1f

    .line 1739
    :cond_3
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_20

    .line 1748
    :cond_4
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_21

    .line 1757
    :cond_5
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_22

    .line 1766
    :cond_6
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_23

    .line 1774
    :cond_7
    return-void

    .line 1642
    :cond_8
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v2, 0x14

    if-eq v1, v2, :cond_0

    .line 1643
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v1, v1, v2

    invoke-virtual {v1, v4}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->getDataLength(Ljava/lang/Object;)I

    move-result v1

    .line 1646
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_b

    .line 1654
    :cond_9
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_c

    .line 1662
    :cond_a
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 1663
    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    if-eq v1, v2, :cond_0

    .line 1664
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v2, "cvc-length-valid"

    const/4 v3, 0x4

    .line 1665
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v3, v1

    .line 1664
    invoke-direct {v0, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1647
    :cond_b
    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    if-le v1, v2, :cond_9

    .line 1648
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v2, "cvc-maxLength-valid"

    const/4 v3, 0x4

    .line 1649
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v3, v1

    .line 1648
    invoke-direct {v0, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1655
    :cond_c
    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    if-ge v1, v2, :cond_a

    .line 1656
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v2, "cvc-minLength-valid"

    const/4 v3, 0x4

    .line 1657
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v3, v1

    .line 1656
    invoke-direct {v0, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1672
    :cond_d
    const/4 v2, 0x0

    .line 1673
    iget v7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    .line 1674
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->convertToPrimitiveKind(S)S

    move-result v8

    const/4 v0, 0x0

    move v3, v0

    .line 1675
    :goto_0
    if-ge v3, v7, :cond_24

    .line 1676
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    aget-object v0, v0, v3

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->convertToPrimitiveKind(S)S

    move-result v0

    .line 1677
    if-ne v8, v0, :cond_10

    .line 1680
    :cond_e
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    aget-object v0, v0, v3

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1675
    :cond_f
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_10
    const/4 v1, 0x1

    .line 1678
    if-eq v8, v1, :cond_12

    :cond_11
    const/4 v1, 0x2

    .line 1679
    if-ne v8, v1, :cond_f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    goto :goto_2

    :cond_12
    const/4 v1, 0x2

    .line 1678
    if-ne v0, v1, :cond_11

    goto :goto_1

    :cond_13
    const/16 v0, 0x2c

    .line 1681
    if-ne v8, v0, :cond_16

    .line 1682
    :cond_14
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    aget-object v0, v0, v3

    iget-object v9, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    .line 1683
    if-nez v6, :cond_17

    const/4 v0, 0x0

    .line 1684
    :goto_3
    if-nez v9, :cond_18

    const/4 v1, 0x0

    .line 1685
    :goto_4
    if-ne v0, v1, :cond_f

    const/4 v1, 0x0

    .line 1687
    :goto_5
    if-ge v1, v0, :cond_1b

    .line 1688
    invoke-interface {v6, v1}, Lmf/org/apache/xerces/xs/ShortList;->item(I)S

    move-result v10

    invoke-direct {p0, v10}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->convertToPrimitiveKind(S)S

    move-result v10

    .line 1689
    invoke-interface {v9, v1}, Lmf/org/apache/xerces/xs/ShortList;->item(I)S

    move-result v11

    invoke-direct {p0, v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->convertToPrimitiveKind(S)S

    move-result v11

    .line 1690
    if-ne v10, v11, :cond_19

    .line 1687
    :cond_15
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_16
    const/16 v0, 0x2b

    .line 1681
    if-eq v8, v0, :cond_14

    .line 1705
    const/4 v0, 0x1

    .line 1710
    :goto_7
    if-nez v0, :cond_1

    .line 1711
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1712
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->appendEnumString(Ljava/lang/StringBuffer;)V

    .line 1713
    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v2, "cvc-enumeration-valid"

    const/4 v3, 0x2

    .line 1714
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 1713
    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 1683
    :cond_17
    invoke-interface {v6}, Lmf/org/apache/xerces/xs/ShortList;->getLength()I

    move-result v0

    goto :goto_3

    .line 1684
    :cond_18
    invoke-interface {v9}, Lmf/org/apache/xerces/xs/ShortList;->getLength()I

    move-result v1

    goto :goto_4

    :cond_19
    const/4 v12, 0x1

    .line 1691
    if-eq v10, v12, :cond_1c

    :cond_1a
    const/4 v12, 0x2

    .line 1692
    if-eq v10, v12, :cond_1d

    .line 1698
    :cond_1b
    :goto_8
    if-ne v1, v0, :cond_f

    .line 1699
    const/4 v0, 0x1

    goto :goto_7

    :cond_1c
    const/4 v12, 0x2

    .line 1691
    if-ne v11, v12, :cond_1a

    goto :goto_6

    :cond_1d
    const/4 v10, 0x1

    .line 1692
    if-eq v11, v10, :cond_15

    goto :goto_8

    .line 1720
    :cond_1e
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->getFractionDigits(Ljava/lang/Object;)I

    move-result v0

    .line 1721
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    if-le v0, v1, :cond_2

    .line 1722
    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v2, "cvc-fractionDigits-valid"

    const/4 v3, 0x3

    .line 1723
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 1722
    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 1729
    :cond_1f
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->getTotalDigits(Ljava/lang/Object;)I

    move-result v0

    .line 1730
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    if-le v0, v1, :cond_3

    .line 1731
    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v2, "cvc-totalDigits-valid"

    const/4 v3, 0x3

    .line 1732
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 1731
    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 1740
    :cond_20
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v0, v0, v1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    invoke-virtual {v0, v4, v1}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    .line 1741
    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_4

    .line 1742
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-maxInclusive-valid"

    const/4 v2, 0x3

    .line 1743
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v5, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 1742
    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1749
    :cond_21
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v0, v0, v1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    invoke-virtual {v0, v4, v1}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    .line 1750
    if-eq v0, v1, :cond_5

    .line 1751
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-maxExclusive-valid"

    const/4 v2, 0x3

    .line 1752
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v5, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 1751
    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1758
    :cond_22
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v0, v0, v1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    invoke-virtual {v0, v4, v1}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    .line 1759
    if-eq v0, v1, :cond_6

    if-eqz v0, :cond_6

    .line 1760
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-minInclusive-valid"

    const/4 v2, 0x3

    .line 1761
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v5, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 1760
    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1767
    :cond_23
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v0, v0, v1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    invoke-virtual {v0, v4, v1}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    .line 1768
    if-eq v0, v1, :cond_7

    .line 1769
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-minExclusive-valid"

    const/4 v2, 0x3

    .line 1770
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v5, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 1769
    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_24
    move v0, v2

    goto/16 :goto_7
.end method

.method private convertToPrimitiveKind(S)S
    .locals 1

    .prologue
    const/16 v0, 0x14

    .line 3465
    if-le p1, v0, :cond_0

    const/16 v0, 0x1d

    .line 3469
    if-le p1, v0, :cond_1

    const/16 v0, 0x2a

    .line 3473
    if-le p1, v0, :cond_2

    .line 3477
    return p1

    .line 3466
    :cond_0
    return p1

    .line 3470
    :cond_1
    const/4 v0, 0x2

    return v0

    .line 3474
    :cond_2
    const/4 v0, 0x4

    return v0
.end method

.method private getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    .prologue
    .line 1823
    if-nez p4, :cond_3

    .line 1826
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1828
    :goto_0
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_4

    .line 1842
    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    .line 1874
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v2, 0x2

    if-eq v0, v2, :cond_f

    .line 1914
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length v0, v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_18

    :cond_1
    move-object v0, p1

    :goto_1
    const/4 v1, 0x0

    .line 1915
    :goto_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length v2, v2

    if-ge v1, v2, :cond_1a

    .line 1923
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    invoke-direct {v2, v0, p2, p3, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v2

    .line 1924
    invoke-interface {p2}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->needFacetChecking()Z

    move-result v3

    if-nez v3, :cond_19

    .line 1928
    :cond_2
    :goto_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v3, v3, v1

    iput-object v3, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 1930
    iput-object p0, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1931
    return-object v2

    .line 1824
    :cond_3
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->normalize(Ljava/lang/Object;S)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1825
    goto :goto_0

    .line 1830
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_4
    if-ltz v2, :cond_0

    .line 1831
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    .line 1832
    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1830
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_4

    .line 1833
    :cond_5
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-pattern-valid"

    const/4 v3, 0x3

    .line 1834
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    .line 1835
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x2

    .line 1837
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v3, v2

    .line 1833
    invoke-direct {v0, v1, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1845
    :cond_6
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    if-nez v0, :cond_8

    .line 1866
    :cond_7
    iput-object v1, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    .line 1867
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v0, v0, v2

    invoke-virtual {v0, v1, p2}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->getActualValue(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)Ljava/lang/Object;

    move-result-object v0

    .line 1868
    iput-object v0, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    .line 1869
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    int-to-short v1, v1

    iput-short v1, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    .line 1870
    iput-object p0, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 1872
    return-object v0

    .line 1847
    :cond_8
    const/4 v0, 0x0

    .line 1848
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    const/4 v3, 0x1

    if-eq v2, v3, :cond_9

    .line 1852
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    const/4 v3, 0x2

    if-eq v2, v3, :cond_b

    .line 1856
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    const/4 v3, 0x3

    if-eq v2, v3, :cond_d

    .line 1860
    :goto_5
    if-eqz v0, :cond_7

    .line 1861
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v2, "cvc-datatype-valid.1.2.1"

    const/4 v3, 0x2

    .line 1862
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    sget-object v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->SPECIAL_PATTERN_STRING:[Ljava/lang/String;

    iget-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    aget-object v4, v4, v5

    aput-object v4, v3, v1

    .line 1861
    invoke-direct {v0, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1850
    :cond_9
    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isValidNmtoken(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_5

    :cond_a
    const/4 v0, 0x0

    goto :goto_5

    .line 1854
    :cond_b
    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isValidName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    goto :goto_5

    .line 1858
    :cond_d
    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_5

    :cond_e
    const/4 v0, 0x0

    goto :goto_5

    .line 1876
    :cond_f
    new-instance v5, Ljava/util/StringTokenizer;

    const-string/jumbo v0, " "

    invoke-direct {v5, v1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1877
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    .line 1878
    new-array v6, v3, [Ljava/lang/Object;

    .line 1879
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getVariety()S

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_11

    const/4 v0, 0x0

    move v2, v0

    .line 1880
    :goto_6
    if-nez v2, :cond_12

    const/4 v0, 0x1

    :goto_7
    new-array v7, v0, [S

    .line 1881
    if-eqz v2, :cond_13

    .line 1883
    :goto_8
    new-array v8, v3, [Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v0, 0x0

    move v4, v0

    .line 1884
    :goto_9
    if-ge v4, v3, :cond_16

    .line 1891
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v0, v9, p2, p3, v10}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v6, v4

    .line 1892
    invoke-interface {p2}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->needFacetChecking()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1896
    :cond_10
    :goto_a
    iget-object v0, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aput-object v0, v8, v4

    .line 1897
    if-nez v2, :cond_15

    .line 1884
    :goto_b
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_9

    :cond_11
    const/4 v0, 0x1

    move v2, v0

    .line 1879
    goto :goto_6

    :cond_12
    move v0, v3

    .line 1880
    goto :goto_7

    :cond_13
    const/4 v0, 0x0

    .line 1882
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    int-to-short v4, v4

    aput-short v4, v7, v0

    goto :goto_8

    .line 1893
    :cond_14
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    if-eqz v0, :cond_10

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    const/16 v9, 0x10

    if-eq v0, v9, :cond_10

    .line 1894
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-direct {v0, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->checkFacets(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    goto :goto_a

    .line 1898
    :cond_15
    aget-object v0, v8, v4

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    int-to-short v0, v0

    aput-short v0, v7, v4

    goto :goto_b

    .line 1901
    :cond_16
    new-instance v3, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;

    invoke-direct {v3, v6}, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;-><init>([Ljava/lang/Object;)V

    .line 1902
    iput-object v3, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    .line 1903
    if-nez v2, :cond_17

    const/16 v0, 0x2c

    :goto_c
    int-to-short v0, v0

    iput-short v0, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    const/4 v0, 0x0

    .line 1904
    iput-object v0, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 1905
    iput-object v8, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberTypes:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 1906
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;

    array-length v2, v7

    invoke-direct {v0, v7, v2}, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;-><init>([SI)V

    iput-object v0, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    .line 1907
    iput-object v1, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    .line 1909
    iput-object p0, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 1911
    return-object v3

    :cond_17
    const/16 v0, 0x2b

    .line 1903
    goto :goto_c

    .line 1914
    :cond_18
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1925
    :cond_19
    :try_start_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v3, v3, v1

    iget-short v3, v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    if-eqz v3, :cond_2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v3, v3, v1

    iget-short v3, v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    const/16 v4, 0x10

    if-eq v3, v4, :cond_2

    .line 1926
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v3, v3, v1

    invoke-direct {v3, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->checkFacets(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 1931
    :catch_0
    move-exception v2

    .line 1915
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 1935
    :cond_1a
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    .line 1937
    :goto_d
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length v2, v2

    if-ge v0, v2, :cond_1e

    .line 1938
    if-nez v0, :cond_1b

    .line 1940
    :goto_e
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v2, v2, v0

    .line 1941
    iget-object v3, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    if-nez v3, :cond_1c

    .line 1946
    :goto_f
    iget-object v3, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1947
    iget-object v3, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-nez v3, :cond_1d

    .line 1937
    :goto_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1b
    const-string/jumbo v2, " | "

    .line 1939
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e

    .line 1942
    :cond_1c
    const/16 v3, 0x7b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1943
    iget-object v3, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1944
    const/16 v3, 0x7d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_f

    :cond_1d
    const-string/jumbo v3, " : "

    .line 1948
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1949
    invoke-direct {v2, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->appendEnumString(Ljava/lang/StringBuffer;)V

    goto :goto_10

    .line 1952
    :cond_1e
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v2, "cvc-datatype-valid.1.2.3"

    const/4 v3, 0x3

    .line 1953
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    .line 1952
    invoke-direct {v0, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method protected static getGDVs()[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;
    .locals 1

    .prologue
    .line 235
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->gDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    return-object v0
.end method

.method private getPrimitiveDV(S)S
    .locals 1

    .prologue
    const/16 v0, 0x15

    .line 2549
    if-ne p1, v0, :cond_1

    .line 2550
    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/16 v0, 0x16

    .line 2549
    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    .line 2552
    if-eq p1, v0, :cond_2

    .line 2559
    return p1

    .line 2553
    :cond_2
    const/4 v0, 0x3

    return v0
.end method

.method private isDerivedByAny(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    move-object v0, v1

    move-object v1, p3

    .line 2703
    :goto_0
    if-nez v1, :cond_0

    move v0, v2

    .line 2737
    :goto_1
    return v0

    .line 2703
    :cond_0
    if-eq v1, v0, :cond_d

    .line 2706
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2714
    :cond_1
    invoke-direct {p0, p1, p2, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2716
    invoke-direct {p0, p1, p2, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByList(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2718
    invoke-direct {p0, p1, p2, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByUnion(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v0

    if-nez v0, :cond_8

    move-object v0, v1

    .line 2723
    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getVariety()S

    move-result v0

    if-nez v0, :cond_9

    .line 2725
    :cond_2
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p3

    move-object v0, v1

    move-object v1, p3

    .line 2726
    goto :goto_0

    .line 2707
    :cond_3
    if-eqz p1, :cond_5

    .line 2708
    :cond_4
    if-eqz p1, :cond_1

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_2
    move v0, v3

    .line 2710
    goto :goto_1

    .line 2707
    :cond_5
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 2715
    :cond_6
    return v3

    .line 2717
    :cond_7
    return v3

    .line 2719
    :cond_8
    return v3

    :cond_9
    move-object v0, v1

    .line 2724
    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getVariety()S

    move-result v0

    if-eq v0, v3, :cond_2

    move-object v0, v1

    .line 2726
    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getVariety()S

    move-result v0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_a

    move-object v0, v1

    .line 2732
    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getVariety()S

    move-result v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_c

    move-object v0, v1

    goto :goto_0

    :cond_a
    move-object v0, v1

    .line 2727
    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v0

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v0

    if-gtz v0, :cond_b

    move-object v0, v1

    goto :goto_0

    .line 2729
    :cond_b
    check-cast v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 2730
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v0

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v0

    .line 2729
    check-cast v0, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 2728
    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByAny(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v0

    return v0

    :cond_c
    move-object v0, v1

    .line 2733
    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getItemType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object p3

    move-object v0, v1

    move-object v1, p3

    goto/16 :goto_0

    :cond_d
    move v0, v2

    goto/16 :goto_1
.end method

.method private isDerivedByList(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2786
    if-nez p3, :cond_1

    .line 2800
    :cond_0
    return v2

    :cond_1
    move-object v0, p3

    .line 2786
    check-cast v0, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2789
    check-cast p3, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    invoke-interface {p3}, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;->getItemType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v0

    .line 2792
    if-eqz v0, :cond_0

    .line 2795
    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2796
    const/4 v0, 0x1

    return v0
.end method

.method private isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    move-object v1, p3

    .line 2757
    :goto_0
    if-nez v1, :cond_1

    .line 2768
    :cond_0
    return v2

    .line 2757
    :cond_1
    if-eq v1, v0, :cond_0

    .line 2758
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2765
    :cond_2
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p3

    move-object v0, v1

    move-object v1, p3

    goto :goto_0

    .line 2759
    :cond_3
    if-nez p1, :cond_5

    .line 2760
    :cond_4
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    .line 2762
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 2759
    :cond_5
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1
.end method

.method private isDerivedByUnion(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2819
    if-nez p3, :cond_1

    .line 2834
    :cond_0
    return v2

    :cond_1
    move-object v0, p3

    .line 2819
    check-cast v0, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2822
    check-cast p3, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    invoke-interface {p3}, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;->getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v3

    move v1, v2

    .line 2824
    :goto_0
    invoke-interface {v3}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 2826
    invoke-interface {v3, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v0

    if-nez v0, :cond_3

    .line 2824
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2828
    :cond_3
    invoke-interface {v3, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2829
    const/4 v0, 0x1

    return v0
.end method

.method public static normalize(Ljava/lang/String;S)Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v9, 0xd

    const/16 v8, 0xa

    const/16 v7, 0x9

    const/16 v6, 0x20

    const/4 v1, 0x0

    .line 1975
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1976
    :goto_0
    if-nez v0, :cond_2

    .line 1977
    :cond_0
    return-object p0

    :cond_1
    move v0, v1

    .line 1975
    goto :goto_0

    .line 1976
    :cond_2
    if-eqz p1, :cond_0

    .line 1979
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x1

    .line 1980
    if-eq p1, v2, :cond_6

    .line 1993
    const/4 v2, 0x1

    move v3, v1

    .line 1995
    :goto_1
    if-ge v3, v0, :cond_d

    .line 1996
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1998
    if-ne v5, v7, :cond_9

    .line 2004
    :cond_3
    :goto_2
    add-int/lit8 v5, v0, -0x1

    if-ge v3, v5, :cond_c

    .line 2005
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2006
    if-ne v5, v7, :cond_b

    .line 2004
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1986
    :cond_5
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1983
    :goto_3
    add-int/lit8 v1, v1, 0x1

    :cond_6
    if-ge v1, v0, :cond_d

    .line 1984
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1985
    if-ne v2, v7, :cond_8

    .line 1988
    :cond_7
    :goto_4
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1985
    :cond_8
    if-eq v2, v8, :cond_7

    if-ne v2, v9, :cond_5

    goto :goto_4

    .line 1998
    :cond_9
    if-eq v5, v8, :cond_3

    if-eq v5, v9, :cond_3

    if-eq v5, v6, :cond_3

    .line 1999
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v1

    .line 1995
    :cond_a
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2006
    :cond_b
    if-eq v5, v8, :cond_4

    if-eq v5, v9, :cond_4

    if-eq v5, v6, :cond_4

    .line 2010
    :cond_c
    add-int/lit8 v5, v0, -0x1

    if-ge v3, v5, :cond_a

    if-nez v2, :cond_a

    .line 2011
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 2016
    :cond_d
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setBounded()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 2451
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    if-eq v0, v5, :cond_0

    .line 2460
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    .line 2470
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v2, 0x3

    if-eq v0, v2, :cond_9

    .line 2488
    :goto_0
    return-void

    .line 2452
    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_3

    .line 2453
    :cond_1
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 2454
    :cond_2
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    goto :goto_0

    .line 2452
    :cond_3
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_1

    .line 2457
    :goto_1
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    goto :goto_0

    .line 2453
    :cond_4
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_2

    goto :goto_1

    .line 2461
    :cond_5
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    .line 2463
    :cond_6
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    goto :goto_0

    .line 2461
    :cond_7
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_8

    .line 2466
    :goto_2
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    goto :goto_0

    .line 2462
    :cond_8
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_6

    goto :goto_2

    .line 2472
    :cond_9
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 2475
    array-length v0, v3

    if-gtz v0, :cond_b

    move v0, v1

    :goto_3
    move v2, v1

    .line 2479
    :goto_4
    array-length v4, v3

    if-ge v2, v4, :cond_d

    .line 2480
    aget-object v4, v3, v2

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getBounded()Z

    move-result v4

    if-nez v4, :cond_c

    .line 2481
    :cond_a
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    .line 2482
    return-void

    .line 2476
    :cond_b
    aget-object v0, v3, v1

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getPrimitiveDV(S)S

    move-result v0

    goto :goto_3

    .line 2480
    :cond_c
    aget-object v4, v3, v2

    iget-short v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getPrimitiveDV(S)S

    move-result v4

    if-ne v0, v4, :cond_a

    .line 2479
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2485
    :cond_d
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    goto :goto_0
.end method

.method private setCardinality()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 2501
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    if-eq v0, v4, :cond_0

    .line 2524
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v2, 0x2

    if-eq v0, v2, :cond_a

    .line 2534
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v2, 0x3

    if-eq v0, v2, :cond_e

    .line 2545
    :goto_0
    return-void

    .line 2502
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    if-nez v0, :cond_2

    .line 2506
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 2508
    :cond_1
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_0

    .line 2503
    :cond_2
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_0

    .line 2506
    :cond_3
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 2507
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_1

    .line 2510
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_7

    .line 2511
    :cond_4
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    .line 2512
    :cond_5
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_9

    .line 2513
    :cond_6
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_0

    .line 2510
    :cond_7
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_4

    .line 2520
    :goto_1
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_0

    .line 2511
    :cond_8
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_5

    goto :goto_1

    .line 2512
    :cond_9
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->specialCardinalityCheck()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2516
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_0

    .line 2525
    :cond_a
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_c

    .line 2527
    :cond_b
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_0

    .line 2525
    :cond_c
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_d

    .line 2530
    :goto_2
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_0

    .line 2526
    :cond_d
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_b

    goto :goto_2

    .line 2535
    :cond_e
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move v0, v1

    .line 2536
    :goto_3
    array-length v3, v2

    if-ge v0, v3, :cond_10

    .line 2537
    aget-object v3, v2, v0

    invoke-interface {v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getFinite()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2536
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2538
    :cond_f
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    .line 2539
    return-void

    .line 2542
    :cond_10
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_0
.end method

.method private setNumeric()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 2431
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    if-eq v0, v4, :cond_0

    .line 2434
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 2437
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    .line 2448
    :goto_0
    return-void

    .line 2432
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    goto :goto_0

    .line 2435
    :cond_1
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    goto :goto_0

    .line 2438
    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move v0, v1

    .line 2439
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 2440
    aget-object v3, v2, v0

    invoke-interface {v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getNumeric()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2439
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2441
    :cond_3
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    .line 2442
    return-void

    .line 2445
    :cond_4
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    goto :goto_0
.end method

.method private setOrdered()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2386
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    if-eq v0, v2, :cond_0

    .line 2391
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    .line 2398
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    .line 2428
    :goto_0
    return-void

    .line 2387
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    goto :goto_0

    .line 2392
    :cond_1
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    goto :goto_0

    .line 2399
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length v0, v0

    .line 2401
    if-eqz v0, :cond_4

    .line 2406
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v0, v0, v1

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getPrimitiveDV(S)S

    move-result v6

    .line 2407
    if-nez v6, :cond_5

    move v0, v1

    .line 2408
    :goto_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v3, v3, v1

    iget-short v3, v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    if-eqz v3, :cond_6

    move v3, v1

    :goto_2
    move v4, v2

    .line 2411
    :goto_3
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length v5, v5

    if-lt v4, v5, :cond_7

    .line 2417
    :cond_3
    if-nez v0, :cond_d

    .line 2421
    if-nez v3, :cond_e

    .line 2424
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    goto :goto_0

    .line 2402
    :cond_4
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    .line 2403
    return-void

    :cond_5
    move v0, v2

    .line 2407
    goto :goto_1

    :cond_6
    move v3, v2

    .line 2408
    goto :goto_2

    .line 2411
    :cond_7
    if-eqz v0, :cond_c

    .line 2412
    :goto_4
    if-nez v0, :cond_8

    move v5, v0

    .line 2414
    :goto_5
    if-nez v3, :cond_a

    move v0, v3

    .line 2411
    :goto_6
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v0

    move v0, v5

    goto :goto_3

    .line 2413
    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v0, v0, v4

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getPrimitiveDV(S)S

    move-result v0

    if-eq v6, v0, :cond_9

    move v0, v1

    :goto_7
    move v5, v0

    goto :goto_5

    :cond_9
    move v0, v2

    goto :goto_7

    .line 2415
    :cond_a
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v0, v0, v4

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_6

    :cond_b
    move v0, v2

    goto :goto_6

    .line 2411
    :cond_c
    if-eqz v3, :cond_3

    goto :goto_4

    .line 2420
    :cond_d
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v0, v0, v1

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    goto :goto_0

    .line 2422
    :cond_e
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    goto :goto_0
.end method

.method private specialCardinalityCheck()Z
    .locals 2

    .prologue
    .line 2491
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 2494
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 2491
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 2492
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 2493
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    .line 2496
    const/4 v0, 0x0

    return v0
.end method

.method private whiteSpaceValue(S)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2096
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->WS_FACET_STRING:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method


# virtual methods
.method public applyFacets(Lmf/org/apache/xerces/impl/dv/XSFacets;SSLmf/org/apache/xerces/impl/dv/ValidationContext;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;
        }
    .end annotation

    .prologue
    .line 736
    if-eqz p4, :cond_0

    move-object v5, p4

    .line 739
    :goto_0
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets(Lmf/org/apache/xerces/impl/dv/XSFacets;SSSLmf/org/apache/xerces/impl/dv/ValidationContext;)V

    .line 740
    return-void

    .line 737
    :cond_0
    sget-object v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEmptyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    goto :goto_0
.end method

.method applyFacets(Lmf/org/apache/xerces/impl/dv/XSFacets;SSSLmf/org/apache/xerces/impl/dv/ValidationContext;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;
        }
    .end annotation

    .prologue
    .line 779
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    if-nez v1, :cond_18

    .line 780
    new-instance v3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    .line 789
    const/4 v1, 0x0

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 790
    const/4 v1, 0x0

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    .line 795
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->getAllowedFacets()S

    move-result v4

    .line 798
    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_19

    .line 810
    :cond_0
    :goto_0
    and-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_1b

    .line 822
    :cond_1
    :goto_1
    and-int/lit8 v1, p2, 0x4

    if-nez v1, :cond_1d

    .line 834
    :cond_2
    :goto_2
    and-int/lit8 v1, p2, 0x8

    if-nez v1, :cond_1f

    .line 858
    :cond_3
    :goto_3
    and-int/lit8 v1, p2, 0x10

    if-nez v1, :cond_21

    .line 870
    :cond_4
    :goto_4
    and-int/lit16 v1, p2, 0x800

    if-nez v1, :cond_23

    .line 899
    :cond_5
    :goto_5
    and-int/lit8 v1, p2, 0x20

    if-nez v1, :cond_27

    .line 934
    :goto_6
    const/4 v2, 0x1

    .line 935
    and-int/lit8 v1, p2, 0x40

    if-nez v1, :cond_2c

    .line 981
    :cond_6
    :goto_7
    const/4 v2, 0x1

    .line 982
    and-int/lit16 v1, p2, 0x80

    if-nez v1, :cond_34

    .line 1028
    :cond_7
    :goto_8
    and-int/lit16 v1, p2, 0x100

    if-nez v1, :cond_3c

    .line 1063
    :goto_9
    and-int/lit16 v1, p2, 0x200

    if-nez v1, :cond_41

    .line 1075
    :cond_8
    :goto_a
    and-int/lit16 v1, p2, 0x400

    if-nez v1, :cond_43

    .line 1088
    :cond_9
    :goto_b
    if-nez p4, :cond_45

    .line 1093
    :goto_c
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    if-nez v1, :cond_46

    .line 1425
    :cond_a
    :goto_d
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_85

    .line 1431
    :cond_b
    :goto_e
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_86

    .line 1437
    :cond_c
    :goto_f
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_87

    .line 1443
    :cond_d
    :goto_10
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_88

    .line 1468
    :cond_e
    :goto_11
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_8c

    .line 1474
    :cond_f
    :goto_12
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_8d

    .line 1481
    :cond_10
    :goto_13
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_8e

    .line 1488
    :cond_11
    :goto_14
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_8f

    .line 1495
    :cond_12
    :goto_15
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_90

    .line 1502
    :cond_13
    :goto_16
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_91

    .line 1509
    :cond_14
    :goto_17
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_92

    .line 1516
    :cond_15
    :goto_18
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_93

    .line 1523
    :cond_16
    :goto_19
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    if-eqz v1, :cond_94

    .line 1528
    :cond_17
    :goto_1a
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/2addr v1, v2

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    .line 1531
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->calcFundamentalFacets()V

    .line 1533
    return-void

    .line 779
    :cond_18
    return-void

    .line 799
    :cond_19
    and-int/lit8 v1, v4, 0x1

    if-eqz v1, :cond_1a

    .line 802
    iget v1, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->length:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    .line 803
    iget-object v1, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 804
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 805
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_0

    .line 806
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    goto/16 :goto_0

    :cond_1a
    const-string/jumbo v1, "cos-applicable-facets"

    const/4 v2, 0x2

    .line 800
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "length"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v6, v2, v5

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 811
    :cond_1b
    and-int/lit8 v1, v4, 0x2

    if-eqz v1, :cond_1c

    .line 814
    iget v1, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    .line 815
    iget-object v1, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 816
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 817
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_1

    .line 818
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    goto/16 :goto_1

    :cond_1c
    const-string/jumbo v1, "cos-applicable-facets"

    const/4 v2, 0x2

    .line 812
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "minLength"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v6, v2, v5

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 823
    :cond_1d
    and-int/lit8 v1, v4, 0x4

    if-eqz v1, :cond_1e

    .line 826
    iget v1, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    .line 827
    iget-object v1, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 828
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v1, v1, 0x4

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 829
    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_2

    .line 830
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit8 v1, v1, 0x4

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    goto/16 :goto_2

    :cond_1e
    const-string/jumbo v1, "cos-applicable-facets"

    const/4 v2, 0x2

    .line 824
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "maxLength"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v6, v2, v5

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 835
    :cond_1f
    and-int/lit8 v1, v4, 0x8

    if-eqz v1, :cond_20

    .line 838
    iget-object v1, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    const/4 v2, 0x0

    .line 841
    :try_start_0
    new-instance v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    iget-object v5, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->pattern:Ljava/lang/String;

    const-string/jumbo v6, "X"

    invoke-interface/range {p5 .. p5}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->getLocale()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v1, v5, v6, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    :goto_1b
    if-eqz v1, :cond_3

    .line 846
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    .line 847
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 848
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    .line 849
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->pattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 850
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v1, v1, 0x8

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 851
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_3

    .line 852
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit8 v1, v1, 0x8

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    goto/16 :goto_3

    :cond_20
    const-string/jumbo v1, "cos-applicable-facets"

    const/4 v2, 0x2

    .line 836
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "pattern"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v6, v2, v5

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 842
    :catch_0
    move-exception v1

    const-string/jumbo v5, "InvalidRegex"

    const/4 v6, 0x2

    .line 843
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->pattern:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v2

    goto :goto_1b

    .line 859
    :cond_21
    and-int/lit8 v1, v4, 0x10

    if-eqz v1, :cond_22

    .line 862
    iget-short v1, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->whiteSpace:S

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    .line 863
    iget-object v1, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 864
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v1, v1, 0x10

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 865
    and-int/lit8 v1, p3, 0x10

    if-eqz v1, :cond_4

    .line 866
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit8 v1, v1, 0x10

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    goto/16 :goto_4

    :cond_22
    const-string/jumbo v1, "cos-applicable-facets"

    const/4 v2, 0x2

    .line 860
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "whiteSpace"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v6, v2, v5

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 871
    :cond_23
    and-int/lit16 v1, v4, 0x800

    if-eqz v1, :cond_24

    .line 874
    iget-object v5, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->enumeration:Ljava/util/Vector;

    .line 875
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v6

    .line 876
    new-array v1, v6, [Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    .line 877
    iget-object v7, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->enumNSDecls:Ljava/util/Vector;

    .line 878
    new-instance v8, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;

    move-object/from16 v0, p5

    invoke-direct {v8, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;-><init>(Lmf/org/apache/xerces/impl/dv/ValidationContext;)V

    .line 879
    iget-object v1, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->enumAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    const/4 v1, 0x0

    .line 880
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    const/4 v1, 0x0

    move v2, v1

    .line 881
    :goto_1c
    if-ge v2, v6, :cond_26

    .line 882
    if-nez v7, :cond_25

    .line 885
    :goto_1d
    :try_start_1
    invoke-virtual {v5, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {p0, v1, v8, v9}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualEnumValue(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v1

    .line 887
    iget-object v9, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget v10, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    aput-object v1, v9, v10
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_1 .. :try_end_1} :catch_1

    .line 881
    :goto_1e
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1c

    :cond_24
    const-string/jumbo v1, "cos-applicable-facets"

    const/4 v2, 0x2

    .line 872
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "enumeration"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v6, v2, v5

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 883
    :cond_25
    invoke-virtual {v7, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-virtual {v8, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;->setNSContext(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    goto :goto_1d

    .line 888
    :catch_1
    move-exception v1

    const-string/jumbo v1, "enumeration-valid-restriction"

    const/4 v9, 0x2

    .line 889
    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v5, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v11

    invoke-interface {v11}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v1, v9}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1e

    .line 892
    :cond_26
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit16 v1, v1, 0x800

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 893
    and-int/lit16 v1, p3, 0x800

    if-eqz v1, :cond_5

    .line 894
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit16 v1, v1, 0x800

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    goto/16 :goto_5

    .line 900
    :cond_27
    and-int/lit8 v1, v4, 0x20

    if-eqz v1, :cond_29

    .line 903
    iget-object v1, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 905
    :try_start_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    const/4 v5, 0x1

    move-object/from16 v0, p5

    invoke-direct {v1, v2, v0, v3, v5}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    .line 906
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v1, v1, 0x20

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_2 .. :try_end_2} :catch_3

    .line 907
    and-int/lit8 v1, p3, 0x20

    if-nez v1, :cond_2a

    .line 916
    :goto_1f
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_2b

    .line 924
    :cond_28
    :goto_20
    :try_start_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    :try_end_3
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_6

    .line 925
    :catch_2
    move-exception v1

    .line 926
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v1, "FacetValueFromBase"

    const/4 v2, 0x4

    .line 927
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x1

    iget-object v6, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "maxInclusive"

    .line 928
    aput-object v6, v2, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 927
    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_29
    const-string/jumbo v1, "cos-applicable-facets"

    const/4 v2, 0x2

    .line 901
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "maxInclusive"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v6, v2, v5

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 908
    :cond_2a
    :try_start_4
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit8 v1, v1, 0x20

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S
    :try_end_4
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1f

    .line 909
    :catch_3
    move-exception v1

    .line 910
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v1, "FacetValueFromBase"

    const/4 v2, 0x4

    .line 911
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x1

    iget-object v6, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "maxInclusive"

    .line 912
    aput-object v6, v2, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 911
    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1f

    .line 917
    :cond_2b
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_28

    .line 918
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v1, v1, v2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    invoke-virtual {v1, v2, v5}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_28

    const-string/jumbo v1, "FixedFacetValue"

    const/4 v2, 0x4

    .line 919
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "maxInclusive"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    aput-object v6, v2, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    aput-object v6, v2, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v6, v2, v5

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_20

    .line 936
    :cond_2c
    and-int/lit8 v1, v4, 0x40

    if-eqz v1, :cond_2d

    .line 939
    iget-object v1, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 941
    :try_start_5
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v5, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxExclusive:Ljava/lang/String;

    const/4 v6, 0x1

    move-object/from16 v0, p5

    invoke-direct {v1, v5, v0, v3, v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    .line 942
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v1, v1, 0x40

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S
    :try_end_5
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_5 .. :try_end_5} :catch_4

    .line 943
    and-int/lit8 v1, p3, 0x40

    if-nez v1, :cond_2e

    .line 952
    :goto_21
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_2f

    move v1, v2

    .line 962
    :goto_22
    if-nez v1, :cond_33

    .line 973
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_6

    .line 974
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v1, v1, v2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    invoke-virtual {v1, v2, v5}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_6

    const-string/jumbo v1, "maxExclusive-valid-restriction.2"

    const/4 v2, 0x2

    .line 975
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxExclusive:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    aput-object v6, v2, v5

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_2d
    const-string/jumbo v1, "cos-applicable-facets"

    const/4 v2, 0x2

    .line 937
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "maxExclusive"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v6, v2, v5

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 944
    :cond_2e
    :try_start_6
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit8 v1, v1, 0x40

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S
    :try_end_6
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_21

    .line 945
    :catch_4
    move-exception v1

    .line 946
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v5, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v1, "FacetValueFromBase"

    const/4 v5, 0x4

    .line 947
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxExclusive:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "maxExclusive"

    .line 948
    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 947
    invoke-virtual {p0, v1, v5}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_21

    .line 953
    :cond_2f
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v1, v1, v5

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    invoke-virtual {v1, v5, v6}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 954
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v5, v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v5, v5, 0x40

    if-nez v5, :cond_31

    .line 957
    :cond_30
    :goto_23
    if-eqz v1, :cond_32

    move v1, v2

    goto/16 :goto_22

    .line 954
    :cond_31
    if-eqz v1, :cond_30

    const-string/jumbo v5, "FixedFacetValue"

    const/4 v6, 0x4

    .line 955
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "maxExclusive"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxExclusive:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v8, v8, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_23

    .line 958
    :cond_32
    const/4 v1, 0x0

    goto/16 :goto_22

    .line 964
    :cond_33
    :try_start_7
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    :try_end_7
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_7

    .line 965
    :catch_5
    move-exception v1

    .line 966
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v1, "FacetValueFromBase"

    const/4 v2, 0x4

    .line 967
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x1

    iget-object v6, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxExclusive:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "maxExclusive"

    .line 968
    aput-object v6, v2, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 967
    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 983
    :cond_34
    and-int/lit16 v1, v4, 0x80

    if-eqz v1, :cond_35

    .line 986
    iget-object v1, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 988
    :try_start_8
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v5, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minExclusive:Ljava/lang/String;

    const/4 v6, 0x1

    move-object/from16 v0, p5

    invoke-direct {v1, v5, v0, v3, v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    .line 989
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit16 v1, v1, 0x80

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S
    :try_end_8
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_8 .. :try_end_8} :catch_6

    .line 990
    and-int/lit16 v1, p3, 0x80

    if-nez v1, :cond_36

    .line 999
    :goto_24
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_37

    move v1, v2

    .line 1009
    :goto_25
    if-nez v1, :cond_3b

    .line 1020
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_7

    .line 1021
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v1, v1, v2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    invoke-virtual {v1, v2, v5}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_7

    const-string/jumbo v1, "minExclusive-valid-restriction.3"

    const/4 v2, 0x2

    .line 1022
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minExclusive:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    aput-object v6, v2, v5

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_35
    const-string/jumbo v1, "cos-applicable-facets"

    const/4 v2, 0x2

    .line 984
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "minExclusive"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v6, v2, v5

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 991
    :cond_36
    :try_start_9
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit16 v1, v1, 0x80

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S
    :try_end_9
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_24

    .line 992
    :catch_6
    move-exception v1

    .line 993
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v5, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v1, "FacetValueFromBase"

    const/4 v5, 0x4

    .line 994
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minExclusive:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "minExclusive"

    .line 995
    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 994
    invoke-virtual {p0, v1, v5}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_24

    .line 1000
    :cond_37
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v1, v1, v5

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    invoke-virtual {v1, v5, v6}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 1001
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v5, v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_39

    .line 1004
    :cond_38
    :goto_26
    if-eqz v1, :cond_3a

    move v1, v2

    goto/16 :goto_25

    .line 1001
    :cond_39
    if-eqz v1, :cond_38

    const-string/jumbo v5, "FixedFacetValue"

    const/4 v6, 0x4

    .line 1002
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "minExclusive"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minExclusive:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v8, v8, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_26

    .line 1005
    :cond_3a
    const/4 v1, 0x0

    goto/16 :goto_25

    .line 1011
    :cond_3b
    :try_start_a
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    :try_end_a
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_a .. :try_end_a} :catch_7

    goto/16 :goto_8

    .line 1012
    :catch_7
    move-exception v1

    .line 1013
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v1, "FacetValueFromBase"

    const/4 v2, 0x4

    .line 1014
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x1

    iget-object v6, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minExclusive:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "minExclusive"

    .line 1015
    aput-object v6, v2, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 1014
    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 1029
    :cond_3c
    and-int/lit16 v1, v4, 0x100

    if-eqz v1, :cond_3e

    .line 1032
    iget-object v1, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 1034
    :try_start_b
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    const/4 v5, 0x1

    move-object/from16 v0, p5

    invoke-direct {v1, v2, v0, v3, v5}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    .line 1035
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit16 v1, v1, 0x100

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S
    :try_end_b
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_b .. :try_end_b} :catch_9

    .line 1036
    and-int/lit16 v1, p3, 0x100

    if-nez v1, :cond_3f

    .line 1045
    :goto_27
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_40

    .line 1053
    :cond_3d
    :goto_28
    :try_start_c
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    :try_end_c
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_c .. :try_end_c} :catch_8

    goto/16 :goto_9

    .line 1054
    :catch_8
    move-exception v1

    .line 1055
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v1, "FacetValueFromBase"

    const/4 v2, 0x4

    .line 1056
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v5, v2, v3

    const/4 v3, 0x1

    iget-object v5, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v5, "minInclusive"

    .line 1057
    aput-object v5, v2, v3

    const/4 v3, 0x3

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 1056
    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_3e
    const-string/jumbo v1, "cos-applicable-facets"

    const/4 v2, 0x2

    .line 1030
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v5, "minInclusive"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v5, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 1037
    :cond_3f
    :try_start_d
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit16 v1, v1, 0x100

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S
    :try_end_d
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_27

    .line 1038
    :catch_9
    move-exception v1

    .line 1039
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v1, "FacetValueFromBase"

    const/4 v2, 0x4

    .line 1040
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x1

    iget-object v6, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "minInclusive"

    .line 1041
    aput-object v6, v2, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 1040
    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_27

    .line 1046
    :cond_40
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_3d

    .line 1047
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v1, v1, v2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    invoke-virtual {v1, v2, v5}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_3d

    const-string/jumbo v1, "FixedFacetValue"

    const/4 v2, 0x4

    .line 1048
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "minInclusive"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    iget-object v6, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    aput-object v6, v2, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v6, v2, v5

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_28

    .line 1064
    :cond_41
    and-int/lit16 v1, v4, 0x200

    if-eqz v1, :cond_42

    .line 1067
    iget-object v1, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 1068
    iget v1, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->totalDigits:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    .line 1069
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit16 v1, v1, 0x200

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 1070
    and-int/lit16 v1, p3, 0x200

    if-eqz v1, :cond_8

    .line 1071
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit16 v1, v1, 0x200

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    goto/16 :goto_a

    :cond_42
    const-string/jumbo v1, "cos-applicable-facets"

    const/4 v2, 0x2

    .line 1065
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v5, "totalDigits"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v5, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 1076
    :cond_43
    and-int/lit16 v1, v4, 0x400

    if-eqz v1, :cond_44

    .line 1079
    iget v1, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->fractionDigits:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    .line 1080
    iget-object v1, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 1081
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit16 v1, v1, 0x400

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 1082
    and-int/lit16 v1, p3, 0x400

    if-eqz v1, :cond_9

    .line 1083
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit16 v1, v1, 0x400

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    goto/16 :goto_b

    :cond_44
    const-string/jumbo v1, "cos-applicable-facets"

    const/4 v2, 0x2

    .line 1077
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "fractionDigits"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 1089
    :cond_45
    move/from16 v0, p4

    int-to-short v1, v0

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    goto/16 :goto_c

    .line 1096
    :cond_46
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5c

    .line 1103
    :cond_47
    :goto_29
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_5d

    .line 1108
    :cond_48
    :goto_2a
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_5e

    .line 1113
    :cond_49
    :goto_2b
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_5f

    .line 1120
    :cond_4a
    :goto_2c
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_60

    .line 1127
    :cond_4b
    :goto_2d
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_61

    .line 1133
    :cond_4c
    :goto_2e
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_62

    .line 1139
    :cond_4d
    :goto_2f
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_63

    .line 1147
    :cond_4e
    :goto_30
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_64

    .line 1166
    :cond_4f
    :goto_31
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_69

    .line 1167
    :cond_50
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_6a

    .line 1179
    :cond_51
    :goto_32
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_6d

    .line 1194
    :cond_52
    :goto_33
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_70

    .line 1214
    :cond_53
    :goto_34
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_74

    .line 1221
    :cond_54
    :goto_35
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_75

    .line 1365
    :cond_55
    :goto_36
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_78

    .line 1377
    :cond_56
    :goto_37
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_7b

    .line 1386
    :cond_57
    :goto_38
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_7c

    .line 1405
    :cond_58
    :goto_39
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_a

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_a

    .line 1406
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_82

    .line 1410
    :cond_59
    :goto_3a
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    if-eqz v1, :cond_83

    .line 1413
    :cond_5a
    :goto_3b
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    const/4 v2, 0x1

    if-eq v1, v2, :cond_84

    .line 1416
    :cond_5b
    :goto_3c
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    if-nez v1, :cond_a

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    const-string/jumbo v1, "whiteSpace-valid-restriction.2"

    const/4 v2, 0x1

    .line 1417
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 1096
    :cond_5c
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_47

    .line 1098
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    if-le v1, v2, :cond_47

    const-string/jumbo v1, "minLength-less-than-equal-to-maxLength"

    const/4 v2, 0x3

    .line 1099
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_29

    .line 1103
    :cond_5d
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_48

    const-string/jumbo v1, "maxInclusive-maxExclusive"

    const/4 v2, 0x3

    .line 1104
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2a

    .line 1108
    :cond_5e
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_49

    const-string/jumbo v1, "minInclusive-minExclusive"

    const/4 v2, 0x3

    .line 1109
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2b

    .line 1113
    :cond_5f
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_4a

    .line 1114
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v1, v1, v2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    .line 1115
    if-eq v1, v2, :cond_4a

    if-eqz v1, :cond_4a

    const-string/jumbo v1, "minInclusive-less-than-equal-to-maxInclusive"

    const/4 v2, 0x3

    .line 1116
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2c

    .line 1120
    :cond_60
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_4b

    .line 1121
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v1, v1, v2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    .line 1122
    if-eq v1, v2, :cond_4b

    if-eqz v1, :cond_4b

    const-string/jumbo v1, "minExclusive-less-than-equal-to-maxExclusive"

    const/4 v2, 0x3

    .line 1123
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2d

    .line 1127
    :cond_61
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_4c

    .line 1128
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v1, v1, v2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4c

    const-string/jumbo v1, "minExclusive-less-than-maxInclusive"

    const/4 v2, 0x3

    .line 1129
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2e

    .line 1133
    :cond_62
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_4d

    .line 1134
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v1, v1, v2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4d

    const-string/jumbo v1, "minInclusive-less-than-maxExclusive"

    const/4 v2, 0x3

    .line 1135
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2f

    .line 1140
    :cond_63
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_4e

    .line 1141
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    if-le v1, v2, :cond_4e

    const-string/jumbo v1, "fractionDigits-totalDigits"

    const/4 v2, 0x3

    .line 1142
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_30

    .line 1148
    :cond_64
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_67

    .line 1153
    :cond_65
    :goto_3d
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_68

    .line 1158
    :cond_66
    :goto_3e
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4f

    .line 1160
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    if-eq v1, v2, :cond_4f

    const-string/jumbo v1, "length-valid-restriction"

    const/4 v2, 0x3

    .line 1161
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_31

    .line 1149
    :cond_67
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    if-ge v1, v2, :cond_65

    const-string/jumbo v1, "length-minLength-maxLength.1.1"

    const/4 v2, 0x3

    .line 1151
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3d

    .line 1154
    :cond_68
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    if-le v1, v2, :cond_66

    const-string/jumbo v1, "length-minLength-maxLength.2.1"

    const/4 v2, 0x3

    .line 1156
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3e

    .line 1166
    :cond_69
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_50

    goto/16 :goto_33

    .line 1168
    :cond_6a
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    if-lt v1, v2, :cond_6b

    .line 1172
    :goto_3f
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6c

    .line 1175
    :goto_40
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    if-eq v1, v2, :cond_51

    const-string/jumbo v1, "length-minLength-maxLength.1.2.b"

    const/4 v2, 0x3

    .line 1176
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_32

    :cond_6b
    const-string/jumbo v1, "length-minLength-maxLength.1.1"

    const/4 v2, 0x3

    .line 1170
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3f

    :cond_6c
    const-string/jumbo v1, "length-minLength-maxLength.1.2.a"

    const/4 v2, 0x1

    .line 1173
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_40

    .line 1180
    :cond_6d
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    if-gt v1, v2, :cond_6e

    .line 1184
    :goto_41
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6f

    .line 1187
    :goto_42
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    if-eq v1, v2, :cond_52

    const-string/jumbo v1, "length-minLength-maxLength.2.2.b"

    const/4 v2, 0x3

    .line 1188
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_33

    :cond_6e
    const-string/jumbo v1, "length-minLength-maxLength.2.1"

    const/4 v2, 0x3

    .line 1182
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_41

    :cond_6f
    const-string/jumbo v1, "length-minLength-maxLength.2.2.a"

    const/4 v2, 0x1

    .line 1185
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_42

    .line 1195
    :cond_70
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_72

    .line 1200
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_53

    .line 1201
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_73

    .line 1206
    :cond_71
    :goto_43
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    if-ge v1, v2, :cond_53

    const-string/jumbo v1, "minLength-valid-restriction"

    const/4 v2, 0x3

    .line 1207
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_34

    .line 1196
    :cond_72
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    if-le v1, v2, :cond_53

    const-string/jumbo v1, "minLength-less-than-equal-to-maxLength"

    const/4 v2, 0x3

    .line 1197
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_34

    .line 1201
    :cond_73
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    if-eq v1, v2, :cond_71

    const-string/jumbo v1, "FixedFacetValue"

    const/4 v2, 0x4

    .line 1202
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "minLength"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_43

    .line 1214
    :cond_74
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_54

    .line 1215
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    if-ge v1, v2, :cond_54

    const-string/jumbo v1, "minLength-less-than-equal-to-maxLength"

    const/4 v2, 0x2

    .line 1216
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_35

    .line 1222
    :cond_75
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_55

    .line 1223
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_77

    .line 1226
    :cond_76
    :goto_44
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    if-le v1, v2, :cond_55

    const-string/jumbo v1, "maxLength-valid-restriction"

    const/4 v2, 0x3

    .line 1227
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_36

    .line 1223
    :cond_77
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    if-eq v1, v2, :cond_76

    const-string/jumbo v1, "FixedFacetValue"

    const/4 v2, 0x4

    .line 1224
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "maxLength"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_44

    .line 1366
    :cond_78
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_56

    .line 1367
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_7a

    .line 1370
    :cond_79
    :goto_45
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    if-le v1, v2, :cond_56

    const-string/jumbo v1, "totalDigits-valid-restriction"

    const/4 v2, 0x3

    .line 1371
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_37

    .line 1367
    :cond_7a
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    if-eq v1, v2, :cond_79

    const-string/jumbo v1, "FixedFacetValue"

    const/4 v2, 0x4

    .line 1368
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "totalDigits"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_45

    .line 1378
    :cond_7b
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_57

    .line 1379
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    if-le v1, v2, :cond_57

    const-string/jumbo v1, "fractionDigits-totalDigits"

    const/4 v2, 0x3

    .line 1380
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_38

    .line 1387
    :cond_7c
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_7d

    .line 1396
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v2, 0x18

    if-ne v1, v2, :cond_58

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    if-eqz v1, :cond_58

    const-string/jumbo v1, "FixedFacetValue"

    const/4 v2, 0x4

    .line 1397
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "fractionDigits"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_39

    .line 1388
    :cond_7d
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_7f

    .line 1389
    :cond_7e
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v2, 0x18

    if-eq v1, v2, :cond_81

    .line 1392
    :goto_46
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    if-le v1, v2, :cond_58

    const-string/jumbo v1, "fractionDigits-valid-restriction"

    const/4 v2, 0x3

    .line 1393
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_39

    .line 1388
    :cond_7f
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    if-eq v1, v2, :cond_7e

    :cond_80
    const-string/jumbo v1, "FixedFacetValue"

    const/4 v2, 0x4

    .line 1390
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "fractionDigits"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_46

    .line 1389
    :cond_81
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    if-nez v1, :cond_80

    goto :goto_46

    .line 1406
    :cond_82
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    if-eq v1, v2, :cond_59

    const-string/jumbo v1, "FixedFacetValue"

    const/4 v2, 0x4

    .line 1407
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "whiteSpace"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-short v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceValue(S)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceValue(S)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3a

    .line 1410
    :cond_83
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5a

    const-string/jumbo v1, "whiteSpace-valid-restriction.1"

    const/4 v2, 0x2

    .line 1411
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "preserve"

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3b

    .line 1413
    :cond_84
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5b

    const-string/jumbo v1, "whiteSpace-valid-restriction.1"

    const/4 v2, 0x2

    .line 1414
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "replace"

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3c

    .line 1425
    :cond_85
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_b

    .line 1426
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 1427
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    .line 1428
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto/16 :goto_e

    .line 1431
    :cond_86
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_c

    .line 1432
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 1433
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    .line 1434
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto/16 :goto_f

    .line 1437
    :cond_87
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_d

    .line 1438
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v1, v1, 0x4

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 1439
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    .line 1440
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto/16 :goto_10

    .line 1444
    :cond_88
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_89

    .line 1451
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    :goto_47
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_8a

    .line 1452
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1453
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_47

    .line 1445
    :cond_89
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v1, v1, 0x8

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 1446
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    .line 1447
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    .line 1448
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto/16 :goto_11

    .line 1455
    :cond_8a
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-eqz v1, :cond_e

    .line 1456
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-nez v1, :cond_8b

    .line 1462
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto/16 :goto_11

    .line 1457
    :cond_8b
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->getLength()I

    move-result v1

    :goto_48
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_e

    .line 1458
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    goto :goto_48

    .line 1468
    :cond_8c
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_f

    .line 1469
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v1, v1, 0x10

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 1470
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    .line 1471
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto/16 :goto_12

    .line 1474
    :cond_8d
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_10

    .line 1475
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit16 v1, v1, 0x800

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 1476
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    .line 1477
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    .line 1478
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    goto/16 :goto_13

    .line 1482
    :cond_8e
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_11

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_11

    .line 1483
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v1, v1, 0x40

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 1484
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    .line 1485
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto/16 :goto_14

    .line 1489
    :cond_8f
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_12

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_12

    .line 1490
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v1, v1, 0x20

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 1491
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    .line 1492
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto/16 :goto_15

    .line 1496
    :cond_90
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_13

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_13

    .line 1497
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit16 v1, v1, 0x80

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 1498
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    .line 1499
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto/16 :goto_16

    .line 1503
    :cond_91
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_14

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_14

    .line 1504
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit16 v1, v1, 0x100

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 1505
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    .line 1506
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto/16 :goto_17

    .line 1510
    :cond_92
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_15

    .line 1511
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit16 v1, v1, 0x200

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 1512
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    .line 1513
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto/16 :goto_18

    .line 1517
    :cond_93
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_16

    .line 1518
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit16 v1, v1, 0x400

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 1519
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    .line 1520
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto/16 :goto_19

    .line 1523
    :cond_94
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    if-eqz v1, :cond_17

    .line 1524
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    goto/16 :goto_1a
.end method

.method applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V
    .locals 6

    .prologue
    .line 748
    :try_start_0
    sget-object v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDummyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets(Lmf/org/apache/xerces/impl/dv/XSFacets;SSSLmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    .line 755
    return-void

    .line 749
    :catch_0
    move-exception v0

    .line 751
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "internal error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SSS)V
    .locals 6

    .prologue
    .line 763
    :try_start_0
    sget-object v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDummyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets(Lmf/org/apache/xerces/impl/dv/XSFacets;SSSLmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    .line 770
    return-void

    .line 764
    :catch_0
    move-exception v0

    .line 766
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "internal error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public derivedFrom(Ljava/lang/String;Ljava/lang/String;S)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2593
    if-eqz p2, :cond_2

    const-string/jumbo v0, "http://www.w3.org/2001/XMLSchema"

    .line 2596
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2603
    :cond_0
    :goto_0
    invoke-interface {p0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2606
    :cond_1
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eq p0, v0, :cond_6

    .line 2607
    invoke-interface {p0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p0

    goto :goto_0

    .line 2594
    :cond_2
    return v1

    :cond_3
    const-string/jumbo v0, "anyType"

    .line 2597
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2598
    return v2

    .line 2604
    :cond_4
    if-eqz p1, :cond_7

    .line 2605
    :cond_5
    if-eqz p1, :cond_1

    invoke-interface {p0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2610
    :cond_6
    :goto_1
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-ne p0, v0, :cond_8

    return v1

    .line 2604
    :cond_7
    invoke-interface {p0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_1

    .line 2610
    :cond_8
    return v2
.end method

.method public derivedFromType(Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2568
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 2572
    :goto_0
    instance-of v1, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;

    if-eqz v1, :cond_1

    .line 2573
    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto :goto_0

    .line 2569
    :cond_0
    return v2

    .line 2577
    :cond_1
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v1

    if-eq v1, v0, :cond_3

    .line 2582
    :goto_1
    if-ne p0, v0, :cond_4

    .line 2586
    :cond_2
    if-eq p0, v0, :cond_5

    return v2

    .line 2578
    :cond_3
    return v3

    .line 2583
    :cond_4
    sget-object v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eq p0, v1, :cond_2

    .line 2584
    invoke-interface {p0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p0

    goto :goto_1

    .line 2586
    :cond_5
    return v3
.end method

.method protected getActualEnumValue(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    .prologue
    .line 1560
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validateWithInfo(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v0

    return-object v0
.end method

.method public getActualEnumeration()Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    .locals 1

    .prologue
    .line 2258
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fActualEnumeration:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    if-eqz v0, :cond_0

    .line 2282
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fActualEnumeration:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    return-object v0

    .line 2259
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$3;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$3;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fActualEnumeration:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    goto :goto_0
.end method

.method public getAnnotations()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 1

    .prologue
    .line 2373
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    if-nez v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    goto :goto_0
.end method

.method public getAnonymous()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 623
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return v1
.end method

.method public getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    return-object v0
.end method

.method public getBounded()Z
    .locals 1

    .prologue
    .line 2110
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    return v0
.end method

.method public getBuiltInKind()S
    .locals 1

    .prologue
    .line 680
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    return v0
.end method

.method public getDefinedFacets()S
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2155
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-nez v0, :cond_1

    .line 2157
    :cond_0
    return v2

    .line 2156
    :cond_1
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_0

    .line 2159
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    if-nez v0, :cond_2

    .line 2162
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3

    .line 2165
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    return v0

    .line 2160
    :cond_2
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    return v0

    .line 2163
    :cond_3
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v0, v0, 0x8

    or-int/lit16 v0, v0, 0x400

    int-to-short v0, v0

    return v0
.end method

.method public getEnumerationItemTypeList()Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2290
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationItemTypeList:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    if-eqz v0, :cond_0

    .line 2314
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationItemTypeList:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    return-object v0

    .line 2291
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-eqz v0, :cond_1

    .line 2294
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$4;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$4;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationItemTypeList:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    goto :goto_0

    .line 2292
    :cond_1
    return-object v1
.end method

.method public getEnumerationTypeList()Lmf/org/apache/xerces/xs/ShortList;
    .locals 3

    .prologue
    .line 2318
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationTypeList:Lmf/org/apache/xerces/xs/ShortList;

    if-eqz v0, :cond_0

    .line 2328
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationTypeList:Lmf/org/apache/xerces/xs/ShortList;

    return-object v0

    .line 2319
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-eqz v0, :cond_1

    .line 2322
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    new-array v1, v0, [S

    const/4 v0, 0x0

    .line 2323
    :goto_1
    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    if-ge v0, v2, :cond_2

    .line 2324
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    aget-object v2, v2, v0

    iget-short v2, v2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    int-to-short v2, v2

    aput-short v2, v1, v0

    .line 2323
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2320
    :cond_1
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;

    return-object v0

    .line 2326
    :cond_2
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;

    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;-><init>([SI)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationTypeList:Lmf/org/apache/xerces/xs/ShortList;

    goto :goto_0
.end method

.method public getFacet(I)Lmf/org/apache/xerces/xs/XSObject;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x800

    .line 3178
    if-ne p1, v1, :cond_1

    .line 3179
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getMultiValueFacets()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v2

    move v1, v0

    .line 3180
    :goto_0
    invoke-interface {v2}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 3181
    invoke-interface {v2, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/XSMultiValueFacet;

    .line 3182
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSMultiValueFacet;->getFacetKind()S

    move-result v3

    if-eq v3, p1, :cond_2

    .line 3180
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 3178
    if-eq p1, v1, :cond_0

    .line 3188
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getFacets()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v2

    move v1, v0

    .line 3189
    :goto_1
    invoke-interface {v2}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 3190
    invoke-interface {v2, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/XSFacet;

    .line 3191
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSFacet;->getFacetKind()S

    move-result v3

    if-eq v3, p1, :cond_3

    .line 3189
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 3183
    :cond_2
    return-object v0

    .line 3192
    :cond_3
    return-object v0

    :cond_4
    const/4 v0, 0x0

    .line 3196
    return-object v0
.end method

.method public getFacets()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 9

    .prologue
    .line 3044
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-eqz v0, :cond_0

    .line 3174
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-nez v0, :cond_1b

    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_1
    return-object v0

    .line 3045
    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    if-eqz v0, :cond_2

    :cond_1
    const/16 v0, 0xa

    .line 3047
    new-array v8, v0, [Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    const/4 v0, 0x0

    .line 3049
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_3

    move v7, v0

    .line 3062
    :goto_2
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 3073
    :goto_3
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 3084
    :goto_4
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 3095
    :goto_5
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 3106
    :goto_6
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x18

    if-eq v0, v1, :cond_f

    .line 3117
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    .line 3128
    :goto_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    if-nez v0, :cond_12

    .line 3139
    :goto_8
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    if-nez v0, :cond_14

    .line 3150
    :goto_9
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    if-nez v0, :cond_16

    .line 3161
    :goto_a
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    if-nez v0, :cond_18

    .line 3172
    :goto_b
    if-gtz v7, :cond_1a

    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_c
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto :goto_0

    .line 3045
    :cond_2
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 3050
    :cond_3
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-nez v1, :cond_4

    move v7, v0

    goto :goto_2

    .line 3051
    :cond_4
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_5

    move v7, v0

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    .line 3053
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    .line 3055
    sget-object v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->WS_FACET_STRING:[Ljava/lang/String;

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    aget-object v2, v1, v2

    const/4 v3, 0x0

    .line 3058
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_6

    const/4 v5, 0x0

    .line 3059
    :goto_d
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3053
    const/16 v1, 0x10

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    .line 3052
    aput-object v0, v8, v7

    .line 3060
    const/4 v0, 0x1

    move v7, v0

    goto :goto_2

    :cond_6
    const/4 v5, 0x1

    .line 3058
    goto :goto_d

    .line 3064
    :cond_7
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    .line 3066
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 3067
    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    .line 3069
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_8

    const/4 v5, 0x0

    .line 3070
    :goto_e
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3064
    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    .line 3063
    aput-object v0, v8, v7

    .line 3071
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    :cond_8
    const/4 v5, 0x1

    .line 3069
    goto :goto_e

    .line 3075
    :cond_9
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    .line 3077
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 3078
    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    .line 3080
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_a

    const/4 v5, 0x0

    .line 3081
    :goto_f
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3075
    const/4 v1, 0x2

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    .line 3074
    aput-object v0, v8, v7

    .line 3082
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    :cond_a
    const/4 v5, 0x1

    .line 3080
    goto :goto_f

    .line 3086
    :cond_b
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    .line 3088
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 3089
    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    .line 3091
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_c

    const/4 v5, 0x0

    .line 3092
    :goto_10
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3086
    const/4 v1, 0x4

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    .line 3085
    aput-object v0, v8, v7

    .line 3093
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5

    :cond_c
    const/4 v5, 0x1

    .line 3091
    goto :goto_10

    .line 3097
    :cond_d
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    .line 3099
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 3100
    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    .line 3102
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_e

    const/4 v5, 0x0

    .line 3103
    :goto_11
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3097
    const/16 v1, 0x200

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    .line 3096
    aput-object v0, v8, v7

    .line 3104
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_6

    :cond_e
    const/4 v5, 0x1

    .line 3102
    goto :goto_11

    .line 3108
    :cond_f
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    const-string/jumbo v2, "0"

    const/4 v3, 0x0

    .line 3114
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3108
    const/16 v1, 0x400

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    .line 3107
    aput-object v0, v8, v7

    .line 3115
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7

    .line 3119
    :cond_10
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    .line 3121
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 3122
    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    .line 3124
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_11

    const/4 v5, 0x0

    .line 3125
    :goto_12
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3119
    const/16 v1, 0x400

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    .line 3118
    aput-object v0, v8, v7

    .line 3126
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7

    :cond_11
    const/4 v5, 0x1

    .line 3124
    goto :goto_12

    .line 3130
    :cond_12
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    .line 3132
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 3134
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    .line 3135
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_13

    const/4 v5, 0x0

    .line 3136
    :goto_13
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3130
    const/16 v1, 0x20

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    .line 3129
    aput-object v0, v8, v7

    .line 3137
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_8

    :cond_13
    const/4 v5, 0x1

    .line 3135
    goto :goto_13

    .line 3141
    :cond_14
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    .line 3143
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 3145
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    .line 3146
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_15

    const/4 v5, 0x0

    .line 3147
    :goto_14
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3141
    const/16 v1, 0x40

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    .line 3140
    aput-object v0, v8, v7

    .line 3148
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_9

    :cond_15
    const/4 v5, 0x1

    .line 3146
    goto :goto_14

    .line 3152
    :cond_16
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    .line 3154
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 3156
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    .line 3157
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_17

    const/4 v5, 0x0

    .line 3158
    :goto_15
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3152
    const/16 v1, 0x80

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    .line 3151
    aput-object v0, v8, v7

    .line 3159
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_a

    :cond_17
    const/4 v5, 0x1

    .line 3157
    goto :goto_15

    .line 3163
    :cond_18
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    .line 3165
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 3167
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    .line 3168
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_19

    const/4 v5, 0x0

    .line 3169
    :goto_16
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3163
    const/16 v1, 0x100

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    .line 3162
    aput-object v0, v8, v7

    .line 3170
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_b

    :cond_19
    const/4 v5, 0x1

    .line 3168
    goto :goto_16

    .line 3172
    :cond_1a
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v0, v8, v7}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    goto/16 :goto_c

    .line 3174
    :cond_1b
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto/16 :goto_1
.end method

.method public getFinal()S
    .locals 1

    .prologue
    .line 611
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    return v0
.end method

.method public getFinite()Z
    .locals 1

    .prologue
    .line 2117
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    return v0
.end method

.method public getFixedFacets()S
    .locals 2

    .prologue
    .line 2186
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    .line 2188
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    return v0

    .line 2187
    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit16 v0, v0, 0x400

    int-to-short v0, v0

    return v0
.end method

.method public getItemType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    .locals 2

    .prologue
    .line 708
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 713
    return-object v0

    .line 709
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    return-object v0
.end method

.method public getLexicalEnumeration()Lmf/org/apache/xerces/xs/StringList;
    .locals 4

    .prologue
    .line 2241
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLexicalEnumeration:Lmf/org/apache/xerces/xs/StringList;

    if-eqz v0, :cond_0

    .line 2250
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLexicalEnumeration:Lmf/org/apache/xerces/xs/StringList;

    return-object v0

    .line 2242
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-eqz v0, :cond_1

    .line 2244
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    .line 2245
    new-array v2, v1, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 2246
    :goto_1
    if-ge v0, v1, :cond_2

    .line 2247
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    aput-object v3, v2, v0

    .line 2246
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2243
    :cond_1
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    return-object v0

    .line 2248
    :cond_2
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    invoke-direct {v0, v2, v1}, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;-><init>([Ljava/lang/String;I)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLexicalEnumeration:Lmf/org/apache/xerces/xs/StringList;

    goto :goto_0
.end method

.method public getLexicalFacetValue(S)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x0

    .line 2204
    sparse-switch p1, :sswitch_data_0

    .line 2233
    return-object v0

    .line 2206
    :sswitch_0
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    if-eq v1, v3, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    .line 2208
    :sswitch_1
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    if-eq v1, v3, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    .line 2210
    :sswitch_2
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    if-eq v1, v3, :cond_2

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0

    .line 2212
    :sswitch_3
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-nez v1, :cond_4

    .line 2214
    :cond_3
    return-object v0

    .line 2213
    :cond_4
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v2, 0x1d

    if-eq v1, v2, :cond_3

    .line 2216
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->WS_FACET_STRING:[Ljava/lang/String;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    aget-object v0, v0, v1

    return-object v0

    .line 2218
    :sswitch_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    if-eqz v1, :cond_5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    return-object v0

    .line 2220
    :sswitch_5
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    if-eqz v1, :cond_6

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    return-object v0

    .line 2222
    :sswitch_6
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    if-eqz v1, :cond_7

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    return-object v0

    .line 2224
    :sswitch_7
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    if-eqz v1, :cond_8

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    return-object v0

    .line 2226
    :sswitch_8
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    if-eq v1, v3, :cond_9

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :cond_9
    return-object v0

    .line 2228
    :sswitch_9
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v2, 0x18

    if-eq v1, v2, :cond_b

    .line 2231
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    if-eq v1, v3, :cond_a

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :cond_a
    return-object v0

    :cond_b
    const-string/jumbo v0, "0"

    .line 2229
    return-object v0

    .line 2204
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
        0x40 -> :sswitch_5
        0x80 -> :sswitch_6
        0x100 -> :sswitch_7
        0x200 -> :sswitch_8
        0x400 -> :sswitch_9
    .end sparse-switch
.end method

.method public getLexicalPattern()Lmf/org/apache/xerces/xs/StringList;
    .locals 5

    .prologue
    const/16 v4, 0x18

    const/4 v2, 0x0

    .line 2336
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    if-eqz v0, :cond_1

    .line 2338
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLexicalPattern:Lmf/org/apache/xerces/xs/StringList;

    if-eqz v0, :cond_2

    .line 2365
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLexicalPattern:Lmf/org/apache/xerces/xs/StringList;

    return-object v0

    .line 2336
    :cond_1
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 2337
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    return-object v0

    .line 2339
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    move v1, v0

    .line 2341
    :goto_1
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    .line 2345
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    .line 2349
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    .line 2354
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-eq v0, v4, :cond_7

    .line 2359
    new-array v0, v1, [Ljava/lang/String;

    move-object v3, v0

    .line 2361
    :goto_2
    if-ge v2, v1, :cond_8

    .line 2362
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v2

    .line 2361
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v1, v2

    .line 2339
    goto :goto_1

    .line 2342
    :cond_4
    add-int/lit8 v0, v1, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "\\c+"

    .line 2343
    aput-object v3, v0, v1

    move-object v3, v0

    .line 2344
    goto :goto_2

    .line 2346
    :cond_5
    add-int/lit8 v0, v1, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "\\i\\c*"

    .line 2347
    aput-object v3, v0, v1

    move-object v3, v0

    .line 2348
    goto :goto_2

    .line 2350
    :cond_6
    add-int/lit8 v0, v1, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "\\i\\c*"

    .line 2351
    aput-object v3, v0, v1

    .line 2352
    add-int/lit8 v3, v1, 0x1

    const-string/jumbo v4, "[\\i-[:]][\\c-[:]]*"

    aput-object v4, v0, v3

    move-object v3, v0

    .line 2353
    goto :goto_2

    .line 2355
    :cond_7
    add-int/lit8 v0, v1, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "[\\-+]?[0-9]+"

    .line 2356
    aput-object v3, v0, v1

    move-object v3, v0

    .line 2357
    goto :goto_2

    .line 2363
    :cond_8
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    array-length v1, v3

    invoke-direct {v0, v3, v1}, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;-><init>([Ljava/lang/String;I)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLexicalPattern:Lmf/org/apache/xerces/xs/StringList;

    goto :goto_0
.end method

.method public getMaxExclusiveValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3251
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    return-object v0
.end method

.method public getMaxInclusiveValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3247
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    return-object v0
.end method

.method public getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 3

    .prologue
    .line 723
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 727
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    return-object v0

    .line 724
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    return-object v0
.end method

.method public getMinExclusiveValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3243
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    return-object v0
.end method

.method public getMinInclusiveValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3239
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    return-object v0
.end method

.method public getMultiValueFacets()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 7

    .prologue
    const/16 v3, 0x18

    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 3204
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMultiValueFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-eqz v1, :cond_0

    .line 3234
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMultiValueFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-nez v0, :cond_6

    .line 3235
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    .line 3234
    :goto_1
    return-object v0

    .line 3205
    :cond_0
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_3

    :cond_1
    const/4 v1, 0x2

    .line 3210
    new-array v1, v1, [Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;

    .line 3212
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_4

    .line 3216
    :cond_2
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;

    .line 3218
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getLexicalPattern()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v3

    .line 3220
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    .line 3216
    const/16 v5, 0x8

    invoke-direct {v2, v5, v3, v6, v4}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;-><init>(SLmf/org/apache/xerces/xs/StringList;Lmf/org/apache/xerces/xs/datatypes/ObjectList;Lmf/org/apache/xerces/xs/XSObjectList;)V

    .line 3215
    aput-object v2, v1, v0

    .line 3221
    const/4 v0, 0x1

    .line 3223
    :goto_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-nez v2, :cond_5

    .line 3232
    :goto_3
    new-instance v2, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v2, v1, v0}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMultiValueFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto :goto_0

    .line 3206
    :cond_3
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    .line 3207
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    if-nez v1, :cond_1

    .line 3208
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 3213
    :cond_4
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    if-nez v2, :cond_2

    .line 3214
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-eq v2, v3, :cond_2

    goto :goto_2

    .line 3225
    :cond_5
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;

    .line 3227
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getLexicalEnumeration()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v3

    .line 3228
    new-instance v4, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    invoke-direct {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;-><init>([Ljava/lang/Object;I)V

    .line 3229
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 3225
    const/16 v6, 0x800

    invoke-direct {v2, v6, v3, v4, v5}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;-><init>(SLmf/org/apache/xerces/xs/StringList;Lmf/org/apache/xerces/xs/datatypes/ObjectList;Lmf/org/apache/xerces/xs/XSObjectList;)V

    .line 3224
    aput-object v2, v1, v0

    .line 3230
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 3235
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMultiValueFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 599
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getAnonymous()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;
    .locals 1

    .prologue
    .line 3023
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    return-object v0
.end method

.method public getNumeric()Z
    .locals 1

    .prologue
    .line 2124
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    return v0
.end method

.method public getOrdered()S
    .locals 1

    .prologue
    .line 2103
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    return v0
.end method

.method public getPrimitiveKind()S
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 654
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    if-eq v0, v2, :cond_1

    .line 670
    :cond_0
    return v1

    .line 654
    :cond_1
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-eqz v0, :cond_0

    .line 655
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x15

    if-ne v0, v1, :cond_3

    .line 656
    :cond_2
    return v2

    .line 655
    :cond_3
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x17

    if-eq v0, v1, :cond_2

    .line 658
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x18

    if-eq v0, v1, :cond_4

    .line 665
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    return v0

    .line 659
    :cond_4
    const/4 v0, 0x3

    return v0
.end method

.method public getPrimitiveType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    .locals 2

    .prologue
    .line 689
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 698
    return-object v0

    .line 689
    :cond_1
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-eqz v0, :cond_0

    .line 692
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    sget-object v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eq v0, v1, :cond_2

    .line 693
    iget-object p0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    goto :goto_0

    .line 694
    :cond_2
    return-object p0
.end method

.method public getType()S
    .locals 1

    .prologue
    .line 591
    const/4 v0, 0x3

    return v0
.end method

.method public getTypeCategory()S
    .locals 1

    .prologue
    .line 595
    const/16 v0, 0x10

    return v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3456
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVariety()S
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 628
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-eqz v1, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    :cond_0
    return v0
.end method

.method public getWhitespace()S
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/DatatypeException;
        }
    .end annotation

    .prologue
    .line 647
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 650
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    return v0

    .line 648
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/dv/DatatypeException;

    const-string/jumbo v1, "dt-whitespace"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/DatatypeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2630
    if-eqz p2, :cond_6

    .line 2634
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2642
    :cond_0
    :goto_0
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_a

    .line 2649
    :cond_1
    and-int/lit8 v0, p3, 0x8

    if-nez v0, :cond_b

    .line 2656
    :cond_2
    and-int/lit8 v0, p3, 0x4

    if-nez v0, :cond_c

    .line 2663
    :cond_3
    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_d

    .line 2673
    :cond_4
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_e

    .line 2680
    :cond_5
    return v1

    .line 2631
    :cond_6
    return v1

    :cond_7
    const-string/jumbo v0, "anyType"

    .line 2635
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2636
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_9

    .line 2638
    :cond_8
    return v2

    .line 2637
    :cond_9
    if-eqz p3, :cond_8

    goto :goto_0

    .line 2643
    :cond_a
    invoke-direct {p0, p1, p2, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2644
    return v2

    .line 2650
    :cond_b
    invoke-direct {p0, p1, p2, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByList(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2651
    return v2

    .line 2657
    :cond_c
    invoke-direct {p0, p1, p2, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByUnion(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2658
    return v2

    .line 2664
    :cond_d
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_4

    .line 2665
    and-int/lit8 v0, p3, 0x8

    if-nez v0, :cond_4

    .line 2666
    and-int/lit8 v0, p3, 0x4

    if-nez v0, :cond_4

    .line 2667
    return v1

    .line 2674
    :cond_e
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_5

    .line 2675
    and-int/lit8 v0, p3, 0x8

    if-nez v0, :cond_5

    .line 2676
    and-int/lit8 v0, p3, 0x4

    if-nez v0, :cond_5

    .line 2677
    invoke-direct {p0, p1, p2, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByAny(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v0

    return v0
.end method

.method public isDefinedFacet(S)Z
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2134
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-nez v0, :cond_1

    .line 2136
    :cond_0
    return v2

    .line 2135
    :cond_1
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_0

    .line 2138
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/2addr v0, p1

    if-nez v0, :cond_2

    .line 2141
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    if-nez v0, :cond_3

    .line 2144
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x18

    if-eq v0, v1, :cond_5

    .line 2147
    return v2

    .line 2139
    :cond_2
    return v3

    .line 2142
    :cond_3
    if-eq p1, v4, :cond_4

    return v2

    :cond_4
    return v3

    .line 2145
    :cond_5
    if-ne p1, v4, :cond_7

    :cond_6
    return v3

    :cond_7
    const/16 v0, 0x400

    if-eq p1, v0, :cond_6

    return v2
.end method

.method public isDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 3460
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1959
    if-eqz p1, :cond_0

    .line 1962
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1960
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFinal(S)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 615
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isFixedFacet(S)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2175
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 2177
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    .line 2179
    return v2

    .line 2176
    :cond_0
    return v3

    :cond_1
    const/16 v0, 0x400

    .line 2178
    if-eq p1, v0, :cond_2

    return v2

    :cond_2
    return v3
.end method

.method public isIDType()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 632
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    packed-switch v0, :pswitch_data_0

    .line 643
    :cond_0
    return v1

    .line 634
    :pswitch_0
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v2, 0x15

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    return v3

    .line 636
    :pswitch_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isIDType()Z

    move-result v0

    return v0

    :pswitch_2
    move v0, v1

    .line 638
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 639
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isIDType()Z

    move-result v2

    if-nez v2, :cond_2

    .line 638
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 640
    :cond_2
    return v3

    .line 632
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isIdentical(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 1967
    if-eqz p1, :cond_0

    .line 1970
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->isIdentical(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1968
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected normalize(Ljava/lang/Object;S)Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v9, 0xa

    const/16 v8, 0x9

    const/4 v0, 0x1

    const/16 v7, 0x20

    const/4 v1, 0x0

    .line 2021
    if-eqz p1, :cond_3

    .line 2027
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_4

    .line 2037
    :cond_0
    instance-of v2, p1, Ljava/lang/StringBuffer;

    if-eqz v2, :cond_6

    .line 2042
    check-cast p1, Ljava/lang/StringBuffer;

    .line 2043
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    .line 2044
    if-eqz v5, :cond_7

    .line 2046
    if-eqz p2, :cond_8

    .line 2049
    if-eq p2, v0, :cond_a

    move v2, v1

    move v3, v1

    .line 2062
    :goto_0
    if-ge v3, v5, :cond_12

    .line 2063
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    .line 2065
    if-ne v4, v8, :cond_d

    :cond_1
    move v4, v3

    .line 2071
    :goto_1
    add-int/lit8 v3, v5, -0x1

    if-ge v4, v3, :cond_f

    .line 2072
    add-int/lit8 v3, v4, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    .line 2073
    if-ne v3, v8, :cond_e

    .line 2071
    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 2022
    return-object v0

    .line 2028
    :cond_4
    sget-object v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVNormalizeType:[S

    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-short v2, v2, v3

    .line 2029
    if-eqz v2, :cond_5

    .line 2032
    if-ne v2, v0, :cond_0

    .line 2033
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2030
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2038
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2039
    invoke-static {v0, p2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->normalize(Ljava/lang/String;S)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    const-string/jumbo v0, ""

    .line 2045
    return-object v0

    .line 2047
    :cond_8
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    const/16 v2, 0xd

    .line 2054
    if-eq v0, v2, :cond_b

    .line 2052
    :goto_2
    add-int/lit8 v1, v1, 0x1

    :cond_a
    if-ge v1, v5, :cond_13

    .line 2053
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 2054
    if-ne v0, v8, :cond_c

    .line 2055
    :cond_b
    :goto_3
    invoke-virtual {p1, v1, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_2

    .line 2054
    :cond_c
    if-ne v0, v9, :cond_9

    goto :goto_3

    .line 2065
    :cond_d
    if-eq v4, v9, :cond_1

    const/16 v6, 0xd

    if-eq v4, v6, :cond_1

    if-eq v4, v7, :cond_1

    .line 2066
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v2, v4}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    move v2, v0

    move v0, v1

    .line 2062
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2073
    :cond_e
    if-eq v3, v9, :cond_2

    const/16 v6, 0xd

    if-eq v3, v6, :cond_2

    if-eq v3, v7, :cond_2

    .line 2077
    :cond_f
    add-int/lit8 v3, v5, -0x1

    if-lt v4, v3, :cond_11

    :cond_10
    move v3, v4

    goto :goto_4

    :cond_11
    if-nez v0, :cond_10

    .line 2078
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v2, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    move v2, v3

    move v3, v4

    goto :goto_4

    .line 2081
    :cond_12
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 2084
    :cond_13
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method reportError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;
        }
    .end annotation

    .prologue
    .line 2091
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;

    invoke-direct {v0, p1, p2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 2966
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    if-nez v0, :cond_0

    .line 2967
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 2968
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 2970
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    .line 2971
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    .line 2972
    iput-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    .line 2973
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 2974
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    .line 2975
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    .line 2977
    iput-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 2978
    iput-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    .line 2981
    iput-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    .line 2982
    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    .line 2983
    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    .line 2984
    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    .line 2985
    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    .line 2986
    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    .line 2987
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    .line 2988
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    .line 2989
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    .line 2990
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLexicalPattern:Lmf/org/apache/xerces/xs/StringList;

    .line 2991
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLexicalEnumeration:Lmf/org/apache/xerces/xs/StringList;

    .line 2992
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fActualEnumeration:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    .line 2993
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationTypeList:Lmf/org/apache/xerces/xs/ShortList;

    .line 2994
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationItemTypeList:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    .line 2995
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    .line 2996
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    .line 2997
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    .line 2998
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    .line 2999
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3000
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3001
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3002
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3003
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3004
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3005
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    .line 3006
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 3007
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3008
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3009
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3010
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    .line 3012
    iput-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    .line 3013
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 3014
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    .line 3017
    return-void

    .line 2966
    :cond_0
    return-void
.end method

.method public setAnonymous(Z)V
    .locals 0

    .prologue
    .line 3255
    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    .line 3256
    return-void
.end method

.method protected setDVs([Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    .line 240
    return-void
.end method

.method protected setListValues(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    .locals 4

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 535
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    if-nez v0, :cond_0

    .line 536
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 537
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    .line 538
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    .line 539
    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    .line 540
    int-to-short v0, p3

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    .line 541
    iput-object p5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 543
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    .line 544
    iput-object p4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 545
    const/16 v0, 0x19

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    .line 546
    iput-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 547
    iput-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    .line 548
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    .line 551
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->calcFundamentalFacets()V

    .line 554
    const/16 v0, 0x2c

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    .line 556
    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 535
    return-object v0
.end method

.method public setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V
    .locals 0

    .prologue
    .line 3027
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    .line 3028
    return-void
.end method

.method protected setRestrictionValues(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 481
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    if-nez v0, :cond_0

    .line 482
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 483
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    .line 484
    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    .line 485
    iput-object p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    .line 486
    int-to-short v0, p4

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    .line 487
    iput-object p5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 489
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    .line 490
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    .line 491
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    packed-switch v0, :pswitch_data_0

    .line 504
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    .line 505
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    .line 506
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    .line 507
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    .line 508
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    .line 509
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    .line 510
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    .line 511
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    .line 512
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    .line 513
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    .line 514
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    .line 515
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    .line 516
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    .line 517
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    .line 518
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    .line 519
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    .line 520
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 523
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->calcFundamentalFacets()V

    .line 526
    iget-short v0, p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    .line 528
    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 481
    return-object v0

    .line 495
    :pswitch_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    goto :goto_0

    .line 498
    :pswitch_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    goto/16 :goto_0

    .line 491
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected setUnionValues(Ljava/lang/String;Ljava/lang/String;S[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 563
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    if-nez v0, :cond_0

    .line 564
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 565
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    .line 566
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    .line 567
    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    .line 568
    int-to-short v0, p3

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    .line 569
    iput-object p5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 571
    const/4 v0, 0x3

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    .line 572
    iput-object p4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 573
    const/16 v0, 0x1a

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    .line 578
    const/16 v0, 0x10

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 579
    const/4 v0, 0x2

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    .line 582
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->calcFundamentalFacets()V

    .line 585
    const/16 v0, 0x2d

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    .line 587
    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 563
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3034
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1591
    if-eqz p2, :cond_1

    .line 1594
    :goto_0
    if-eqz p3, :cond_2

    .line 1597
    iput-object v1, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 1600
    :goto_1
    if-nez p2, :cond_3

    :goto_2
    const/4 v0, 0x1

    .line 1601
    :cond_0
    invoke-direct {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v0

    .line 1603
    invoke-virtual {p0, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    .line 1605
    return-object v0

    .line 1592
    :cond_1
    sget-object p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEmptyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    goto :goto_0

    .line 1595
    :cond_2
    new-instance p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {p3}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    goto :goto_1

    .line 1600
    :cond_3
    invoke-interface {p2}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->needToNormalize()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2
.end method

.method public validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1540
    if-eqz p2, :cond_1

    .line 1543
    :goto_0
    if-eqz p3, :cond_2

    .line 1546
    iput-object v1, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 1549
    :goto_1
    if-nez p2, :cond_3

    :goto_2
    const/4 v0, 0x1

    .line 1550
    :cond_0
    invoke-direct {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v0

    .line 1552
    invoke-virtual {p0, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    .line 1554
    return-object v0

    .line 1541
    :cond_1
    sget-object p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEmptyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    goto :goto_0

    .line 1544
    :cond_2
    new-instance p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {p3}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    goto :goto_1

    .line 1549
    :cond_3
    invoke-interface {p2}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->needToNormalize()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2
.end method

.method public validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    .prologue
    .line 1618
    if-eqz p1, :cond_1

    .line 1622
    :goto_0
    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->needFacetChecking()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1628
    :cond_0
    :goto_1
    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->needExtraChecking()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1632
    :goto_2
    return-void

    .line 1619
    :cond_1
    sget-object p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEmptyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    goto :goto_0

    .line 1623
    :cond_2
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    if-eqz v0, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 1624
    invoke-direct {p0, p2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->checkFacets(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    goto :goto_1

    .line 1629
    :cond_3
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->checkExtraRules(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    goto :goto_2
.end method

.method public validateWithInfo(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1568
    if-eqz p2, :cond_1

    .line 1571
    :goto_0
    if-eqz p3, :cond_2

    .line 1574
    iput-object v1, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 1577
    :goto_1
    if-nez p2, :cond_3

    :goto_2
    const/4 v0, 0x1

    .line 1578
    :cond_0
    invoke-direct {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    .line 1580
    invoke-virtual {p0, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    .line 1582
    return-object p3

    .line 1569
    :cond_1
    sget-object p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEmptyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    goto :goto_0

    .line 1572
    :cond_2
    new-instance p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {p3}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    goto :goto_1

    .line 1577
    :cond_3
    invoke-interface {p2}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->needToNormalize()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2
.end method
