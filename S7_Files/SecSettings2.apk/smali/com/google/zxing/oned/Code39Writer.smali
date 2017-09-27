.class public final Lcom/google/zxing/oned/Code39Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "Code39Writer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method

.method private static toIntArray(I[I)V
    .locals 4
    .param p0, "a"    # I
    .param p1, "toReturn"    # [I

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x9

    .line 83
    if-lt v0, v2, :cond_0

    .line 87
    return-void

    .line 84
    :cond_0
    shl-int v2, v3, v0

    and-int v1, p0, v2

    .line 85
    .local v1, "temp":I
    if-eqz v1, :cond_1

    const/4 v2, 0x2

    :goto_1
    aput v2, p1, v0

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 85
    goto :goto_1
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 3
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 39
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, v0, :cond_0

    .line 42
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can only encode CODE_39, but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)[Z
    .locals 16
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    .local v7, "length":I
    const/16 v13, 0x50

    .line 48
    if-gt v7, v13, :cond_0

    const/16 v13, 0x9

    .line 53
    new-array v12, v13, [I

    .line 54
    .local v12, "widths":[I
    add-int/lit8 v2, v7, 0x19

    .local v2, "codeWidth":I
    const/4 v3, 0x0

    .line 55
    .local v3, "i":I
    :goto_0
    if-lt v3, v7, :cond_1

    .line 65
    new-array v10, v2, [Z

    .line 66
    .local v10, "result":[Z
    sget-object v13, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    const/16 v14, 0x27

    aget v13, v13, v14

    invoke-static {v13, v12}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    const/4 v13, 0x0

    .line 67
    const/4 v14, 0x1

    invoke-static {v10, v13, v12, v14}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v9

    .local v9, "pos":I
    const/4 v13, 0x1

    .line 68
    new-array v8, v13, [I

    const/4 v13, 0x0

    const/4 v14, 0x1

    aput v14, v8, v13

    .line 69
    .local v8, "narrowWhite":[I
    const/4 v13, 0x0

    invoke-static {v10, v9, v8, v13}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v13

    add-int/2addr v9, v13

    .line 71
    add-int/lit8 v3, v7, -0x1

    :goto_1
    if-gez v3, :cond_4

    .line 77
    sget-object v13, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    const/16 v14, 0x27

    aget v13, v13, v14

    invoke-static {v13, v12}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    .line 78
    const/4 v13, 0x1

    invoke-static {v10, v9, v12, v13}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v13

    add-int/2addr v9, v13

    .line 79
    return-object v10

    .line 49
    .end local v2    # "codeWidth":I
    .end local v3    # "i":I
    .end local v8    # "narrowWhite":[I
    .end local v9    # "pos":I
    .end local v10    # "result":[Z
    .end local v12    # "widths":[I
    :cond_0
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Requested contents should be less than 80 digits long, but got "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .restart local v2    # "codeWidth":I
    .restart local v3    # "i":I
    .restart local v12    # "widths":[I
    :cond_1
    const-string/jumbo v13, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    .line 56
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 57
    .local v5, "indexInString":I
    if-ltz v5, :cond_2

    .line 60
    sget-object v13, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    aget v13, v13, v5

    invoke-static {v13, v12}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    .line 61
    move-object v1, v12

    .local v1, "arr$":[I
    array-length v6, v1

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-lt v4, v6, :cond_3

    .line 55
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 58
    .end local v1    # "arr$":[I
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    :cond_2
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Bad contents: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 61
    .restart local v1    # "arr$":[I
    .restart local v4    # "i$":I
    .restart local v6    # "len$":I
    :cond_3
    aget v11, v1, v4

    .line 62
    .local v11, "width":I
    add-int/2addr v2, v11

    .line 61
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v1    # "arr$":[I
    .end local v4    # "i$":I
    .end local v5    # "indexInString":I
    .end local v6    # "len$":I
    .end local v11    # "width":I
    .restart local v8    # "narrowWhite":[I
    .restart local v9    # "pos":I
    .restart local v10    # "result":[Z
    :cond_4
    const-string/jumbo v13, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    .line 72
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 73
    .restart local v5    # "indexInString":I
    sget-object v13, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    aget v13, v13, v5

    invoke-static {v13, v12}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    .line 74
    const/4 v13, 0x1

    invoke-static {v10, v9, v12, v13}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v13

    add-int/2addr v9, v13

    .line 75
    const/4 v13, 0x0

    invoke-static {v10, v9, v8, v13}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v13

    add-int/2addr v9, v13

    .line 71
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1
.end method
