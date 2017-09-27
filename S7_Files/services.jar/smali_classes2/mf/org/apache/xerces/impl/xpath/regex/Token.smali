.class Lmf/org/apache/xerces/impl/xpath/regex/Token;
.super Ljava/lang/Object;
.source "Token.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;,
        Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;,
        Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;,
        Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;,
        Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;,
        Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;,
        Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;,
        Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;,
        Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;
    }
.end annotation


# static fields
.field static final ANCHOR:I = 0x8

.field static final BACKREFERENCE:I = 0xc

.field static final CHAR:I = 0x0

.field static final CHAR_FINAL_QUOTE:I = 0x1e

.field static final CHAR_INIT_QUOTE:I = 0x1d

.field static final CHAR_LETTER:I = 0x1f

.field static final CHAR_MARK:I = 0x20

.field static final CHAR_NUMBER:I = 0x21

.field static final CHAR_OTHER:I = 0x23

.field static final CHAR_PUNCTUATION:I = 0x24

.field static final CHAR_SEPARATOR:I = 0x22

.field static final CHAR_SYMBOL:I = 0x25

.field static final CLOSURE:I = 0x3

.field static final CONCAT:I = 0x1

.field static final CONDITION:I = 0x1a

.field static final COUNTTOKENS:Z = true

.field static final DOT:I = 0xb

.field static final EMPTY:I = 0x7

.field static final FC_ANY:I = 0x2

.field static final FC_CONTINUE:I = 0x0

.field static final FC_TERMINAL:I = 0x1

.field static final INDEPENDENT:I = 0x18

.field static final LOOKAHEAD:I = 0x14

.field static final LOOKBEHIND:I = 0x16

.field static final MODIFIERGROUP:I = 0x19

.field static final NEGATIVELOOKAHEAD:I = 0x15

.field static final NEGATIVELOOKBEHIND:I = 0x17

.field private static final NONBMP_BLOCK_START:I = 0x54

.field static final NONGREEDYCLOSURE:I = 0x9

.field static final NRANGE:I = 0x5

.field static final PAREN:I = 0x6

.field static final RANGE:I = 0x4

.field static final STRING:I = 0xa

.field static final UNION:I = 0x2

.field static final UTF16_MAX:I = 0x10ffff

