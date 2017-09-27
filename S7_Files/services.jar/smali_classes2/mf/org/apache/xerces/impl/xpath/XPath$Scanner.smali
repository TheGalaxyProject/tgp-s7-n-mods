.class Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;
.super Ljava/lang/Object;
.source "XPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xpath/XPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Scanner"
.end annotation


# static fields
.field private static final CHARTYPE_ATSIGN:B = 0x13t

.field private static final CHARTYPE_CLOSE_BRACKET:B = 0x16t

.field private static final CHARTYPE_CLOSE_PAREN:B = 0x7t

.field private static final CHARTYPE_COLON:B = 0xft

.field private static final CHARTYPE_COMMA:B = 0xat

.field private static final CHARTYPE_DIGIT:B = 0xet

.field private static final CHARTYPE_DOLLAR:B = 0x5t

.field private static final CHARTYPE_EQUAL:B = 0x11t

.field private static final CHARTYPE_EXCLAMATION:B = 0x3t

.field private static final CHARTYPE_GREATER:B = 0x12t

.field private static final CHARTYPE_INVALID:B = 0x0t

.field private static final CHARTYPE_LESS:B = 0x10t

.field private static final CHARTYPE_LETTER:B = 0x14t

.field private static final CHARTYPE_MINUS:B = 0xbt

.field private static final CHARTYPE_NONASCII:B = 0x19t

.field private static final CHARTYPE_OPEN_BRACKET:B = 0x15t

.field private static final CHARTYPE_OPEN_PAREN:B = 0x6t

.field private static final CHARTYPE_OTHER:B = 0x1t

.field private static final CHARTYPE_PERIOD:B = 0xct

.field private static final CHARTYPE_PLUS:B = 0x9t

.field private static final CHARTYPE_QUOTE:B = 0x4t

.field private static final CHARTYPE_SLASH:B = 0xdt

.field private static final CHARTYPE_STAR:B = 0x8t

.field private static final CHARTYPE_UNDERSCORE:B = 0x17t

.field private static final CHARTYPE_UNION:B = 0x18t

.field private static final CHARTYPE_WHITESPACE:B = 0x2t

