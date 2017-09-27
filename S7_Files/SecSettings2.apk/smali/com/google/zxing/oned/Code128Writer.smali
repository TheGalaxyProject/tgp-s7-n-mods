.class public final Lcom/google/zxing/oned/Code128Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "Code128Writer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method

.method private static isDigits(Ljava/lang/CharSequence;II)Z
    .locals 6
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "length"    # I

    .prologue
    const/4 v4, 0x0

    .line 189
    add-int v1, p1, p2

    .line 190
    .local v1, "end":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 191
    .local v3, "last":I
    move v2, p1

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_1

    .line 200
    :cond_0
    if-le v1, v3, :cond_5

    :goto_1
    return v4

    .line 191
    :cond_1
    if-ge v2, v3, :cond_0

    .line 192
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .local v0, "c":C
    const/16 v5, 0x30

    .line 193
    if-ge v0, v5, :cond_3

    :cond_2
    const/16 v5, 0xf1

    .line 194
    if-ne v0, v5, :cond_4

    .line 197
    add-int/lit8 v1, v1, 0x1

    .line 191
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/16 v5, 0x39

    .line 193
    if-gt v0, v5, :cond_2

    goto :goto_2

    .line 195
    :cond_4
    return v4

    .end local v0    # "c":C
    :cond_5
    const/4 v4, 0x1

    .line 200
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
    .line 58
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, v0, :cond_0

    .line 61
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can only encode CODE_128, but got "

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
    .locals 26
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    .local v13, "length":I
    const/16 v23, 0x1

    .line 68
    move/from16 v0, v23

    if-ge v13, v0, :cond_1

    .line 69
    :cond_0
    new-instance v23, Ljava/lang/IllegalArgumentException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Contents length should be between 1 and 80 characters, but got "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v23

    :cond_1
    const/16 v23, 0x50

    .line 68
    move/from16 v0, v23

    if-gt v13, v0, :cond_0

    const/4 v9, 0x0

    .line 73
    .local v9, "i":I
    :goto_0
    if-lt v9, v13, :cond_4

    .line 88
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .local v17, "patterns":Ljava/util/Collection;, "Ljava/util/Collection<[I>;"
    const/4 v5, 0x0

    .local v5, "checkSum":I
    const/4 v6, 0x1

    .local v6, "checkWeight":I
    const/4 v7, 0x0

    .local v7, "codeSet":I
    const/16 v19, 0x0

    .line 94
    .local v19, "position":I
    :cond_2
    :goto_1
    move/from16 v0, v19

    if-lt v0, v13, :cond_7

    .line 164
    rem-int/lit8 v5, v5, 0x67

    .line 165
    sget-object v23, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v23, v23, v5

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v23, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    const/16 v24, 0x6a

    aget-object v23, v23, v24

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    .line 172
    .local v8, "codeWidth":I
    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_e

    .line 179
    new-array v0, v8, [Z

    move-object/from16 v21, v0

    .local v21, "result":[Z
    const/16 v18, 0x0

    .line 181
    .local v18, "pos":I
    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_f

    .line 185
    return-object v21

    .line 74
    .end local v5    # "checkSum":I
    .end local v6    # "checkWeight":I
    .end local v7    # "codeSet":I
    .end local v8    # "codeWidth":I
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v17    # "patterns":Ljava/util/Collection;, "Ljava/util/Collection<[I>;"
    .end local v18    # "pos":I
    .end local v19    # "position":I
    .end local v21    # "result":[Z
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .local v4, "c":C
    const/16 v23, 0x20

    .line 75
    move/from16 v0, v23

    if-ge v4, v0, :cond_6

    .line 76
    :cond_5
    packed-switch v4, :pswitch_data_0

    .line 83
    new-instance v23, Ljava/lang/IllegalArgumentException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Bad character in input: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v23

    :cond_6
    const/16 v23, 0x7e

    .line 75
    move/from16 v0, v23

    if-gt v4, v0, :cond_5

    .line 73
    :pswitch_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .end local v4    # "c":C
    .restart local v5    # "checkSum":I
    .restart local v6    # "checkWeight":I
    .restart local v7    # "codeSet":I
    .restart local v17    # "patterns":Ljava/util/Collection;, "Ljava/util/Collection<[I>;"
    .restart local v19    # "position":I
    :cond_7
    const/16 v23, 0x63

    .line 96
    move/from16 v0, v23

    if-eq v7, v0, :cond_8

    const/16 v20, 0x4

    .line 98
    .local v20, "requiredDigitCount":I
    :goto_3
    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/google/zxing/oned/Code128Writer;->isDigits(Ljava/lang/CharSequence;II)Z

    move-result v23

    if-nez v23, :cond_9

    const/16 v14, 0x64

    .line 106
    .local v14, "newCodeSet":I
    :goto_4
    if-eq v14, v7, :cond_a

    .line 138
    if-eqz v7, :cond_c

    .line 148
    move/from16 v16, v14

    .line 150
    .local v16, "patternIndex":I
    :goto_5
    move v7, v14

    .line 154
    :goto_6
    sget-object v23, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v23, v23, v16

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 157
    mul-int v23, v16, v6

    add-int v5, v5, v23

    .line 158
    if-eqz v19, :cond_2

    .line 159
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .end local v14    # "newCodeSet":I
    .end local v16    # "patternIndex":I
    .end local v20    # "requiredDigitCount":I
    :cond_8
    const/16 v20, 0x2

    .line 96
    goto :goto_3

    .restart local v20    # "requiredDigitCount":I
    :cond_9
    const/16 v14, 0x63

    .line 99
    .restart local v14    # "newCodeSet":I
    goto :goto_4

    :cond_a
    const/16 v23, 0x64

    .line 108
    move/from16 v0, v23

    if-eq v7, v0, :cond_b

    .line 112
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v23

    packed-switch v23, :pswitch_data_1

    .line 130
    add-int/lit8 v23, v19, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 131
    .restart local v16    # "patternIndex":I
    add-int/lit8 v19, v19, 0x2

    goto :goto_6

    .line 109
    .end local v16    # "patternIndex":I
    :cond_b
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v23

    add-int/lit8 v16, v23, -0x20

    .line 110
    .restart local v16    # "patternIndex":I
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .end local v16    # "patternIndex":I
    :pswitch_1
    const/16 v16, 0x66

    .line 115
    .restart local v16    # "patternIndex":I
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .end local v16    # "patternIndex":I
    :pswitch_2
    const/16 v16, 0x61

    .line 119
    .restart local v16    # "patternIndex":I
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .end local v16    # "patternIndex":I
    :pswitch_3
    const/16 v16, 0x60

    .line 123
    .restart local v16    # "patternIndex":I
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .end local v16    # "patternIndex":I
    :pswitch_4
    const/16 v16, 0x64

    .line 127
    .restart local v16    # "patternIndex":I
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .end local v16    # "patternIndex":I
    :cond_c
    const/16 v23, 0x64

    .line 140
    move/from16 v0, v23

    if-eq v14, v0, :cond_d

    const/16 v16, 0x69

    .line 144
    .restart local v16    # "patternIndex":I
    goto :goto_5

    .end local v16    # "patternIndex":I
    :cond_d
    const/16 v16, 0x68

    .line 141
    .restart local v16    # "patternIndex":I
    goto :goto_5

    .line 172
    .end local v14    # "newCodeSet":I
    .end local v16    # "patternIndex":I
    .end local v20    # "requiredDigitCount":I
    .restart local v8    # "codeWidth":I
    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [I

    .line 173
    .local v15, "pattern":[I
    move-object v3, v15

    .local v3, "arr$":[I
    array-length v12, v3

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_7
    if-ge v10, v12, :cond_3

    aget v22, v3, v10

    .line 174
    .local v22, "width":I
    add-int v8, v8, v22

    .line 173
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 181
    .end local v3    # "arr$":[I
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    .end local v15    # "pattern":[I
    .end local v22    # "width":I
    .restart local v18    # "pos":I
    .restart local v21    # "result":[Z
    :cond_f
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [I

    .line 182
    .restart local v15    # "pattern":[I
    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v23

    invoke-static {v0, v1, v15, v2}, Lcom/google/zxing/oned/Code128Writer;->appendPattern([ZI[IZ)I

    move-result v23

    add-int v18, v18, v23

    goto/16 :goto_2

    .line 76
    :pswitch_data_0
    .packed-switch 0xf1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 112
    :pswitch_data_1
    .packed-switch 0xf1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
