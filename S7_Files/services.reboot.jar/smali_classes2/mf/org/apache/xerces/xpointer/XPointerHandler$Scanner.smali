.class Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;
.super Ljava/lang/Object;
.source "XPointerHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/xpointer/XPointerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scanner"
.end annotation


# static fields
.field private static final CHARTYPE_CARRET:B = 0x3t

.field private static final CHARTYPE_CLOSE_PAREN:B = 0x5t

.field private static final CHARTYPE_COLON:B = 0xat

.field private static final CHARTYPE_DIGIT:B = 0x9t

.field private static final CHARTYPE_EQUAL:B = 0xbt

.field private static final CHARTYPE_INVALID:B = 0x0t

.field private static final CHARTYPE_LETTER:B = 0xct

.field private static final CHARTYPE_MINUS:B = 0x6t

.field private static final CHARTYPE_NONASCII:B = 0xet

.field private static final CHARTYPE_OPEN_PAREN:B = 0x4t

.field private static final CHARTYPE_OTHER:B = 0x1t

.field private static final CHARTYPE_PERIOD:B = 0x7t

.field private static final CHARTYPE_SLASH:B = 0x8t

.field private static final CHARTYPE_UNDERSCORE:B = 0xdt

.field private static final CHARTYPE_WHITESPACE:B = 0x2t