.field private static final blockNames:[Ljava/lang/String;

.field static final blockRanges:Ljava/lang/String; = "\u0000\u007f\u0080\u00ff\u0100\u017f\u0180\u024f\u0250\u02af\u02b0\u02ff\u0300\u036f\u0370\u03ff\u0400\u04ff\u0530\u058f\u0590\u05ff\u0600\u06ff\u0700\u074f\u0780\u07bf\u0900\u097f\u0980\u09ff\u0a00\u0a7f\u0a80\u0aff\u0b00\u0b7f\u0b80\u0bff\u0c00\u0c7f\u0c80\u0cff\u0d00\u0d7f\u0d80\u0dff\u0e00\u0e7f\u0e80\u0eff\u0f00\u0fff\u1000\u109f\u10a0\u10ff\u1100\u11ff\u1200\u137f\u13a0\u13ff\u1400\u167f\u1680\u169f\u16a0\u16ff\u1780\u17ff\u1800\u18af\u1e00\u1eff\u1f00\u1fff\u2000\u206f\u2070\u209f\u20a0\u20cf\u20d0\u20ff\u2100\u214f\u2150\u218f\u2190\u21ff\u2200\u22ff\u2300\u23ff\u2400\u243f\u2440\u245f\u2460\u24ff\u2500\u257f\u2580\u259f\u25a0\u25ff\u2600\u26ff\u2700\u27bf\u2800\u28ff\u2e80\u2eff\u2f00\u2fdf\u2ff0\u2fff\u3000\u303f\u3040\u309f\u30a0\u30ff\u3100\u312f\u3130\u318f\u3190\u319f\u31a0\u31bf\u3200\u32ff\u3300\u33ff\u3400\u4db5\u4e00\u9fff\ua000\ua48f\ua490\ua4cf\uac00\ud7a3\ue000\uf8ff\uf900\ufaff\ufb00\ufb4f\ufb50\ufdff\ufe20\ufe2f\ufe30\ufe4f\ufe50\ufe6f\ufe70\ufefe\ufeff\ufeff\uff00\uffef"

.field private static final categories:Ljava/util/Hashtable;

.field private static final categories2:Ljava/util/Hashtable;

.field private static final categoryNames:[Ljava/lang/String;

.field static final nonBMPBlockRanges:[I

.field static nonxs:Ljava/util/Hashtable; = null

.field private static final serialVersionUID:J = 0x75c0b0b811d26879L

.field static token_0to9:Lmf/org/apache/xerces/impl/xpath/regex/Token; = null

.field private static token_ccs:Lmf/org/apache/xerces/impl/xpath/regex/Token; = null

.field static token_dot:Lmf/org/apache/xerces/impl/xpath/regex/Token; = null

.field static token_empty:Lmf/org/apache/xerces/impl/xpath/regex/Token; = null

.field private static token_grapheme:Lmf/org/apache/xerces/impl/xpath/regex/Token; = null

.field static token_linebeginning:Lmf/org/apache/xerces/impl/xpath/regex/Token; = null

.field static token_linebeginning2:Lmf/org/apache/xerces/impl/xpath/regex/Token; = null

.field static token_lineend:Lmf/org/apache/xerces/impl/xpath/regex/Token; = null

.field static token_not_0to9:Lmf/org/apache/xerces/impl/xpath/regex/Token; = null

.field static token_not_spaces:Lmf/org/apache/xerces/impl/xpath/regex/Token; = null

.field static token_not_wordchars:Lmf/org/apache/xerces/impl/xpath/regex/Token; = null

.field static token_not_wordedge:Lmf/org/apache/xerces/impl/xpath/regex/Token; = null

.field static token_spaces:Lmf/org/apache/xerces/impl/xpath/regex/Token; = null

.field static token_stringbeginning:Lmf/org/apache/xerces/impl/xpath/regex/Token; = null

.field static token_stringend:Lmf/org/apache/xerces/impl/xpath/regex/Token; = null

.field static token_stringend2:Lmf/org/apache/xerces/impl/xpath/regex/Token; = null

.field static token_wordbeginning:Lmf/org/apache/xerces/impl/xpath/regex/Token; = null

.field static token_wordchars:Lmf/org/apache/xerces/impl/xpath/regex/Token; = null

.field static token_wordedge:Lmf/org/apache/xerces/impl/xpath/regex/Token; = null

.field static token_wordend:Lmf/org/apache/xerces/impl/xpath/regex/Token; = null

.field static tokens:I = 0x0

.field static final viramaString:Ljava/lang/String; = "\u094d\u09cd\u0a4d\u0acd\u0b4d\u0bcd\u0c4d\u0ccd\u0d4d\u0e3a\u0f84"


# instance fields
.field final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xd

    const/16 v5, 0xc

    const/16 v4, 0xa

    const/16 v3, 0x9

    .line 35
    sput v7, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    .line 81
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;-><init>(I)V

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_empty:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    const/16 v0, 0x5e

    .line 83
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createAnchor(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_linebeginning:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    const/16 v0, 0x40

    .line 84
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createAnchor(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_linebeginning2:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    const/16 v0, 0x24

    .line 85
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createAnchor(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_lineend:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    const/16 v0, 0x41

    .line 86
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createAnchor(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_stringbeginning:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    const/16 v0, 0x7a

    .line 87
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createAnchor(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_stringend:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    const/16 v0, 0x5a

    .line 88
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createAnchor(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_stringend2:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    const/16 v0, 0x62

    .line 89
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createAnchor(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_wordedge:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    const/16 v0, 0x42

    .line 90
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createAnchor(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_not_wordedge:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    const/16 v0, 0x3c

    .line 91
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createAnchor(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_wordbeginning:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    const/16 v0, 0x3e

    .line 92
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createAnchor(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_wordend:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    .line 94
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;-><init>(I)V

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_dot:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    .line 96
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_0to9:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    .line 97
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_0to9:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    const/16 v1, 0x30

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    .line 98
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_wordchars:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    .line 99
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_wordchars:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    const/16 v1, 0x30

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    .line 100
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_wordchars:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    const/16 v1, 0x41

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    .line 101
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_wordchars:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    const/16 v1, 0x5f

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    .line 102
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_wordchars:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    const/16 v1, 0x61

    const/16 v2, 0x7a

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    .line 103
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_spaces:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    .line 104
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_spaces:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v0, v3, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    .line 105
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_spaces:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v0, v4, v4}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    .line 106
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_spaces:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v0, v5, v5}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    .line 107
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_spaces:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v0, v6, v6}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    .line 108
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_spaces:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    const/16 v1, 0x20

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    .line 110
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_0to9:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_not_0to9:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    .line 111
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_wordchars:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_not_wordchars:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    .line 112
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_spaces:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_not_spaces:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    .line 583
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories:Ljava/util/Hashtable;

    .line 584
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories2:Ljava/util/Hashtable;

    const/16 v0, 0x26

    .line 585
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Cn"

    .line 586
    aput-object v1, v0, v7

    const/4 v1, 0x1

    const-string/jumbo v2, "Lu"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "Ll"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "Lt"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "Lm"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "Lo"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "Mn"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "Me"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "Mc"

    aput-object v2, v0, v1

    const-string/jumbo v1, "Nd"

    aput-object v1, v0, v3

    const-string/jumbo v1, "Nl"

    .line 587
    aput-object v1, v0, v4

    const/16 v1, 0xb

    const-string/jumbo v2, "No"

    aput-object v2, v0, v1

    const-string/jumbo v1, "Zs"

    aput-object v1, v0, v5

    const-string/jumbo v1, "Zl"

    aput-object v1, v0, v6

    const/16 v1, 0xe

    const-string/jumbo v2, "Zp"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "Cc"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "Cf"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "Co"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "Cs"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "Pd"

    .line 588
    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "Ps"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "Pe"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "Pc"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "Po"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "Sm"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "Sc"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "Sk"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "So"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "Pi"

    .line 589
    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "Pf"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "L"

    .line 590
    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "C"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "S"

    aput-object v2, v0, v1

    .line 585
    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categoryNames:[Ljava/lang/String;

    const/16 v0, 0x5d

    .line 605
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Basic Latin"

    .line 606
    aput-object v1, v0, v7

    const/4 v1, 0x1

    const-string/jumbo v2, "Latin-1 Supplement"

    .line 607
    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "Latin Extended-A"

    .line 608
    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "Latin Extended-B"

    .line 609
    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "IPA Extensions"

    .line 610
    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "Spacing Modifier Letters"

    .line 611
    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "Combining Diacritical Marks"

    .line 612
    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "Greek"

    .line 613
    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "Cyrillic"

    .line 614
    aput-object v2, v0, v1

    const-string/jumbo v1, "Armenian"

    .line 615
    aput-object v1, v0, v3

    const-string/jumbo v1, "Hebrew"

    .line 616
    aput-object v1, v0, v4

    const/16 v1, 0xb

    const-string/jumbo v2, "Arabic"

    .line 617
    aput-object v2, v0, v1

    const-string/jumbo v1, "Syriac"

    .line 618
    aput-object v1, v0, v5

    const-string/jumbo v1, "Thaana"

    .line 619
    aput-object v1, v0, v6

    const/16 v1, 0xe

    const-string/jumbo v2, "Devanagari"

    .line 620
    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "Bengali"

    .line 621
    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "Gurmukhi"

    .line 622
    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "Gujarati"

    .line 623
    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "Oriya"

    .line 624
    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "Tamil"

    .line 625
    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "Telugu"

    .line 626
    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "Kannada"

    .line 627
    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "Malayalam"

    .line 628
    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "Sinhala"

    .line 629
    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "Thai"

    .line 630
    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "Lao"

    .line 631
    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "Tibetan"

    .line 632
    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "Myanmar"

    .line 633
    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "Georgian"

    .line 634
    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "Hangul Jamo"

    .line 635
    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "Ethiopic"

    .line 636
    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "Cherokee"

    .line 637
    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "Unified Canadian Aboriginal Syllabics"

    .line 638
    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "Ogham"

    .line 639
    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "Runic"

    .line 640
    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "Khmer"

    .line 641
    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "Mongolian"

    .line 642
    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "Latin Extended Additional"

    .line 643
    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "Greek Extended"

    .line 644
    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "General Punctuation"

    .line 645
    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string/jumbo v2, "Superscripts and Subscripts"

    .line 646
    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string/jumbo v2, "Currency Symbols"

    .line 647
    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string/jumbo v2, "Combining Marks for Symbols"

    .line 648
    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string/jumbo v2, "Letterlike Symbols"

    .line 649
    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string/jumbo v2, "Number Forms"

    .line 650
    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string/jumbo v2, "Arrows"

    .line 651
    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string/jumbo v2, "Mathematical Operators"

    .line 652
    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string/jumbo v2, "Miscellaneous Technical"

    .line 653
    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string/jumbo v2, "Control Pictures"

    .line 654
    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string/jumbo v2, "Optical Character Recognition"

    .line 655
    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string/jumbo v2, "Enclosed Alphanumerics"

    .line 656
    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string/jumbo v2, "Box Drawing"

    .line 657
    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string/jumbo v2, "Block Elements"

    .line 658
    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string/jumbo v2, "Geometric Shapes"

    .line 659
    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string/jumbo v2, "Miscellaneous Symbols"

    .line 660
    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string/jumbo v2, "Dingbats"

    .line 661
    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string/jumbo v2, "Braille Patterns"

    .line 662
    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string/jumbo v2, "CJK Radicals Supplement"

    .line 663
    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string/jumbo v2, "Kangxi Radicals"

    .line 664
    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string/jumbo v2, "Ideographic Description Characters"

    .line 665
    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string/jumbo v2, "CJK Symbols and Punctuation"

    .line 666
    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string/jumbo v2, "Hiragana"

    .line 667
    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string/jumbo v2, "Katakana"

    .line 668
    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string/jumbo v2, "Bopomofo"

    .line 669
    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string/jumbo v2, "Hangul Compatibility Jamo"

    .line 670
    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string/jumbo v2, "Kanbun"

    .line 671
    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string/jumbo v2, "Bopomofo Extended"

    .line 672
    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string/jumbo v2, "Enclosed CJK Letters and Months"

    .line 673
    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string/jumbo v2, "CJK Compatibility"

    .line 674
    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string/jumbo v2, "CJK Unified Ideographs Extension A"

    .line 675
    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string/jumbo v2, "CJK Unified Ideographs"

    .line 676
    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string/jumbo v2, "Yi Syllables"

    .line 677
    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string/jumbo v2, "Yi Radicals"

    .line 678
    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string/jumbo v2, "Hangul Syllables"

    .line 679
    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string/jumbo v2, "Private Use"

    .line 680
    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string/jumbo v2, "CJK Compatibility Ideographs"

    .line 681
    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string/jumbo v2, "Alphabetic Presentation Forms"

    .line 682
    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string/jumbo v2, "Arabic Presentation Forms-A"

    .line 683
    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string/jumbo v2, "Combining Half Marks"

    .line 684
    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string/jumbo v2, "CJK Compatibility Forms"

    .line 685
    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string/jumbo v2, "Small Form Variants"

    .line 686
    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string/jumbo v2, "Arabic Presentation Forms-B"

    .line 687
    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string/jumbo v2, "Specials"

    .line 688
    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string/jumbo v2, "Halfwidth and Fullwidth Forms"

    .line 689
    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string/jumbo v2, "Old Italic"

    .line 691
    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string/jumbo v2, "Gothic"

    .line 692
    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string/jumbo v2, "Deseret"

    .line 693
    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string/jumbo v2, "Byzantine Musical Symbols"

    .line 694
    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string/jumbo v2, "Musical Symbols"

    .line 695
    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string/jumbo v2, "Mathematical Alphanumeric Symbols"

    .line 696
    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string/jumbo v2, "CJK Unified Ideographs Extension B"

    .line 697
    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string/jumbo v2, "CJK Compatibility Ideographs Supplement"

    .line 698
    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string/jumbo v2, "Tags"

    .line 699
    aput-object v2, v0, v1

    .line 605
    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->blockNames:[Ljava/lang/String;

    const/16 v0, 0x12

    .line 719
    new-array v0, v0, [I

    const v1, 0x10300

    .line 720
    aput v1, v0, v7

    const/4 v1, 0x1

    const v2, 0x1032f

    aput v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x10330

    .line 721
    aput v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x1034f

    aput v2, v0, v1

    const/4 v1, 0x4

    const v2, 0x10400

    .line 722
    aput v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x1044f

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x1d000

    .line 723
    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x1d0ff

    aput v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x1d100

    .line 724
    aput v2, v0, v1

    const v1, 0x1d1ff

    aput v1, v0, v3

    const v1, 0x1d400

    .line 725
    aput v1, v0, v4

    const/16 v1, 0xb

    const v2, 0x1d7ff

    aput v2, v0, v1

    const/high16 v1, 0x20000

    .line 726
    aput v1, v0, v5

    const v1, 0x2a6d6

    aput v1, v0, v6

    const/16 v1, 0xe

    const v2, 0x2f800

    .line 727
    aput v2, v0, v1

    const/16 v1, 0xf

    const v2, 0x2fa1f

    aput v2, v0, v1

    const/16 v1, 0x10

    const/high16 v2, 0xe0000

    .line 728
    aput v2, v0, v1

    const/16 v1, 0x11

    const v2, 0xe007f

    aput v2, v0, v1

    .line 719
    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->nonBMPBlockRanges:[I

    const/4 v0, 0x0

    .line 973
    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->nonxs:Ljava/util/Hashtable;

    const/4 v0, 0x0

    .line 1018
    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_grapheme:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    const/4 v0, 0x0

    .line 1057
    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_ccs:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    .line 182
    return-void
.end method

.method static complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1

    .prologue
    .line 217
    invoke-static {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0
.end method

.method private static createAnchor(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;
    .locals 2

    .prologue
    .line 159
    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    .line 160
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;-><init>(II)V

    return-object v0
.end method

.method static createBackReference(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;
    .locals 3

    .prologue
    .line 163
    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    .line 164
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;-><init>(ILjava/lang/String;I)V

    return-object v0
.end method

.method static createChar(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;
    .locals 2

    .prologue
    .line 155
    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    .line 156
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;-><init>(II)V

    return-object v0
.end method

.method static createClosure(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;
    .locals 2

    .prologue
    .line 124
    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    .line 125
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;-><init>(ILmf/org/apache/xerces/impl/xpath/regex/Token;)V

    return-object v0
.end method

.method static createConcat(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;
    .locals 1

    .prologue
    .line 132
    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    .line 133
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;

    invoke-direct {v0, p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;-><init>(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    return-object v0
.end method

.method static createConcat()Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;
    .locals 2

    .prologue
    .line 136
    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    .line 137
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;-><init>(I)V

    return-object v0
.end method

.method static createCondition(ILmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;
    .locals 1

    .prologue
    .line 176
    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    .line 177
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;

    invoke-direct {v0, p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;-><init>(ILmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    return-object v0
.end method

.method static createEmpty()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_empty:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object v0
.end method

.method static createLook(ILmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;
    .locals 2

    .prologue
    .line 116
    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    .line 117
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;-><init>(ILmf/org/apache/xerces/impl/xpath/regex/Token;I)V

    return-object v0
.end method

.method static createModifierGroup(Lmf/org/apache/xerces/impl/xpath/regex/Token;II)Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;
    .locals 1

    .prologue
    .line 171
    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    .line 172
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;

    invoke-direct {v0, p0, p1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;-><init>(Lmf/org/apache/xerces/impl/xpath/regex/Token;II)V

    return-object v0
.end method

.method static createNGClosure(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;
    .locals 2

    .prologue
    .line 128
    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    .line 129
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;-><init>(ILmf/org/apache/xerces/impl/xpath/regex/Token;)V

    return-object v0
.end method

.method static createNRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    .locals 2

    .prologue
    .line 151
    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    .line 152
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;-><init>(I)V

    return-object v0
.end method

.method static createParen(Lmf/org/apache/xerces/impl/xpath/regex/Token;I)Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;
    .locals 2

    .prologue
    .line 120
    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    .line 121
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;-><init>(ILmf/org/apache/xerces/impl/xpath/regex/Token;I)V

    return-object v0
.end method

.method static createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    .locals 2

    .prologue
    .line 147
    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    .line 148
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;-><init>(I)V

    return-object v0
.end method

.method static createString(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;
    .locals 3

    .prologue
    .line 167
    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    .line 168
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;-><init>(ILjava/lang/String;I)V

    return-object v0
.end method

.method static createUnion()Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;
    .locals 2

    .prologue
    .line 140
    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    .line 141
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;-><init>(I)V

    return-object v0
.end method

.method static declared-synchronized getCombiningCharacterSequence()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 4

    .prologue
    const-class v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;

    monitor-enter v1

    .line 1059
    :try_start_0
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_ccs:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-nez v0, :cond_0

    const-string/jumbo v0, "M"

    .line 1062
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createClosure(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;

    move-result-object v0

    const-string/jumbo v2, "M"

    .line 1063
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v2

    invoke-static {v2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createConcat(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;

    move-result-object v0

    .line 1064
    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_ccs:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    .line 1065
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_ccs:Lmf/org/apache/xerces/impl/xpath/regex/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1060
    :cond_0
    :try_start_1
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_ccs:Lmf/org/apache/xerces/impl/xpath/regex/Token;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized getGraphemePattern()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 7

    .prologue
    const-class v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;

    monitor-enter v1

    .line 1020
    :try_start_0
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_grapheme:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-nez v0, :cond_0

    .line 1023
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v2

    const-string/jumbo v0, "ASSIGNED"

    .line 1024
    const/4 v3, 0x1

    invoke-static {v0, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    const-string/jumbo v0, "M"

    .line 1025
    const/4 v3, 0x1

    invoke-static {v0, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->subtractRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    const-string/jumbo v0, "C"

    .line 1026
    const/4 v3, 0x1

    invoke-static {v0, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->subtractRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    .line 1028
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v4, "\u094d\u09cd\u0a4d\u0acd\u0b4d\u0bcd\u0c4d\u0ccd\u0d4d\u0e3a\u0f84"

    .line 1029
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1030
    invoke-virtual {v3, v0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    .line 1029
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1021
    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_grapheme:Lmf/org/apache/xerces/impl/xpath/regex/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1033
    :cond_1
    :try_start_1
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    const-string/jumbo v4, "M"

    .line 1034
    const/4 v5, 0x1

    invoke-static {v4, v5}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v4

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    const/16 v4, 0x1160

    const/16 v5, 0x11ff

    .line 1035
    invoke-virtual {v0, v4, v5}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    const v4, 0xff9e

    const v5, 0xff9f

    .line 1036
    invoke-virtual {v0, v4, v5}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    .line 1038
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createUnion()Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;

    move-result-object v4

    .line 1039
    invoke-virtual {v4, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    .line 1040
    sget-object v2, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_empty:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v4, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    .line 1042
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createUnion()Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;

    move-result-object v2

    const-string/jumbo v5, "L"

    .line 1043
    const/4 v6, 0x1

    invoke-static {v5, v6}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v5

    invoke-static {v3, v5}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createConcat(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    .line 1044
    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    .line 1046
    invoke-static {v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createClosure(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;

    move-result-object v0

    .line 1048
    invoke-static {v4, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createConcat(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;

    move-result-object v0

    .line 1050
    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_grapheme:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    .line 1051
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_grapheme:Lmf/org/apache/xerces/impl/xpath/regex/Token;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    .locals 10

    .prologue
    const/high16 v7, 0x10000

    const/16 v3, 0x20

    const/4 v1, 0x0

    .line 733
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 961
    :goto_0
    if-nez p1, :cond_13

    .line 962
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories2:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    .line 964
    :goto_1
    return-object v0

    .line 734
    :cond_0
    sget-object v4, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories:Ljava/util/Hashtable;

    monitor-enter v4

    .line 735
    :try_start_0
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categoryNames:[Ljava/lang/String;

    array-length v0, v0

    new-array v5, v0, [Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move v0, v1

    .line 736
    :goto_2
    array-length v2, v5

    if-ge v0, v2, :cond_1

    .line 737
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v2

    aput-object v2, v5, v0

    .line 736
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move v0, v1

    .line 740
    :goto_3
    if-ge v0, v7, :cond_8

    .line 741
    int-to-char v2, v0

    invoke-static {v2}, Ljava/lang/Character;->getType(C)I

    move-result v2

    const/16 v6, 0x15

    .line 742
    if-ne v2, v6, :cond_5

    :cond_2
    const/16 v6, 0xab

    .line 745
    if-ne v0, v6, :cond_6

    :cond_3
    const/16 v2, 0x1d

    :goto_4
    const/16 v6, 0xbb

    .line 750
    if-ne v0, v6, :cond_7

    :cond_4
    const/16 v2, 0x1e

    .line 754
    :goto_5
    aget-object v6, v5, v2

    invoke-virtual {v6, v0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    .line 755
    packed-switch v2, :pswitch_data_0

    .line 802
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mf.org.apache.xerces.utils.regex.Token#getRange(): Unknown Unicode category: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 734
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    const/16 v6, 0x16

    .line 743
    if-eq v2, v6, :cond_2

    goto :goto_5

    :cond_6
    const/16 v6, 0x2018

    .line 745
    if-eq v0, v6, :cond_3

    const/16 v6, 0x201b

    if-eq v0, v6, :cond_3

    const/16 v6, 0x201c

    if-eq v0, v6, :cond_3

    const/16 v6, 0x201f

    .line 746
    if-eq v0, v6, :cond_3

    const/16 v6, 0x2039

    if-eq v0, v6, :cond_3

    goto :goto_4

    :cond_7
    const/16 v6, 0x2019

    .line 750
    if-eq v0, v6, :cond_4

    const/16 v6, 0x201d

    if-eq v0, v6, :cond_4

    const/16 v6, 0x203a

    if-eq v0, v6, :cond_4

    goto :goto_5

    :pswitch_1
    const/16 v2, 0x1f

    .line 804
    :goto_6
    :try_start_1
    aget-object v2, v5, v2

    invoke-virtual {v2, v0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    .line 740
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :pswitch_2
    move v2, v3

    .line 767
    goto :goto_6

    :pswitch_3
    const/16 v2, 0x21

    .line 771
    goto :goto_6

    :pswitch_4
    const/16 v2, 0x22

    .line 776
    goto :goto_6

    :pswitch_5
    const/16 v2, 0x23

    .line 783
    goto :goto_6

    :pswitch_6
    const/16 v2, 0x24

    .line 792
    goto :goto_6

    :pswitch_7
    const/16 v2, 0x25

    .line 798
    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    .line 806
    aget-object v0, v5, v0

    const/high16 v2, 0x10000

    const v6, 0x10ffff

    invoke-virtual {v0, v2, v6}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    move v0, v1

    .line 808
    :goto_7
    array-length v2, v5

    if-ge v0, v2, :cond_b

    .line 809
    sget-object v2, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categoryNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_9

    .line 808
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 810
    :cond_9
    if-eqz v0, :cond_a

    .line 813
    :goto_9
    sget-object v2, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categoryNames:[Ljava/lang/String;

    aget-object v6, v6, v0

    aget-object v7, v5, v0

    invoke-virtual {v2, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    sget-object v2, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories2:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categoryNames:[Ljava/lang/String;

    aget-object v6, v6, v0

    .line 815
    aget-object v7, v5, v0

    invoke-static {v7}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v7

    .line 814
    invoke-virtual {v2, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 811
    :cond_a
    aget-object v2, v5, v0

    const/high16 v6, 0x10000

    const v7, 0x10ffff

    invoke-virtual {v2, v6, v7}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    goto :goto_9

    .line 821
    :cond_b
    new-instance v6, Ljava/lang/StringBuffer;

    const/16 v0, 0x32

    invoke-direct {v6, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    move v0, v1

    .line 822
    :goto_a
    sget-object v2, Lmf/org/apache/xerces/impl/xpath/regex/Token;->blockNames:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_12

    .line 823
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v2

    const/16 v7, 0x54

    .line 825
    if-lt v0, v7, :cond_d

    .line 834
    add-int/lit8 v7, v0, -0x54

    mul-int/lit8 v7, v7, 0x2

    .line 835
    sget-object v8, Lmf/org/apache/xerces/impl/xpath/regex/Token;->nonBMPBlockRanges:[I

    aget v8, v8, v7

    .line 836
    sget-object v9, Lmf/org/apache/xerces/impl/xpath/regex/Token;->nonBMPBlockRanges:[I

    add-int/lit8 v7, v7, 0x1

    aget v7, v9, v7

    .line 835
    invoke-virtual {v2, v8, v7}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    .line 838
    :goto_b
    sget-object v7, Lmf/org/apache/xerces/impl/xpath/regex/Token;->blockNames:[Ljava/lang/String;

    aget-object v7, v7, v0

    const-string/jumbo v8, "Specials"

    .line 839
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    :goto_c
    const-string/jumbo v8, "Private Use"

    .line 841
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    .line 845
    :goto_d
    sget-object v8, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories:Ljava/util/Hashtable;

    invoke-virtual {v8, v7, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    sget-object v8, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories2:Ljava/util/Hashtable;

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v2

    invoke-virtual {v8, v7, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 847
    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    const-string/jumbo v2, "Is"

    .line 848
    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    .line 849
    invoke-virtual {v7, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_10

    .line 854
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 856
    :cond_c
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v7, v8}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 822
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 826
    :cond_d
    mul-int/lit8 v7, v0, 0x2

    const-string/jumbo v8, "\u0000\u007f\u0080\u00ff\u0100\u017f\u0180\u024f\u0250\u02af\u02b0\u02ff\u0300\u036f\u0370\u03ff\u0400\u04ff\u0530\u058f\u0590\u05ff\u0600\u06ff\u0700\u074f\u0780\u07bf\u0900\u097f\u0980\u09ff\u0a00\u0a7f\u0a80\u0aff\u0b00\u0b7f\u0b80\u0bff\u0c00\u0c7f\u0c80\u0cff\u0d00\u0d7f\u0d80\u0dff\u0e00\u0e7f\u0e80\u0eff\u0f00\u0fff\u1000\u109f\u10a0\u10ff\u1100\u11ff\u1200\u137f\u13a0\u13ff\u1400\u167f\u1680\u169f\u16a0\u16ff\u1780\u17ff\u1800\u18af\u1e00\u1eff\u1f00\u1fff\u2000\u206f\u2070\u209f\u20a0\u20cf\u20d0\u20ff\u2100\u214f\u2150\u218f\u2190\u21ff\u2200\u22ff\u2300\u23ff\u2400\u243f\u2440\u245f\u2460\u24ff\u2500\u257f\u2580\u259f\u25a0\u25ff\u2600\u26ff\u2700\u27bf\u2800\u28ff\u2e80\u2eff\u2f00\u2fdf\u2ff0\u2fff\u3000\u303f\u3040\u309f\u30a0\u30ff\u3100\u312f\u3130\u318f\u3190\u319f\u31a0\u31bf\u3200\u32ff\u3300\u33ff\u3400\u4db5\u4e00\u9fff\ua000\ua48f\ua490\ua4cf\uac00\ud7a3\ue000\uf8ff\uf900\ufaff\ufb00\ufb4f\ufb50\ufdff\ufe20\ufe2f\ufe30\ufe4f\ufe50\ufe6f\ufe70\ufefe\ufeff\ufeff\uff00\uffef"

    .line 827
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const-string/jumbo v9, "\u0000\u007f\u0080\u00ff\u0100\u017f\u0180\u024f\u0250\u02af\u02b0\u02ff\u0300\u036f\u0370\u03ff\u0400\u04ff\u0530\u058f\u0590\u05ff\u0600\u06ff\u0700\u074f\u0780\u07bf\u0900\u097f\u0980\u09ff\u0a00\u0a7f\u0a80\u0aff\u0b00\u0b7f\u0b80\u0bff\u0c00\u0c7f\u0c80\u0cff\u0d00\u0d7f\u0d80\u0dff\u0e00\u0e7f\u0e80\u0eff\u0f00\u0fff\u1000\u109f\u10a0\u10ff\u1100\u11ff\u1200\u137f\u13a0\u13ff\u1400\u167f\u1680\u169f\u16a0\u16ff\u1780\u17ff\u1800\u18af\u1e00\u1eff\u1f00\u1fff\u2000\u206f\u2070\u209f\u20a0\u20cf\u20d0\u20ff\u2100\u214f\u2150\u218f\u2190\u21ff\u2200\u22ff\u2300\u23ff\u2400\u243f\u2440\u245f\u2460\u24ff\u2500\u257f\u2580\u259f\u25a0\u25ff\u2600\u26ff\u2700\u27bf\u2800\u28ff\u2e80\u2eff\u2f00\u2fdf\u2ff0\u2fff\u3000\u303f\u3040\u309f\u30a0\u30ff\u3100\u312f\u3130\u318f\u3190\u319f\u31a0\u31bf\u3200\u32ff\u3300\u33ff\u3400\u4db5\u4e00\u9fff\ua000\ua48f\ua490\ua4cf\uac00\ud7a3\ue000\uf8ff\uf900\ufaff\ufb00\ufb4f\ufb50\ufdff\ufe20\ufe2f\ufe30\ufe4f\ufe50\ufe6f\ufe70\ufefe\ufeff\ufeff\uff00\uffef"

    .line 828
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 832
    invoke-virtual {v2, v8, v7}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    goto :goto_b

    :cond_e
    const v8, 0xfff0

    const v9, 0xfffd

    .line 840
    invoke-virtual {v2, v8, v9}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    goto :goto_c

    :cond_f
    const/high16 v8, 0xf0000

    const v9, 0xffffd

    .line 842
    invoke-virtual {v2, v8, v9}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    const/high16 v8, 0x100000

    const v9, 0x10fffd

    .line 843
    invoke-virtual {v2, v8, v9}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    goto :goto_d

    :cond_10
    move v2, v1

    .line 850
    :goto_e
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_c

    .line 851
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v3, :cond_11

    .line 850
    :goto_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 851
    :cond_11
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_f

    :cond_12
    const-string/jumbo v0, "ASSIGNED"

    const-string/jumbo v1, "Cn"

    .line 860
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "UNASSIGNED"

    const-string/jumbo v1, "Cn"

    .line 861
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 862
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x10ffff

    .line 863
    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    .line 864
    sget-object v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories:Ljava/util/Hashtable;

    const-string/jumbo v2, "ALL"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    sget-object v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories2:Ljava/util/Hashtable;

    const-string/jumbo v2, "ALL"

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "ASSIGNED"

    .line 866
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v0, "UNASSIGNED"

    .line 867
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v0, "ALL"

    .line 868
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    .line 870
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    const/4 v1, 0x1

    .line 871
    aget-object v1, v5, v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    const/4 v1, 0x2

    .line 872
    aget-object v1, v5, v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    const/4 v1, 0x5

    .line 873
    aget-object v1, v5, v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    .line 874
    sget-object v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories:Ljava/util/Hashtable;

    const-string/jumbo v2, "IsAlpha"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    sget-object v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories2:Ljava/util/Hashtable;

    const-string/jumbo v2, "IsAlpha"

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "IsAlpha"

    .line 876
    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    .line 878
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v1

    .line 879
    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    const/16 v0, 0x9

    .line 880
    aget-object v0, v5, v0

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    .line 881
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories:Ljava/util/Hashtable;

    const-string/jumbo v2, "IsAlnum"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories2:Ljava/util/Hashtable;

    const-string/jumbo v2, "IsAlnum"

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "IsAlnum"

    .line 883
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    .line 885
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    .line 886
    sget-object v2, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_spaces:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    const/16 v2, 0x22

    .line 887
    aget-object v2, v5, v2

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    .line 888
    sget-object v2, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories:Ljava/util/Hashtable;

    const-string/jumbo v3, "IsSpace"

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    sget-object v2, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories2:Ljava/util/Hashtable;

    const-string/jumbo v3, "IsSpace"

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "IsSpace"

    .line 890
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    .line 892
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    .line 893
    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    const/16 v1, 0x5f

    const/16 v2, 0x5f

    .line 894
    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    .line 895
    sget-object v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories:Ljava/util/Hashtable;

    const-string/jumbo v2, "IsWord"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    sget-object v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories2:Ljava/util/Hashtable;

    const-string/jumbo v2, "IsWord"

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "IsWord"

    .line 897
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    .line 899
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x7f

    .line 900
    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    .line 901
    sget-object v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories:Ljava/util/Hashtable;

    const-string/jumbo v2, "IsASCII"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    sget-object v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories2:Ljava/util/Hashtable;

    const-string/jumbo v2, "IsASCII"

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "IsASCII"

    .line 903
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    .line 905
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    const/16 v1, 0x23

    .line 906
    aget-object v1, v5, v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    const/16 v1, 0x20

    const/16 v2, 0x20

    .line 907
    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    .line 908
    sget-object v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories:Ljava/util/Hashtable;

    const-string/jumbo v2, "IsGraph"

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    sget-object v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories2:Ljava/util/Hashtable;

    const-string/jumbo v2, "IsGraph"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "IsGraph"

    .line 910
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    .line 912
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    const/16 v1, 0x30

    const/16 v2, 0x39

    .line 913
    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    const/16 v1, 0x41

    const/16 v2, 0x46

    .line 914
    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    const/16 v1, 0x61

    const/16 v2, 0x66

    .line 915
    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    .line 916
    sget-object v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories:Ljava/util/Hashtable;

    const-string/jumbo v2, "IsXDigit"

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    sget-object v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories2:Ljava/util/Hashtable;

    const-string/jumbo v2, "IsXDigit"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "IsXDigit"

    .line 918
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v0, "IsDigit"

    const-string/jumbo v1, "Nd"

    .line 920
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "IsUpper"

    const-string/jumbo v1, "Lu"

    .line 921
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "IsLower"

    const-string/jumbo v1, "Ll"

    .line 922
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "IsCntrl"

    const-string/jumbo v1, "C"

    .line 923
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "IsPrint"

    const-string/jumbo v1, "C"

    .line 924
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "IsPunct"

    const-string/jumbo v1, "P"

    .line 925
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "IsDigit"

    .line 926
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v0, "IsUpper"

    .line 927
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v0, "IsLower"

    .line 928
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v0, "IsCntrl"

    .line 929
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v0, "IsPrint"

    .line 930
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v0, "IsPunct"

    .line 931
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v0, "alpha"

    const-string/jumbo v1, "IsAlpha"

    .line 933
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "alnum"

    const-string/jumbo v1, "IsAlnum"

    .line 934
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "ascii"

    const-string/jumbo v1, "IsASCII"

    .line 935
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "cntrl"

    const-string/jumbo v1, "IsCntrl"

    .line 936
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "digit"

    const-string/jumbo v1, "IsDigit"

    .line 937
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "graph"

    const-string/jumbo v1, "IsGraph"

    .line 938
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "lower"

    const-string/jumbo v1, "IsLower"

    .line 939
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "print"

    const-string/jumbo v1, "IsPrint"

    .line 940
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "punct"

    const-string/jumbo v1, "IsPunct"

    .line 941
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "space"

    const-string/jumbo v1, "IsSpace"

    .line 942
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "upper"

    const-string/jumbo v1, "IsUpper"

    .line 943
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "word"

    const-string/jumbo v1, "IsWord"

    .line 944
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "xdigit"

    const-string/jumbo v1, "IsXDigit"

    .line 945
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "alpha"

    .line 946
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v0, "alnum"

    .line 947
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v0, "ascii"

    .line 948
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v0, "cntrl"

    .line 949
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v0, "digit"

    .line 950
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v0, "graph"

    .line 951
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v0, "lower"

    .line 952
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v0, "print"

    .line 953
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v0, "punct"

    .line 954
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v0, "space"

    .line 955
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v0, "upper"

    .line 956
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v0, "word"

    .line 957
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v0, "xdigit"

    .line 958
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    .line 734
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 961
    :cond_13
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    goto/16 :goto_1

    .line 755
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method protected static getRange(Ljava/lang/String;ZZ)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 967
    invoke-static {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    .line 968
    if-nez p2, :cond_1

    .line 970
    :cond_0
    :goto_0
    return-object v0

    .line 968
    :cond_1
    if-eqz v0, :cond_0

    invoke-static {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->isRegisterNonXS(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 969
    goto :goto_0
.end method

.method protected static isRegisterNonXS(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 984
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->nonxs:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 988
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->nonxs:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 985
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static final isSet(II)Z
    .locals 1

    .prologue
    .line 383
    and-int v0, p0, p1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private final isShorterThan(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Z
    .locals 4

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x0

    .line 493
    if-eqz p1, :cond_0

    .line 505
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-eq v0, v3, :cond_1

    .line 506
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Internal Error: Illegal type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 493
    :cond_0
    return v2

    .line 505
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 508
    iget v1, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-eq v1, v3, :cond_2

    .line 509
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Internal Error: Illegal type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_2
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 510
    if-lt v0, v1, :cond_3

    return v2

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method protected static registerNonXS(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 979
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->nonxs:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 981
    :goto_0
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->nonxs:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    return-void

    .line 980
    :cond_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->nonxs:Ljava/util/Hashtable;

    goto :goto_0
.end method

.method private static setAlias(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 992
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;

    .line 993
    sget-object v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories2:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;

    .line 994
    if-nez p2, :cond_0

    .line 998
    sget-object v2, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories2:Ljava/util/Hashtable;

    invoke-virtual {v2, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    :goto_0
    return-void

    .line 995
    :cond_0
    sget-object v2, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories:Ljava/util/Hashtable;

    invoke-virtual {v2, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories2:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V
    .locals 2

    .prologue
    .line 194
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected addRange(II)V
    .locals 2

    .prologue
    .line 199
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final analyzeFirstCharacter(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;I)I
    .locals 7

    .prologue
    const/high16 v4, 0x10000

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 386
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    packed-switch v0, :pswitch_data_0

    .line 488
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Token#analyzeHeadCharacter(): Invalid Type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    move v0, v1

    .line 389
    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 390
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->analyzeFirstCharacter(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 389
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 392
    :cond_0
    return v1

    .line 395
    :pswitch_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v0

    if-eqz v0, :cond_1

    move v3, v1

    move v0, v1

    move v4, v1

    .line 404
    :goto_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v5

    if-ge v3, v5, :cond_10

    .line 405
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->analyzeFirstCharacter(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;I)I

    move-result v4

    .line 406
    if-eq v4, v6, :cond_2

    .line 408
    if-eqz v4, :cond_4

    .line 404
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 396
    :cond_1
    return v1

    :cond_2
    move v2, v4

    .line 411
    :goto_3
    if-nez v0, :cond_3

    move v1, v2

    :cond_3
    return v1

    :cond_4
    move v0, v2

    .line 409
    goto :goto_2

    .line 414
    :pswitch_3
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->analyzeFirstCharacter(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;I)I

    move-result v0

    .line 415
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v3

    if-eq v3, v2, :cond_6

    .line 416
    if-eq v0, v6, :cond_7

    .line 417
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->analyzeFirstCharacter(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;I)I

    move-result v3

    .line 418
    if-eq v3, v6, :cond_8

    .line 419
    if-nez v0, :cond_9

    :cond_5
    move v2, v1

    :goto_4
    return v2

    .line 415
    :cond_6
    return v1

    .line 416
    :cond_7
    return v0

    .line 418
    :cond_8
    return v3

    .line 419
    :cond_9
    if-eqz v3, :cond_5

    goto :goto_4

    .line 423
    :pswitch_4
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->analyzeFirstCharacter(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;I)I

    .line 424
    return v1

    .line 428
    :pswitch_5
    return v1

    .line 431
    :pswitch_6
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChar()I

    move-result v0

    .line 432
    invoke-virtual {p1, v0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    .line 433
    if-lt v0, v4, :cond_b

    .line 439
    :cond_a
    :goto_5
    return v2

    .line 433
    :cond_b
    invoke-static {p2, v6}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->isSet(II)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 434
    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 435
    invoke-virtual {p1, v0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    .line 436
    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    .line 437
    invoke-virtual {p1, v0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    goto :goto_5

    .line 442
    :pswitch_7
    return v6

    .line 445
    :pswitch_8
    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    .line 446
    return v2

    .line 449
    :pswitch_9
    invoke-static {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    .line 450
    return v2

    .line 454
    :pswitch_a
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->analyzeFirstCharacter(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;I)I

    move-result v0

    return v0

    :pswitch_b
    move-object v0, p0

    .line 457
    check-cast v0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;->getOptions()I

    move-result v0

    or-int v2, p2, v0

    move-object v0, p0

    .line 458
    check-cast v0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;->getOptionsMask()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v2

    .line 459
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->analyzeFirstCharacter(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;I)I

    move-result v0

    return v0

    :pswitch_c
    const v0, 0x10ffff

    .line 462
    invoke-virtual {p1, v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    .line 463
    return v6

    .line 466
    :pswitch_d
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 468
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->isHighSurrogate(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 472
    :cond_c
    :goto_6
    invoke-virtual {p1, v0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    .line 473
    if-lt v0, v4, :cond_f

    .line 479
    :cond_d
    :goto_7
    return v2

    .line 469
    :cond_e
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v6, :cond_c

    .line 470
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->isLowSurrogate(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 471
    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->composeFromSurrogates(II)I

    move-result v0

    goto :goto_6

    .line 473
    :cond_f
    invoke-static {p2, v6}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->isSet(II)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 474
    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 475
    invoke-virtual {p1, v0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    .line 476
    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    .line 477
    invoke-virtual {p1, v0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    goto :goto_7

    .line 485
    :pswitch_e
    return v1

    :cond_10
    move v2, v4

    goto/16 :goto_3

    .line 386
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_d
        :pswitch_7
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_a
        :pswitch_b
        :pswitch_3
    .end packed-switch
.end method

.method protected compactRanges()V
    .locals 2

    .prologue
    .line 205
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final findFixedString(Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 521
    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    packed-switch v2, :pswitch_data_0

    .line 574
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Token#findFixedString(): Invalid Type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    move v2, v1

    move v4, v1

    move-object v1, v0

    move v0, v4

    .line 525
    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 526
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->findFixedString(Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;I)V

    .line 527
    if-nez v1, :cond_1

    .line 528
    :cond_0
    iget-object v1, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;->token:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    .line 529
    iget v0, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;->options:I

    .line 525
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 527
    :cond_1
    iget-object v3, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;->token:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-direct {v1, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->isShorterThan(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 532
    :cond_2
    iput-object v1, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;->token:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    .line 533
    iput v0, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;->options:I

    .line 534
    return-void

    .line 550
    :pswitch_2
    iput-object v0, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;->token:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    .line 551
    return-void

    .line 554
    :pswitch_3
    iput-object v0, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;->token:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    .line 555
    return-void

    .line 558
    :pswitch_4
    iput-object p0, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;->token:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    .line 559
    iput p2, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;->options:I

    .line 560
    return-void

    .line 564
    :pswitch_5
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->findFixedString(Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;I)V

    .line 565
    return-void

    :pswitch_6
    move-object v0, p0

    .line 568
    check-cast v0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;->getOptions()I

    move-result v0

    or-int v2, p2, v0

    move-object v0, p0

    .line 569
    check-cast v0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;->getOptionsMask()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v2

    .line 570
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->findFixedString(Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;I)V

    .line 571
    return-void

    .line 521
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method getChar()I
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 242
    return v0
.end method

.method getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 191
    return-object v0
.end method

.method getMax()I
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 229
    return v0
.end method

.method final getMaxLength()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 313
    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    packed-switch v3, :pswitch_data_0

    .line 375
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Token#getMaxLength(): Invalid Type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    move v1, v0

    .line 316
    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 317
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getMaxLength()I

    move-result v3

    .line 318
    if-ltz v3, :cond_0

    .line 319
    add-int/2addr v1, v3

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    :cond_0
    return v2

    .line 321
    :cond_1
    return v1

    .line 325
    :pswitch_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v3

    if-eqz v3, :cond_3

    .line 327
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getMaxLength()I

    move-result v0

    move v3, v1

    .line 328
    :goto_1
    if-gez v0, :cond_4

    .line 336
    :cond_2
    :goto_2
    return v0

    .line 326
    :cond_3
    return v0

    .line 328
    :cond_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v1

    if-ge v3, v1, :cond_2

    .line 329
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getMaxLength()I

    move-result v1

    .line 330
    if-ltz v1, :cond_5

    .line 334
    if-gt v1, v0, :cond_6

    .line 328
    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_5
    move v0, v2

    .line 332
    goto :goto_2

    :cond_6
    move v0, v1

    .line 334
    goto :goto_3

    .line 340
    :pswitch_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getMax()I

    move-result v1

    if-gez v1, :cond_7

    .line 344
    return v2

    .line 343
    :cond_7
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getMax()I

    move-result v1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getMaxLength()I

    move-result v0

    mul-int/2addr v0, v1

    return v0

    .line 348
    :pswitch_4
    return v0

    .line 351
    :pswitch_5
    return v1

    :pswitch_6
    const/4 v0, 0x2

    .line 355
    return v0

    .line 360
    :pswitch_7
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getMaxLength()I

    move-result v0

    return v0

    .line 363
    :pswitch_8
    return v2

    .line 366
    :pswitch_9
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    .line 372
    :pswitch_a
    return v0

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_7
        :pswitch_7
        :pswitch_2
    .end packed-switch
.end method

.method getMin()I
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 226
    return v0
.end method

.method final getMinLength()I
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 256
    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    packed-switch v2, :pswitch_data_0

    .line 308
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Token#getMinLength(): Invalid Type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    move v1, v0

    .line 259
    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 260
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v2

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getMinLength()I

    move-result v2

    add-int/2addr v1, v2

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    :cond_0
    return v1

    .line 265
    :pswitch_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 267
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getMinLength()I

    move-result v0

    move v2, v1

    .line 268
    :goto_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 269
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getMinLength()I

    move-result v1

    .line 270
    if-lt v1, v0, :cond_2

    .line 268
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 266
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 270
    goto :goto_2

    .line 272
    :cond_3
    return v0

    .line 276
    :pswitch_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getMin()I

    move-result v1

    if-gez v1, :cond_4

    .line 278
    return v0

    .line 277
    :cond_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getMin()I

    move-result v1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getMinLength()I

    move-result v0

    mul-int/2addr v0, v1

    return v0

    .line 282
    :pswitch_4
    return v0

    .line 288
    :pswitch_5
    return v1

    .line 293
    :pswitch_6
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getMinLength()I

    move-result v0

    return v0

    .line 296
    :pswitch_7
    return v0

    .line 299
    :pswitch_8
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    .line 305
    :pswitch_9
    return v0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_8
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_6
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method getParenNumber()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 239
    return v0
.end method

.method getReferenceNumber()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 232
    return v0
.end method

.method getString()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 235
    return-object v0
.end method

.method protected intersectRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V
    .locals 2

    .prologue
    .line 214
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method match(I)Z
    .locals 3

    .prologue
    .line 579
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "NFAArrow#match(): Internal error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V
    .locals 2

    .prologue
    .line 208
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setMax(I)V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method setMin(I)V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method size()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 188
    return v0
.end method

.method protected sortRanges()V
    .locals 2

    .prologue
    .line 202
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected subtractRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V
    .locals 2

    .prologue
    .line 211
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 246
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 249
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "."

    goto :goto_0
.end method
