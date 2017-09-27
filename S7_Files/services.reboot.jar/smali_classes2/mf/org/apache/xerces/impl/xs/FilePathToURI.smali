.class final Lmf/org/apache/xerces/impl/xs/FilePathToURI;
.super Ljava/lang/Object;
.source "FilePathToURI.java"


# static fields
.field private static gAfterEscaping1:[C

.field private static gAfterEscaping2:[C

.field private static gHexChs:[C

.field private static gNeedEscaping:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/16 v2, 0x80

    const/16 v5, 0x7f

    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 28
    new-array v1, v2, [Z

    sput-object v1, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gNeedEscaping:[Z

    .line 30
    new-array v1, v2, [C

    sput-object v1, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping1:[C

    .line 32
    new-array v1, v2, [C

    sput-object v1, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping2:[C

    const/16 v1, 0x10

    .line 33
    new-array v1, v1, [C

    const/16 v2, 0x30

    aput-char v2, v1, v0

    const/16 v2, 0x31

    aput-char v2, v1, v7

    const/16 v2, 0x32

    aput-char v2, v1, v6

    const/4 v2, 0x3

    const/16 v3, 0x33

    aput-char v3, v1, v2

    const/4 v2, 0x4

    const/16 v3, 0x34

    aput-char v3, v1, v2

    const/4 v2, 0x5

    const/16 v3, 0x35

    aput-char v3, v1, v2

    const/4 v2, 0x6

    const/16 v3, 0x36

    aput-char v3, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0x37

    aput-char v3, v1, v2

    const/16 v2, 0x8

    .line 34
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

    .line 33
    sput-object v1, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gHexChs:[C

    move v1, v0

    :goto_0
    const/16 v2, 0x1f

    .line 37
    if-gt v1, v2, :cond_0

    .line 38
    sget-object v2, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gNeedEscaping:[Z

    aput-boolean v7, v2, v1

    .line 39
    sget-object v2, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping1:[C

    sget-object v3, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gHexChs:[C

    shr-int/lit8 v4, v1, 0x4

    aget-char v3, v3, v4

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 40
    sget-object v2, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping2:[C

    sget-object v3, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gHexChs:[C

    and-int/lit8 v4, v1, 0xf

    aget-char v3, v3, v4

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gNeedEscaping:[Z

    aput-boolean v7, v1, v5

    .line 43
    sget-object v1, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping1:[C

    const/16 v2, 0x37

    aput-char v2, v1, v5

    .line 44
    sget-object v1, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping2:[C

    const/16 v2, 0x46

    aput-char v2, v1, v5

    const/16 v1, 0xf

    .line 45
    new-array v1, v1, [C

    const/16 v2, 0x20

    aput-char v2, v1, v0

    const/16 v2, 0x3c

    aput-char v2, v1, v7

    const/16 v2, 0x3e

    aput-char v2, v1, v6

    const/4 v2, 0x3

    const/16 v3, 0x23

    aput-char v3, v1, v2

    const/4 v2, 0x4

    const/16 v3, 0x25

    aput-char v3, v1, v2

    const/4 v2, 0x5

    const/16 v3, 0x22

    aput-char v3, v1, v2

    const/4 v2, 0x6

    const/16 v3, 0x7b

    aput-char v3, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0x7d

    aput-char v3, v1, v2

    const/16 v2, 0x8

    .line 46
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

    .line 47
    array-length v2, v1

    .line 49
    :goto_1
    if-ge v0, v2, :cond_1

    .line 50
    aget-char v3, v1, v0

    .line 51
    sget-object v4, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gNeedEscaping:[Z

    aput-boolean v7, v4, v3

    .line 52
    sget-object v4, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping1:[C

    sget-object v5, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gHexChs:[C

    shr-int/lit8 v6, v3, 0x4

    aget-char v5, v5, v6

    int-to-char v5, v5

    aput-char v5, v4, v3

    .line 53
    sget-object v4, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping2:[C

    sget-object v5, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gHexChs:[C

    and-int/lit8 v6, v3, 0xf

    aget-char v5, v5, v6

    int-to-char v5, v5

    aput-char v5, v4, v3

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 55
    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filepath2URI(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v6, 0x2f

    const/4 v1, 0x0

    const/16 v7, 0x25

    const/4 v0, 0x0

    .line 64
    if-eqz p0, :cond_1

    .line 67
    sget-char v1, Ljava/io/File;->separatorChar:C

    .line 68
    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 71
    new-instance v4, Ljava/lang/StringBuffer;

    mul-int/lit8 v1, v3, 0x3

    invoke-direct {v4, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string/jumbo v1, "file://"

    .line 72
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x2

    .line 74
    if-ge v3, v1, :cond_2

    :cond_0
    :goto_0
    move v1, v0

    .line 83
    :goto_1
    if-ge v1, v3, :cond_4

    .line 84
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x80

    .line 86
    if-ge v5, v6, :cond_4

    .line 88
    sget-object v6, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gNeedEscaping:[Z

    aget-boolean v6, v6, v5

    if-nez v6, :cond_3

    .line 95
    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 83
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 65
    :cond_1
    return-object v1

    :cond_2
    const/4 v1, 0x1

    .line 74
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x3a

    if-ne v1, v5, :cond_0

    .line 75
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    const/16 v5, 0x41

    .line 76
    if-lt v1, v5, :cond_0

    const/16 v5, 0x5a

    if-gt v1, v5, :cond_0

    .line 77
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 89
    :cond_3
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 90
    sget-object v6, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping1:[C

    aget-char v6, v6, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 91
    sget-object v6, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping2:[C

    aget-char v5, v6, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 100
    :cond_4
    if-lt v1, v3, :cond_6

    .line 133
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 105
    :cond_6
    :try_start_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 110
    array-length v2, v1

    .line 113
    :goto_3
    if-ge v0, v2, :cond_5

    .line 114
    aget-byte v3, v1, v0

    .line 116
    if-ltz v3, :cond_7

    .line 122
    sget-object v5, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gNeedEscaping:[Z

    aget-boolean v5, v5, v3

    if-nez v5, :cond_8

    .line 128
    int-to-char v3, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 113
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 106
    :catch_0
    move-exception v0

    .line 108
    return-object v2

    .line 117
    :cond_7
    add-int/lit16 v3, v3, 0x100

    .line 118
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 119
    sget-object v5, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gHexChs:[C

    shr-int/lit8 v6, v3, 0x4

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 120
    sget-object v5, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gHexChs:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v5, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 123
    :cond_8
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 124
    sget-object v5, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping1:[C

    aget-char v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 125
    sget-object v5, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping2:[C

    aget-char v3, v5, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4
.end method