.field private static final fASCIICharMap:[B

.field private static final fAncestorOrSelfSymbol:Ljava/lang/String;

.field private static final fAncestorSymbol:Ljava/lang/String;

.field private static final fAndSymbol:Ljava/lang/String;

.field private static final fAttributeSymbol:Ljava/lang/String;

.field private static final fChildSymbol:Ljava/lang/String;

.field private static final fCommentSymbol:Ljava/lang/String;

.field private static final fDescendantOrSelfSymbol:Ljava/lang/String;

.field private static final fDescendantSymbol:Ljava/lang/String;

.field private static final fDivSymbol:Ljava/lang/String;

.field private static final fFollowingSiblingSymbol:Ljava/lang/String;

.field private static final fFollowingSymbol:Ljava/lang/String;

.field private static final fModSymbol:Ljava/lang/String;

.field private static final fNamespaceSymbol:Ljava/lang/String;

.field private static final fNodeSymbol:Ljava/lang/String;

.field private static final fOrSymbol:Ljava/lang/String;

.field private static final fPISymbol:Ljava/lang/String;

.field private static final fParentSymbol:Ljava/lang/String;

.field private static final fPrecedingSiblingSymbol:Ljava/lang/String;

.field private static final fPrecedingSymbol:Ljava/lang/String;

.field private static final fSelfSymbol:Ljava/lang/String;

.field private static final fTextSymbol:Ljava/lang/String;


# instance fields
.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x2

    const/16 v5, 0xe

    const/4 v4, 0x1

    const/16 v3, 0x14

    const/16 v0, 0x80

    .line 1263
    new-array v0, v0, [B

    const/16 v1, 0x9

    .line 1264
    aput-byte v2, v0, v1

    const/16 v1, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    .line 1266
    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    aput-byte v6, v0, v1

    const/16 v1, 0x23

    aput-byte v4, v0, v1

    const/16 v1, 0x24

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    aput-byte v4, v0, v1

    const/16 v1, 0x26

    aput-byte v4, v0, v1

    const/16 v1, 0x27

    aput-byte v6, v0, v1

    const/16 v1, 0x28

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    .line 1267
    aput-byte v5, v0, v1

    const/16 v1, 0x31

    aput-byte v5, v0, v1

    const/16 v1, 0x32

    aput-byte v5, v0, v1

    const/16 v1, 0x33

    aput-byte v5, v0, v1

    const/16 v1, 0x34

    aput-byte v5, v0, v1

    const/16 v1, 0x35

    aput-byte v5, v0, v1

    const/16 v1, 0x36

    aput-byte v5, v0, v1

    const/16 v1, 0x37

    aput-byte v5, v0, v1

    const/16 v1, 0x38

    aput-byte v5, v0, v1

    const/16 v1, 0x39

    aput-byte v5, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    aput-byte v4, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    aput-byte v4, v0, v1

    const/16 v1, 0x40

    .line 1268
    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x41

    aput-byte v3, v0, v1

    const/16 v1, 0x42

    aput-byte v3, v0, v1

    const/16 v1, 0x43

    aput-byte v3, v0, v1

    const/16 v1, 0x44

    aput-byte v3, v0, v1

    const/16 v1, 0x45

    aput-byte v3, v0, v1

    const/16 v1, 0x46

    aput-byte v3, v0, v1

    const/16 v1, 0x47

    aput-byte v3, v0, v1

    const/16 v1, 0x48

    aput-byte v3, v0, v1

    const/16 v1, 0x49

    aput-byte v3, v0, v1

    const/16 v1, 0x4a

    aput-byte v3, v0, v1

    const/16 v1, 0x4b

    aput-byte v3, v0, v1

    const/16 v1, 0x4c

    aput-byte v3, v0, v1

    const/16 v1, 0x4d

    aput-byte v3, v0, v1

    const/16 v1, 0x4e

    aput-byte v3, v0, v1

    const/16 v1, 0x4f

    aput-byte v3, v0, v1

    const/16 v1, 0x50

    .line 1269
    aput-byte v3, v0, v1

    const/16 v1, 0x51

    aput-byte v3, v0, v1

    const/16 v1, 0x52

    aput-byte v3, v0, v1

    const/16 v1, 0x53

    aput-byte v3, v0, v1

    const/16 v1, 0x54

    aput-byte v3, v0, v1

    const/16 v1, 0x55

    aput-byte v3, v0, v1

    const/16 v1, 0x56

    aput-byte v3, v0, v1

    const/16 v1, 0x57

    aput-byte v3, v0, v1

    const/16 v1, 0x58

    aput-byte v3, v0, v1

    const/16 v1, 0x59

    aput-byte v3, v0, v1

    const/16 v1, 0x5a

    aput-byte v3, v0, v1

    const/16 v1, 0x5b

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x5c

    aput-byte v4, v0, v1

    const/16 v1, 0x5d

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x5e

    aput-byte v4, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    .line 1270
    aput-byte v4, v0, v1

    const/16 v1, 0x61

    aput-byte v3, v0, v1

    const/16 v1, 0x62

    aput-byte v3, v0, v1

    const/16 v1, 0x63

    aput-byte v3, v0, v1

    const/16 v1, 0x64

    aput-byte v3, v0, v1

    const/16 v1, 0x65

    aput-byte v3, v0, v1

    const/16 v1, 0x66

    aput-byte v3, v0, v1

    const/16 v1, 0x67

    aput-byte v3, v0, v1

    const/16 v1, 0x68

    aput-byte v3, v0, v1

    const/16 v1, 0x69

    aput-byte v3, v0, v1

    const/16 v1, 0x6a

    aput-byte v3, v0, v1

    const/16 v1, 0x6b

    aput-byte v3, v0, v1

    const/16 v1, 0x6c

    aput-byte v3, v0, v1

    const/16 v1, 0x6d

    aput-byte v3, v0, v1

    const/16 v1, 0x6e

    aput-byte v3, v0, v1

    const/16 v1, 0x6f

    aput-byte v3, v0, v1

    const/16 v1, 0x70

    .line 1271
    aput-byte v3, v0, v1

    const/16 v1, 0x71

    aput-byte v3, v0, v1

    const/16 v1, 0x72

    aput-byte v3, v0, v1

    const/16 v1, 0x73

    aput-byte v3, v0, v1

    const/16 v1, 0x74

    aput-byte v3, v0, v1

    const/16 v1, 0x75

    aput-byte v3, v0, v1

    const/16 v1, 0x76

    aput-byte v3, v0, v1

    const/16 v1, 0x77

    aput-byte v3, v0, v1

    const/16 v1, 0x78

    aput-byte v3, v0, v1

    const/16 v1, 0x79

    aput-byte v3, v0, v1

    const/16 v1, 0x7a

    aput-byte v3, v0, v1

    const/16 v1, 0x7b

    aput-byte v4, v0, v1

    const/16 v1, 0x7c

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x7d

    aput-byte v4, v0, v1

    const/16 v1, 0x7e

    aput-byte v4, v0, v1

    const/16 v1, 0x7f

    aput-byte v4, v0, v1

    .line 1263
    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fASCIICharMap:[B

    const-string/jumbo v0, "and"

    .line 1287
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fAndSymbol:Ljava/lang/String;

    const-string/jumbo v0, "or"

    .line 1288
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fOrSymbol:Ljava/lang/String;

    const-string/jumbo v0, "mod"

    .line 1289
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fModSymbol:Ljava/lang/String;

    const-string/jumbo v0, "div"

    .line 1290
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fDivSymbol:Ljava/lang/String;

    const-string/jumbo v0, "comment"

    .line 1292
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fCommentSymbol:Ljava/lang/String;

    const-string/jumbo v0, "text"

    .line 1293
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fTextSymbol:Ljava/lang/String;

    const-string/jumbo v0, "processing-instruction"

    .line 1294
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fPISymbol:Ljava/lang/String;

    const-string/jumbo v0, "node"

    .line 1295
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fNodeSymbol:Ljava/lang/String;

    const-string/jumbo v0, "ancestor"

    .line 1297
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fAncestorSymbol:Ljava/lang/String;

    const-string/jumbo v0, "ancestor-or-self"

    .line 1298
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fAncestorOrSelfSymbol:Ljava/lang/String;

    const-string/jumbo v0, "attribute"

    .line 1299
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fAttributeSymbol:Ljava/lang/String;

    const-string/jumbo v0, "child"

    .line 1300
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fChildSymbol:Ljava/lang/String;

    const-string/jumbo v0, "descendant"

    .line 1301
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fDescendantSymbol:Ljava/lang/String;

    const-string/jumbo v0, "descendant-or-self"

    .line 1302
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fDescendantOrSelfSymbol:Ljava/lang/String;

    const-string/jumbo v0, "following"

    .line 1303
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fFollowingSymbol:Ljava/lang/String;

    const-string/jumbo v0, "following-sibling"

    .line 1304
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fFollowingSiblingSymbol:Ljava/lang/String;

    const-string/jumbo v0, "namespace"

    .line 1305
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fNamespaceSymbol:Ljava/lang/String;

    const-string/jumbo v0, "parent"

    .line 1306
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fParentSymbol:Ljava/lang/String;

    const-string/jumbo v0, "preceding"

    .line 1307
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fPrecedingSymbol:Ljava/lang/String;

    const-string/jumbo v0, "preceding-sibling"

    .line 1308
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fPrecedingSiblingSymbol:Ljava/lang/String;

    const-string/jumbo v0, "self"

    .line 1309
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fSelfSymbol:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 0

    .prologue
    .line 1316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1319
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 1321
    return-void
.end method

.method private scanNumber(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;Ljava/lang/String;II)I
    .locals 7

    .prologue
    const/16 v6, 0x39

    const/16 v5, 0x30

    const/4 v0, 0x0

    .line 1947
    invoke-virtual {p2, p4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v4, v1

    move v2, p4

    move v1, v0

    .line 1950
    :goto_0
    if-ge v4, v5, :cond_1

    move v3, v1

    move v1, v2

    :goto_1
    const/16 v2, 0x2e

    .line 1957
    if-eq v4, v2, :cond_3

    .line 1978
    :cond_0
    invoke-virtual {p1, v3}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(I)V

    .line 1979
    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(I)V

    .line 1980
    return v1

    .line 1950
    :cond_1
    if-gt v4, v6, :cond_6

    .line 1951
    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v3, v4, -0x30

    add-int/2addr v1, v3

    .line 1952
    add-int/lit8 v2, v2, 0x1

    if-eq v2, p3, :cond_2

    .line 1955
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v4, v3

    goto :goto_0

    :cond_2
    move v3, v1

    move v1, v2

    .line 1953
    goto :goto_1

    .line 1958
    :cond_3
    add-int/lit8 v1, v1, 0x1

    if-ge v1, p3, :cond_0

    .line 1960
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1961
    :goto_2
    if-ge v2, v5, :cond_5

    .line 1968
    :cond_4
    if-eqz v0, :cond_0

    .line 1972
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "find a solution!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1961
    :cond_5
    if-gt v2, v6, :cond_4

    .line 1962
    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v0, v2

    .line 1963
    add-int/lit8 v1, v1, 0x1

    if-eq v1, p3, :cond_4

    .line 1966
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_2

    :cond_6
    move v3, v1

    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method protected addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    .prologue
    .line 1997
    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(I)V

    .line 1998
    return-void
.end method

.method public scanExpr(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;Ljava/lang/String;II)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    .prologue
    .line 1333
    const/4 v0, 0x0

    move v7, v0

    move v1, p4

    .line 1337
    :goto_0
    if-eq v1, p5, :cond_66

    .line 1340
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v3, v0

    :goto_1
    const/16 v0, 0x20

    .line 1344
    if-ne v3, v0, :cond_1

    .line 1345
    :cond_0
    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_2

    .line 1348
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v3, v0

    goto :goto_1

    :cond_1
    const/16 v0, 0xa

    .line 1344
    if-eq v3, v0, :cond_0

    const/16 v0, 0x9

    if-eq v3, v0, :cond_0

    const/16 v0, 0xd

    if-eq v3, v0, :cond_0

    .line 1350
    :cond_2
    if-eq v1, p5, :cond_66

    const/16 v0, 0x80

    .line 1358
    if-ge v3, v0, :cond_3

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fASCIICharMap:[B

    aget-byte v0, v0, v3

    .line 1359
    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 1888
    const/4 v0, 0x0

    return v0

    :cond_3
    const/16 v0, 0x19

    .line 1358
    goto :goto_2

    :pswitch_0
    const/4 v0, 0x0

    .line 1361
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1362
    const/4 v0, 0x0

    .line 1363
    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_4

    move v7, v0

    goto :goto_0

    :cond_4
    move v7, v0

    .line 1364
    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    .line 1368
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1369
    const/4 v0, 0x1

    .line 1370
    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_5

    move v7, v0

    goto :goto_0

    :cond_5
    move v7, v0

    .line 1371
    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    .line 1375
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1376
    const/4 v0, 0x0

    .line 1377
    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_6

    move v7, v0

    goto :goto_0

    :cond_6
    move v7, v0

    .line 1378
    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    .line 1382
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1383
    const/4 v0, 0x1

    .line 1384
    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_7

    move v7, v0

    goto :goto_0

    :cond_7
    move v7, v0

    .line 1385
    goto :goto_0

    .line 1393
    :pswitch_4
    add-int/lit8 v0, v1, 0x1

    if-eq v0, p5, :cond_c

    .line 1399
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2e

    .line 1400
    if-eq v0, v2, :cond_d

    const/16 v2, 0x30

    .line 1404
    if-ge v0, v2, :cond_e

    :cond_8
    const/16 v2, 0x2f

    .line 1408
    if-eq v0, v2, :cond_f

    const/16 v2, 0x7c

    .line 1412
    if-eq v0, v2, :cond_10

    const/16 v2, 0x20

    .line 1417
    if-ne v0, v2, :cond_11

    .line 1420
    :cond_9
    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_a

    .line 1423
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x20

    .line 1424
    if-eq v0, v2, :cond_9

    const/16 v2, 0xa

    if-eq v0, v2, :cond_9

    const/16 v2, 0x9

    if-eq v0, v2, :cond_9

    const/16 v2, 0xd

    if-eq v0, v2, :cond_9

    .line 1425
    :cond_a
    if-ne v1, p5, :cond_12

    :cond_b
    const/4 v0, 0x4

    .line 1426
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1427
    const/4 v0, 0x1

    move v7, v0

    .line 1428
    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x4

    .line 1394
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1395
    const/4 v0, 0x1

    .line 1396
    add-int/lit8 v1, v1, 0x1

    move v7, v0

    .line 1397
    goto/16 :goto_0

    :cond_d
    const/4 v0, 0x5

    .line 1401
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1402
    const/4 v0, 0x1

    .line 1403
    add-int/lit8 v1, v1, 0x2

    .line 1434
    :goto_3
    if-eq v1, p5, :cond_13

    move v7, v0

    goto/16 :goto_0

    :cond_e
    const/16 v2, 0x39

    .line 1404
    if-gt v0, v2, :cond_8

    const/16 v0, 0x2f

    .line 1405
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1406
    const/4 v0, 0x1

    .line 1407
    invoke-direct {p0, p2, p3, p5, v1}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->scanNumber(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;Ljava/lang/String;II)I

    move-result v1

    goto :goto_3

    :cond_f
    const/4 v0, 0x4

    .line 1409
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1410
    const/4 v0, 0x1

    .line 1411
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_10
    const/4 v0, 0x4

    .line 1413
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1414
    const/4 v0, 0x1

    .line 1415
    add-int/lit8 v1, v1, 0x1

    move v7, v0

    .line 1416
    goto/16 :goto_0

    :cond_11
    const/16 v2, 0xa

    .line 1417
    if-eq v0, v2, :cond_9

    const/16 v2, 0x9

    if-eq v0, v2, :cond_9

    const/16 v2, 0xd

    if-eq v0, v2, :cond_9

    .line 1432
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string/jumbo v1, "c-general-xpath"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    const/16 v2, 0x7c

    .line 1425
    if-eq v0, v2, :cond_b

    .line 1430
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string/jumbo v1, "c-general-xpath"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    move v7, v0

    .line 1435
    goto/16 :goto_0

    :pswitch_5
    const/4 v0, 0x6

    .line 1439
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1440
    const/4 v0, 0x0

    .line 1441
    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_14

    move v7, v0

    goto/16 :goto_0

    :cond_14
    move v7, v0

    .line 1442
    goto/16 :goto_0

    :pswitch_6
    const/4 v0, 0x7

    .line 1446
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1447
    const/4 v0, 0x0

    .line 1448
    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_15

    move v7, v0

    goto/16 :goto_0

    :cond_15
    move v7, v0

    .line 1449
    goto/16 :goto_0

    .line 1453
    :pswitch_7
    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_16

    .line 1457
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3a

    .line 1458
    if-ne v0, v2, :cond_17

    const/16 v0, 0x8

    .line 1462
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1463
    const/4 v0, 0x0

    .line 1464
    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_18

    move v7, v0

    goto/16 :goto_0

    .line 1455
    :cond_16
    const/4 v0, 0x0

    return v0

    .line 1460
    :cond_17
    const/4 v0, 0x0

    return v0

    :cond_18
    move v7, v0

    .line 1465
    goto/16 :goto_0

    .line 1469
    :pswitch_8
    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_19

    .line 1474
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2f

    .line 1475
    if-eq v0, v2, :cond_1a

    const/16 v0, 0x15

    .line 1482
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1483
    const/4 v0, 0x0

    move v7, v0

    .line 1485
    goto/16 :goto_0

    :cond_19
    const/16 v0, 0x15

    .line 1470
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1471
    const/4 v0, 0x0

    move v7, v0

    .line 1472
    goto/16 :goto_0

    :cond_1a
    const/16 v0, 0x16

    .line 1476
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1477
    const/4 v0, 0x0

    .line 1478
    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_1b

    move v7, v0

    goto/16 :goto_0

    :cond_1b
    move v7, v0

    .line 1479
    goto/16 :goto_0

    :pswitch_9
    const/16 v0, 0x17

    .line 1487
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1488
    const/4 v0, 0x0

    .line 1489
    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_1c

    move v7, v0

    goto/16 :goto_0

    :cond_1c
    move v7, v0

    .line 1490
    goto/16 :goto_0

    :pswitch_a
    const/16 v0, 0x18

    .line 1494
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1495
    const/4 v0, 0x0

    .line 1496
    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_1d

    move v7, v0

    goto/16 :goto_0

    :cond_1d
    move v7, v0

    .line 1497
    goto/16 :goto_0

    :pswitch_b
    const/16 v0, 0x19

    .line 1501
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1502
    const/4 v0, 0x0

    .line 1503
    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_1e

    move v7, v0

    goto/16 :goto_0

    :cond_1e
    move v7, v0

    .line 1504
    goto/16 :goto_0

    :pswitch_c
    const/16 v0, 0x1a

    .line 1508
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1509
    const/4 v0, 0x0

    .line 1510
    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_1f

    move v7, v0

    goto/16 :goto_0

    :cond_1f
    move v7, v0

    .line 1511
    goto/16 :goto_0

    .line 1515
    :pswitch_d
    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_20

    .line 1519
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3d

    .line 1520
    if-ne v0, v2, :cond_21

    const/16 v0, 0x1b

    .line 1524
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1525
    const/4 v0, 0x0

    .line 1526
    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_22

    move v7, v0

    goto/16 :goto_0

    .line 1517
    :cond_20
    const/4 v0, 0x0

    return v0

    .line 1522
    :cond_21
    const/4 v0, 0x0

    return v0

    :cond_22
    move v7, v0

    .line 1527
    goto/16 :goto_0

    .line 1531
    :pswitch_e
    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_23

    .line 1536
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3d

    .line 1537
    if-eq v0, v2, :cond_24

    const/16 v0, 0x1c

    .line 1544
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1545
    const/4 v0, 0x0

    move v7, v0

    .line 1547
    goto/16 :goto_0

    :cond_23
    const/16 v0, 0x1c

    .line 1532
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1533
    const/4 v0, 0x0

    move v7, v0

    .line 1534
    goto/16 :goto_0

    :cond_24
    const/16 v0, 0x1d

    .line 1538
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1539
    const/4 v0, 0x0

    .line 1540
    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_25

    move v7, v0

    goto/16 :goto_0

    :cond_25
    move v7, v0

    .line 1541
    goto/16 :goto_0

    .line 1549
    :pswitch_f
    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_26

    .line 1554
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3d

    .line 1555
    if-eq v0, v2, :cond_27

    const/16 v0, 0x1e

    .line 1562
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1563
    const/4 v0, 0x0

    move v7, v0

    .line 1565
    goto/16 :goto_0

    :cond_26
    const/16 v0, 0x1e

    .line 1550
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1551
    const/4 v0, 0x0

    move v7, v0

    .line 1552
    goto/16 :goto_0

    :cond_27
    const/16 v0, 0x1f

    .line 1556
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1557
    const/4 v0, 0x0

    .line 1558
    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_28

    move v7, v0

    goto/16 :goto_0

    :cond_28
    move v7, v0

    .line 1559
    goto/16 :goto_0

    .line 1571
    :pswitch_10
    add-int/lit8 v2, v1, 0x1

    if-eq v2, p5, :cond_29

    .line 1575
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v1, v2

    .line 1577
    :goto_4
    if-eq v0, v3, :cond_2b

    .line 1578
    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_2a

    .line 1582
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_4

    .line 1573
    :cond_29
    const/4 v0, 0x0

    return v0

    .line 1580
    :cond_2a
    const/4 v0, 0x0

    return v0

    .line 1584
    :cond_2b
    sub-int v3, v1, v2

    const/16 v0, 0x2e

    .line 1585
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1586
    const/4 v0, 0x1

    .line 1587
    add-int/2addr v3, v2

    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(Ljava/lang/String;)V

    .line 1588
    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_2c

    move v7, v0

    goto/16 :goto_0

    :cond_2c
    move v7, v0

    .line 1589
    goto/16 :goto_0

    :pswitch_11
    const/16 v0, 0x2f

    .line 1597
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1598
    const/4 v0, 0x1

    .line 1599
    invoke-direct {p0, p2, p3, p5, v1}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->scanNumber(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;Ljava/lang/String;II)I

    move-result v1

    move v7, v0

    .line 1600
    goto/16 :goto_0

    .line 1605
    :pswitch_12
    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_2d

    .line 1610
    invoke-virtual {p0, p3, p5, v1}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->scanNCName(Ljava/lang/String;II)I

    move-result v2

    .line 1611
    if-eq v2, v1, :cond_2e

    .line 1615
    if-lt v2, p5, :cond_2f

    const/4 v0, -0x1

    .line 1621
    :goto_5
    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x3a

    .line 1622
    if-ne v0, v3, :cond_30

    .line 1626
    add-int/lit8 v0, v2, 0x1

    if-eq v0, p5, :cond_31

    .line 1631
    invoke-virtual {p0, p3, p5, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->scanNCName(Ljava/lang/String;II)I

    move-result v2

    .line 1632
    if-eq v2, v0, :cond_32

    .line 1636
    if-lt v2, p5, :cond_33

    .line 1642
    :goto_6
    invoke-virtual {p3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_7
    const/16 v3, 0x30

    .line 1644
    invoke-virtual {p0, p2, v3}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1645
    const/4 v3, 0x1

    .line 1646
    invoke-virtual {p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(Ljava/lang/String;)V

    .line 1647
    invoke-virtual {p2, v1}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(Ljava/lang/String;)V

    move v7, v3

    move v1, v2

    .line 1648
    goto/16 :goto_0

    .line 1607
    :cond_2d
    const/4 v0, 0x0

    return v0

    .line 1613
    :cond_2e
    const/4 v0, 0x0

    return v0

    .line 1616
    :cond_2f
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_5

    .line 1623
    :cond_30
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_7

    .line 1628
    :cond_31
    const/4 v0, 0x0

    return v0

    .line 1634
    :cond_32
    const/4 v0, 0x0

    return v0

    .line 1637
    :cond_33
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    goto :goto_6

    .line 1662
    :pswitch_13
    if-nez v7, :cond_34

    const/16 v0, 0x9

    .line 1666
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1667
    const/4 v0, 0x1

    .line 1669
    :goto_8
    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_35

    move v7, v0

    goto/16 :goto_0

    :cond_34
    const/16 v0, 0x14

    .line 1663
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1664
    const/4 v0, 0x0

    goto :goto_8

    :cond_35
    move v7, v0

    .line 1670
    goto/16 :goto_0

    .line 1707
    :pswitch_14
    invoke-virtual {p0, p3, p5, v1}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->scanNCName(Ljava/lang/String;II)I

    move-result v5

    .line 1708
    if-eq v5, v1, :cond_37

    .line 1712
    if-lt v5, p5, :cond_38

    const/4 v0, -0x1

    .line 1718
    :goto_9
    invoke-virtual {p3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1719
    const/4 v2, 0x0

    .line 1720
    const/4 v1, 0x0

    .line 1721
    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    const/16 v6, 0x3a

    .line 1722
    if-eq v0, v6, :cond_39

    move v6, v0

    move v0, v5

    move-object v5, v4

    move-object v4, v3

    move v3, v2

    move v2, v1

    :goto_a
    const/16 v1, 0x20

    .line 1758
    if-ne v6, v1, :cond_44

    .line 1759
    :cond_36
    add-int/lit8 v0, v0, 0x1

    if-eq v0, p5, :cond_41

    .line 1762
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v6, v1

    goto :goto_a

    .line 1710
    :cond_37
    const/4 v0, 0x0

    return v0

    .line 1713
    :cond_38
    invoke-virtual {p3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_9

    .line 1723
    :cond_39
    add-int/lit8 v6, v5, 0x1

    if-eq v6, p5, :cond_3a

    .line 1727
    invoke-virtual {p3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x2a

    .line 1728
    if-eq v0, v5, :cond_3b

    const/16 v5, 0x3a

    .line 1733
    if-eq v0, v5, :cond_3d

    .line 1741
    invoke-virtual {p0, p3, p5, v6}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->scanNCName(Ljava/lang/String;II)I

    move-result v5

    .line 1742
    if-eq v5, v6, :cond_3f

    .line 1746
    if-lt v5, p5, :cond_40

    const/4 v0, -0x1

    .line 1752
    :goto_b
    invoke-virtual {p3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move v6, v0

    move v0, v5

    move-object v5, v3

    move v3, v2

    move v2, v1

    .line 1758
    goto :goto_a

    .line 1725
    :cond_3a
    const/4 v0, 0x0

    return v0

    .line 1729
    :cond_3b
    add-int/lit8 v5, v6, 0x1

    if-lt v5, p5, :cond_3c

    .line 1732
    :goto_c
    const/4 v2, 0x1

    move v6, v0

    move v0, v5

    move-object v5, v4

    move-object v4, v3

    move v3, v2

    move v2, v1

    .line 1733
    goto :goto_a

    .line 1730
    :cond_3c
    invoke-virtual {p3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_c

    .line 1734
    :cond_3d
    add-int/lit8 v5, v6, 0x1

    if-lt v5, p5, :cond_3e

    .line 1737
    :goto_d
    const/4 v1, 0x1

    move v6, v0

    move v0, v5

    move-object v5, v4

    move-object v4, v3

    move v3, v2

    move v2, v1

    .line 1738
    goto :goto_a

    .line 1735
    :cond_3e
    invoke-virtual {p3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_d

    .line 1744
    :cond_3f
    const/4 v0, 0x0

    return v0

    .line 1747
    :cond_40
    invoke-virtual {p3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_b

    :cond_41
    move v1, v0

    .line 1768
    :goto_e
    if-nez v7, :cond_45

    const/16 v0, 0x28

    .line 1798
    if-eq v6, v0, :cond_4c

    .line 1823
    :cond_42
    if-eqz v2, :cond_52

    .line 1826
    :cond_43
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fAncestorSymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_55

    .line 1828
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fAncestorOrSelfSymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_56

    .line 1830
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fAttributeSymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_57

    .line 1832
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fChildSymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_58

    .line 1834
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fDescendantSymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_59

    .line 1836
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fDescendantOrSelfSymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_5a

    .line 1838
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fFollowingSymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_5b

    .line 1840
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fFollowingSiblingSymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_5c

    .line 1842
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fNamespaceSymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_5d

    .line 1844
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fParentSymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_5e

    .line 1846
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fPrecedingSymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_5f

    .line 1848
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fPrecedingSiblingSymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_60

    .line 1850
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fSelfSymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_61

    .line 1854
    const/4 v0, 0x0

    return v0

    :cond_44
    const/16 v1, 0xa

    .line 1758
    if-eq v6, v1, :cond_36

    const/16 v1, 0x9

    if-eq v6, v1, :cond_36

    const/16 v1, 0xd

    if-eq v6, v1, :cond_36

    move v1, v0

    goto :goto_e

    .line 1769
    :cond_45
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fAndSymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_46

    .line 1772
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fOrSymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_47

    .line 1775
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fModSymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_48

    .line 1778
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fDivSymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_49

    .line 1783
    const/4 v0, 0x0

    return v0

    :cond_46
    const/16 v0, 0x10

    .line 1770
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1771
    const/4 v0, 0x0

    .line 1785
    :goto_f
    if-nez v3, :cond_4a

    .line 1788
    if-nez v2, :cond_4b

    move v7, v0

    goto/16 :goto_0

    :cond_47
    const/16 v0, 0x11

    .line 1773
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1774
    const/4 v0, 0x0

    goto :goto_f

    :cond_48
    const/16 v0, 0x12

    .line 1776
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1777
    const/4 v0, 0x0

    goto :goto_f

    :cond_49
    const/16 v0, 0x13

    .line 1779
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1780
    const/4 v0, 0x0

    goto :goto_f

    .line 1787
    :cond_4a
    const/4 v0, 0x0

    return v0

    .line 1790
    :cond_4b
    const/4 v0, 0x0

    return v0

    .line 1798
    :cond_4c
    if-nez v3, :cond_42

    if-nez v2, :cond_42

    .line 1799
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fCommentSymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_4d

    .line 1801
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fTextSymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_4e

    .line 1803
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fPISymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_4f

    .line 1805
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fNodeSymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_50

    const/16 v0, 0x20

    .line 1808
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1809
    invoke-virtual {p2, v4}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(Ljava/lang/String;)V

    .line 1810
    invoke-virtual {p2, v5}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(Ljava/lang/String;)V

    :goto_10
    const/4 v0, 0x0

    .line 1812
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1813
    const/4 v0, 0x0

    .line 1814
    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_51

    move v7, v0

    goto/16 :goto_0

    :cond_4d
    const/16 v0, 0xc

    .line 1800
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_10

    :cond_4e
    const/16 v0, 0xd

    .line 1802
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_10

    :cond_4f
    const/16 v0, 0xe

    .line 1804
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_10

    :cond_50
    const/16 v0, 0xf

    .line 1806
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_10

    :cond_51
    move v7, v0

    .line 1815
    goto/16 :goto_0

    :cond_52
    const/16 v0, 0x3a

    .line 1824
    if-eq v6, v0, :cond_54

    .line 1874
    :cond_53
    :goto_11
    if-nez v3, :cond_65

    const/16 v0, 0xb

    .line 1879
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1880
    const/4 v0, 0x1

    .line 1881
    invoke-virtual {p2, v4}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(Ljava/lang/String;)V

    .line 1882
    invoke-virtual {p2, v5}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(Ljava/lang/String;)V

    move v7, v0

    .line 1884
    goto/16 :goto_0

    .line 1824
    :cond_54
    add-int/lit8 v0, v1, 0x1

    if-ge v0, p5, :cond_53

    .line 1825
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x3a

    if-eq v0, v6, :cond_43

    goto :goto_11

    :cond_55
    const/16 v0, 0x21

    .line 1827
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1856
    :goto_12
    if-nez v3, :cond_62

    const/16 v0, 0x8

    .line 1860
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1861
    const/4 v0, 0x0

    .line 1862
    if-eqz v2, :cond_63

    move v7, v0

    goto/16 :goto_0

    :cond_56
    const/16 v0, 0x22

    .line 1829
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_12

    :cond_57
    const/16 v0, 0x23

    .line 1831
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_12

    :cond_58
    const/16 v0, 0x24

    .line 1833
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_12

    :cond_59
    const/16 v0, 0x25

    .line 1835
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_12

    :cond_5a
    const/16 v0, 0x26

    .line 1837
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_12

    :cond_5b
    const/16 v0, 0x27

    .line 1839
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_12

    :cond_5c
    const/16 v0, 0x28

    .line 1841
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_12

    :cond_5d
    const/16 v0, 0x29

    .line 1843
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_12

    :cond_5e
    const/16 v0, 0x2a

    .line 1845
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_12

    :cond_5f
    const/16 v0, 0x2b

    .line 1847
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_12

    :cond_60
    const/16 v0, 0x2c

    .line 1849
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_12

    :cond_61
    const/16 v0, 0x2d

    .line 1851
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_12

    .line 1858
    :cond_62
    const/4 v0, 0x0

    return v0

    .line 1863
    :cond_63
    add-int/lit8 v1, v1, 0x1

    .line 1864
    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_64

    move v7, v0

    goto/16 :goto_0

    :cond_64
    move v7, v0

    .line 1865
    goto/16 :goto_0

    :cond_65
    const/16 v0, 0xa

    .line 1875
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1876
    const/4 v0, 0x1

    .line 1877
    invoke-virtual {p2, v5}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(Ljava/lang/String;)V

    move v7, v0

    .line 1878
    goto/16 :goto_0

    .line 1894
    :cond_66
    const/4 v0, 0x1

    return v0

    .line 1359
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_d
        :pswitch_10
        :pswitch_12
        :pswitch_0
        :pswitch_1
        :pswitch_13
        :pswitch_a
        :pswitch_6
        :pswitch_b
        :pswitch_4
        :pswitch_8
        :pswitch_11
        :pswitch_7
        :pswitch_e
        :pswitch_c
        :pswitch_f
        :pswitch_5
        :pswitch_14
        :pswitch_2
        :pswitch_3
        :pswitch_14
        :pswitch_9
        :pswitch_14
    .end packed-switch
.end method

.method scanNCName(Ljava/lang/String;II)I
    .locals 5

    .prologue
    const/16 v4, 0x80

    const/16 v3, 0x17

    const/16 v2, 0x14

    .line 1901
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1902
    if-ge v0, v4, :cond_2

    .line 1913
    sget-object v1, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fASCIICharMap:[B

    aget-byte v0, v1, v0

    .line 1914
    if-ne v0, v2, :cond_3

    .line 1918
    :cond_0
    :goto_0
    add-int/lit8 p3, p3, 0x1

    if-ge p3, p2, :cond_1

    .line 1919
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1920
    if-ge v0, v4, :cond_4

    .line 1931
    sget-object v1, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fASCIICharMap:[B

    aget-byte v0, v1, v0

    .line 1932
    if-eq v0, v2, :cond_0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    .line 1933
    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    .line 1934
    if-eq v0, v3, :cond_0

    .line 1940
    :cond_1
    return p3

    .line 1903
    :cond_2
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isNameStart(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1909
    return p3

    .line 1914
    :cond_3
    if-eq v0, v3, :cond_0

    .line 1915
    return p3

    .line 1921
    :cond_4
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isName(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0
.end method
