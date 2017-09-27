.class public final Lcom/google/zxing/aztec/AztecWriter;
.super Ljava/lang/Object;
.source "AztecWriter.java"

# interfaces
.implements Lcom/google/zxing/Writer;


# static fields
.field private static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "ISO-8859-1"

    .line 31
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/AztecWriter;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/nio/charset/Charset;II)Lcom/google/zxing/common/BitMatrix;
    .locals 4
    .param p0, "contents"    # Ljava/lang/String;
    .param p1, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "charset"    # Ljava/nio/charset/Charset;
    .param p5, "eccPercent"    # I
    .param p6, "layers"    # I

    .prologue
    .line 55
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    if-ne p1, v1, :cond_0

    .line 58
    invoke-virtual {p0, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1, p5, p6}, Lcom/google/zxing/aztec/encoder/Encoder;->encode([BII)Lcom/google/zxing/aztec/encoder/AztecCode;

    move-result-object v0

    .line 59
    .local v0, "aztec":Lcom/google/zxing/aztec/encoder/AztecCode;
    invoke-static {v0, p2, p3}, Lcom/google/zxing/aztec/AztecWriter;->renderResult(Lcom/google/zxing/aztec/encoder/AztecCode;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    return-object v1

    .line 56
    .end local v0    # "aztec":Lcom/google/zxing/aztec/encoder/AztecCode;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can only encode AZTEC, but got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static renderResult(Lcom/google/zxing/aztec/encoder/AztecCode;II)Lcom/google/zxing/common/BitMatrix;
    .locals 16
    .param p0, "code"    # Lcom/google/zxing/aztec/encoder/AztecCode;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/aztec/encoder/AztecCode;->getMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    .line 64
    .local v1, "input":Lcom/google/zxing/common/BitMatrix;
    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    .line 68
    .local v3, "inputWidth":I
    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    .line 69
    .local v2, "inputHeight":I
    move/from16 v0, p1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 70
    .local v10, "outputWidth":I
    move/from16 v0, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 72
    .local v9, "outputHeight":I
    div-int v14, v10, v3

    div-int v15, v9, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 73
    .local v7, "multiple":I
    mul-int v14, v3, v7

    sub-int v14, v10, v14

    div-int/lit8 v6, v14, 0x2

    .line 74
    .local v6, "leftPadding":I
    mul-int v14, v2, v7

    sub-int v14, v9, v14

    div-int/lit8 v13, v14, 0x2

    .line 76
    .local v13, "topPadding":I
    new-instance v8, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v8, v10, v9}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .local v8, "output":Lcom/google/zxing/common/BitMatrix;
    const/4 v5, 0x0

    .line 78
    .local v5, "inputY":I
    move v12, v13

    .local v12, "outputY":I
    :goto_0
    if-lt v5, v2, :cond_1

    .line 86
    return-object v8

    .line 65
    .end local v2    # "inputHeight":I
    .end local v3    # "inputWidth":I
    .end local v5    # "inputY":I
    .end local v6    # "leftPadding":I
    .end local v7    # "multiple":I
    .end local v8    # "output":Lcom/google/zxing/common/BitMatrix;
    .end local v9    # "outputHeight":I
    .end local v10    # "outputWidth":I
    .end local v12    # "outputY":I
    .end local v13    # "topPadding":I
    :cond_0
    new-instance v14, Ljava/lang/IllegalStateException;

    invoke-direct {v14}, Ljava/lang/IllegalStateException;-><init>()V

    throw v14

    .restart local v2    # "inputHeight":I
    .restart local v3    # "inputWidth":I
    .restart local v5    # "inputY":I
    .restart local v6    # "leftPadding":I
    .restart local v7    # "multiple":I
    .restart local v8    # "output":Lcom/google/zxing/common/BitMatrix;
    .restart local v9    # "outputHeight":I
    .restart local v10    # "outputWidth":I
    .restart local v12    # "outputY":I
    .restart local v13    # "topPadding":I
    :cond_1
    const/4 v4, 0x0

    .line 80
    .local v4, "inputX":I
    move v11, v6

    .local v11, "outputX":I
    :goto_1
    if-lt v4, v3, :cond_2

    .line 78
    add-int/lit8 v5, v5, 0x1

    add-int/2addr v12, v7

    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {v1, v4, v5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v14

    if-nez v14, :cond_3

    .line 80
    :goto_2
    add-int/lit8 v4, v4, 0x1

    add-int/2addr v11, v7

    goto :goto_1

    .line 82
    :cond_3
    invoke-virtual {v8, v11, v12, v7, v7}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    goto :goto_2
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 10
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

    .prologue
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    const/4 v1, 0x0

    .line 40
    if-eqz p5, :cond_0

    sget-object v0, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 41
    .local v7, "charset":Ljava/lang/String;
    :goto_0
    if-eqz p5, :cond_1

    sget-object v0, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    move-object v8, v0

    .line 42
    .local v8, "eccPercent":Ljava/lang/Number;
    :goto_1
    if-eqz p5, :cond_2

    sget-object v0, Lcom/google/zxing/EncodeHintType;->AZTEC_LAYERS:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    move-object v9, v0

    .line 43
    .local v9, "layers":Ljava/lang/Number;
    :goto_2
    if-eqz v7, :cond_3

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    :goto_3
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v5

    :goto_4
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v6

    :goto_5
    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    invoke-static/range {v0 .. v6}, Lcom/google/zxing/aztec/AztecWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/nio/charset/Charset;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0

    .end local v7    # "charset":Ljava/lang/String;
    .end local v8    # "eccPercent":Ljava/lang/Number;
    .end local v9    # "layers":Ljava/lang/Number;
    :cond_0
    move-object v7, v1

    .line 40
    goto :goto_0

    .restart local v7    # "charset":Ljava/lang/String;
    :cond_1
    move-object v8, v1

    .line 41
    goto :goto_1

    .restart local v8    # "eccPercent":Ljava/lang/Number;
    :cond_2
    move-object v9, v1

    .line 42
    goto :goto_2

    .line 43
    .restart local v9    # "layers":Ljava/lang/Number;
    :cond_3
    sget-object v4, Lcom/google/zxing/aztec/AztecWriter;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    goto :goto_3

    :cond_4
    const/16 v5, 0x21

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    goto :goto_5
.end method