# instance fields
.field private final fASCIICharMap:[B

.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field final synthetic this$0:Lmf/org/apache/xerces/xpointer/XPointerHandler;


# direct methods
.method private constructor <init>(Lmf/org/apache/xerces/xpointer/XPointerHandler;Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v2, 0x2

    const/16 v5, 0x9

    const/4 v4, 0x1

    const/16 v3, 0xc

    .line 668
    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->this$0:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    .line 648
    new-array v0, v0, [B

    aput-byte v2, v0, v5

    aput-byte v2, v0, v6

    const/16 v1, 0xd

    .line 649
    aput-byte v2, v0, v1

    const/16 v1, 0x20

    .line 650
    aput-byte v2, v0, v1

    const/16 v1, 0x21

    aput-byte v4, v0, v1

    const/16 v1, 0x22

    aput-byte v4, v0, v1

    const/16 v1, 0x23

    aput-byte v4, v0, v1

    const/16 v1, 0x24

    aput-byte v4, v0, v1

    const/16 v1, 0x25

    aput-byte v4, v0, v1

    const/16 v1, 0x26

    aput-byte v4, v0, v1

    const/16 v1, 0x27

    aput-byte v4, v0, v1

    const/16 v1, 0x28

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    aput-byte v4, v0, v1

    const/16 v1, 0x2b

    aput-byte v4, v0, v1

    const/16 v1, 0x2c

    aput-byte v4, v0, v1

    const/16 v1, 0x2d

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x30

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

    .line 651
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

    aput-byte v6, v0, v1

    const/16 v1, 0x3b

    aput-byte v4, v0, v1

    const/16 v1, 0x3c

    aput-byte v4, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    aput-byte v4, v0, v1

    const/16 v1, 0x3f

    aput-byte v4, v0, v1

    const/16 v1, 0x40

    aput-byte v4, v0, v1

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

    .line 652
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

    .line 653
    aput-byte v3, v0, v1

    const/16 v1, 0x58

    aput-byte v3, v0, v1

    const/16 v1, 0x59

    aput-byte v3, v0, v1

    const/16 v1, 0x5a

    aput-byte v3, v0, v1

    const/16 v1, 0x5b

    aput-byte v4, v0, v1

    const/16 v1, 0x5c

    aput-byte v4, v0, v1

    const/16 v1, 0x5d

    aput-byte v4, v0, v1

    const/16 v1, 0x5e

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x60

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

    .line 654
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

    .line 655
    aput-byte v3, v0, v1

    const/16 v1, 0x79

    aput-byte v3, v0, v1

    const/16 v1, 0x7a

    aput-byte v3, v0, v1

    const/16 v1, 0x7b

    aput-byte v4, v0, v1

    const/16 v1, 0x7c

    aput-byte v4, v0, v1

    const/16 v1, 0x7d

    aput-byte v4, v0, v1

    const/16 v1, 0x7e

    aput-byte v4, v0, v1

    const/16 v1, 0x7f

    aput-byte v4, v0, v1

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    .line 670
    iput-object p2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 672
    return-void
.end method

.method synthetic constructor <init>(Lmf/org/apache/xerces/xpointer/XPointerHandler;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;)V
    .locals 0

    .prologue
    .line 668
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;-><init>(Lmf/org/apache/xerces/xpointer/XPointerHandler;Lmf/org/apache/xerces/util/SymbolTable;)V

    return-void
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 678
    invoke-direct/range {p0 .. p5}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->scanExpr(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private scanData(Ljava/lang/String;Ljava/lang/StringBuffer;II)I
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/16 v5, 0x80

    const/16 v1, 0xe

    const/4 v4, 0x5

    move v2, p4

    .line 916
    :goto_0
    if-eq v2, p3, :cond_0

    .line 920
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 921
    if-ge v3, v5, :cond_1

    .line 922
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    aget-byte v0, v0, v3

    .line 924
    :goto_1
    if-eq v0, v7, :cond_2

    .line 943
    if-eq v0, v4, :cond_6

    .line 946
    if-eq v0, v6, :cond_7

    .line 960
    int-to-char v0, v3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 961
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 965
    :goto_2
    return v0

    :cond_1
    move v0, v1

    .line 921
    goto :goto_1

    .line 925
    :cond_2
    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 928
    add-int/lit8 v0, v2, 0x1

    .line 927
    invoke-direct {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->scanData(Ljava/lang/String;Ljava/lang/StringBuffer;II)I

    move-result v2

    .line 929
    if-eq v2, p3, :cond_3

    .line 933
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 934
    if-ge v3, v5, :cond_4

    .line 935
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    aget-byte v0, v0, v3

    .line 937
    :goto_3
    if-ne v0, v4, :cond_5

    .line 940
    int-to-char v0, v3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 941
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 930
    :cond_3
    return v2

    :cond_4
    move v0, v1

    .line 934
    goto :goto_3

    .line 938
    :cond_5
    return p3

    .line 944
    :cond_6
    return v2

    .line 947
    :cond_7
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 948
    if-ge v3, v5, :cond_9

    .line 949
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    aget-byte v0, v0, v3

    .line 951
    :goto_4
    if-ne v0, v6, :cond_a

    .line 956
    :cond_8
    int-to-char v0, v3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 957
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    move v0, v1

    .line 948
    goto :goto_4

    .line 952
    :cond_a
    if-eq v0, v7, :cond_8

    .line 953
    if-eq v0, v4, :cond_8

    move v0, v2

    .line 954
    goto :goto_2
.end method

.method private scanExpr(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;II)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 690
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move-object v3, v2

    move v4, v0

    move v5, v1

    move v1, p4

    .line 694
    :goto_0
    if-eq v1, p5, :cond_11

    .line 697
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v2, v0

    move v0, v1

    :goto_1
    const/16 v1, 0x20

    .line 700
    if-ne v2, v1, :cond_3

    .line 701
    :cond_0
    add-int/lit8 v0, v0, 0x1

    if-eq v0, p5, :cond_1

    .line 704
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v2, v1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 706
    :goto_2
    if-eq v1, p5, :cond_11

    const/16 v0, 0x80

    .line 726
    if-ge v2, v0, :cond_4

    .line 727
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    aget-byte v0, v0, v2

    .line 729
    :goto_3
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 756
    :pswitch_0
    if-eqz v5, :cond_5

    .line 822
    if-gtz v5, :cond_e

    .line 852
    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    const/16 v1, 0xa

    .line 700
    if-eq v2, v1, :cond_0

    const/16 v1, 0x9

    if-eq v2, v1, :cond_0

    const/16 v1, 0xd

    if-eq v2, v1, :cond_0

    move v1, v0

    goto :goto_2

    :cond_4
    const/16 v0, 0xe

    .line 726
    goto :goto_3

    :pswitch_1
    const/4 v0, 0x0

    .line 732
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->addToken(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V

    .line 733
    add-int/lit8 v0, v5, 0x1

    .line 734
    add-int/lit8 v1, v1, 0x1

    move v5, v0

    .line 735
    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    .line 738
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->addToken(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V

    .line 739
    add-int/lit8 v0, v4, 0x1

    .line 740
    add-int/lit8 v1, v1, 0x1

    move v4, v0

    .line 741
    goto :goto_0

    .line 758
    :cond_5
    invoke-direct {p0, p3, p5, v1}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->scanNCName(Ljava/lang/String;II)I

    move-result v3

    .line 761
    if-eq v3, v1, :cond_6

    .line 767
    if-lt v3, p5, :cond_7

    const/4 v0, -0x1

    .line 773
    :goto_4
    invoke-virtual {p3, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 775
    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    const/16 v4, 0x3a

    .line 778
    if-eq v0, v4, :cond_8

    move-object v0, v1

    move v1, v3

    .line 805
    :goto_5
    if-ne v1, p5, :cond_c

    .line 810
    if-eq v1, p5, :cond_d

    :goto_6
    const/4 v0, 0x0

    move-object v3, v2

    move v4, v0

    .line 820
    goto :goto_0

    .line 762
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->this$0:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    const-string/jumbo v1, "InvalidShortHandPointer"

    const/4 v2, 0x1

    .line 763
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    .line 762
    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 764
    const/4 v0, 0x0

    return v0

    .line 768
    :cond_7
    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_4

    .line 779
    :cond_8
    add-int/lit8 v0, v3, 0x1

    if-eq v0, p5, :cond_9

    .line 783
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    .line 786
    invoke-direct {p0, p3, p5, v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->scanNCName(Ljava/lang/String;II)I

    move-result v1

    .line 789
    if-eq v1, v0, :cond_a

    .line 793
    if-lt v1, p5, :cond_b

    .line 800
    :goto_7
    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_5

    .line 780
    :cond_9
    const/4 v0, 0x0

    return v0

    .line 790
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 794
    :cond_b
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    goto :goto_7

    :cond_c
    const/4 v3, 0x3

    .line 806
    invoke-virtual {p0, p2, v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->addToken(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V

    .line 807
    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->addToken(Ljava/lang/String;)V
    invoke-static {p2, v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;)V

    .line 808
    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->addToken(Ljava/lang/String;)V
    invoke-static {p2, v2}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    const/4 v0, 0x2

    .line 812
    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->addToken(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V

    .line 813
    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->addToken(Ljava/lang/String;)V
    invoke-static {p2, v2}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;)V

    goto :goto_6

    .line 822
    :cond_e
    if-nez v4, :cond_2

    if-eqz v3, :cond_2

    .line 825
    invoke-direct {p0, p3, v6, p5, v1}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->scanData(Ljava/lang/String;Ljava/lang/StringBuffer;II)I

    move-result p4

    .line 828
    if-eq p4, v1, :cond_f

    .line 834
    if-lt p4, p5, :cond_10

    .line 841
    :goto_8
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 840
    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    .line 842
    invoke-virtual {p0, p2, v1}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->addToken(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V

    .line 843
    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->addToken(Ljava/lang/String;)V
    invoke-static {p2, v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 847
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move v5, v0

    move v1, p4

    .line 849
    goto/16 :goto_0

    .line 829
    :cond_f
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->this$0:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    const-string/jumbo v1, "InvalidSchemeDataInXPointer"

    const/4 v2, 0x1

    .line 830
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    .line 829
    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 831
    const/4 v0, 0x0

    return v0

    .line 835
    :cond_10
    invoke-virtual {p3, p4}, Ljava/lang/String;->charAt(I)C

    goto :goto_8

    .line 856
    :cond_11
    const/4 v0, 0x1

    return v0

    .line 729
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private scanNCName(Ljava/lang/String;II)I
    .locals 5

    .prologue
    const/16 v4, 0x80

    const/16 v3, 0xd

    const/16 v2, 0xc

    .line 870
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 871
    if-ge v0, v4, :cond_2

    .line 876
    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    aget-byte v0, v1, v0

    .line 877
    if-ne v0, v2, :cond_3

    .line 884
    :cond_0
    :goto_0
    add-int/lit8 p3, p3, 0x1

    if-ge p3, p2, :cond_1

    .line 885
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 886
    if-ge v0, v4, :cond_4

    .line 891
    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    aget-byte v0, v1, v0

    .line 892
    if-eq v0, v2, :cond_0

    const/16 v1, 0x9

    .line 893
    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    .line 894
    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    .line 895
    if-eq v0, v1, :cond_0

    .line 896
    if-eq v0, v3, :cond_0

    .line 901
    :cond_1
    return p3

    .line 872
    :cond_2
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isNameStart(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 873
    return p3

    .line 878
    :cond_3
    if-eq v0, v3, :cond_0

    .line 879
    return p3

    .line 887
    :cond_4
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isName(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0
.end method


# virtual methods
.method protected addToken(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 981
    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->addToken(I)V
    invoke-static {p1, p2}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$1(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V

    .line 982
    return-void
.end method
