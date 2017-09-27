.class final Lcom/google/zxing/datamatrix/encoder/TextEncoder;
.super Lcom/google/zxing/datamatrix/encoder/C40Encoder;
.source "TextEncoder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;-><init>()V

    return-void
.end method


# virtual methods
.method encodeChar(CLjava/lang/StringBuilder;)I
    .locals 5
    .param p1, "c"    # C
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x2

    const/16 v1, 0x20

    .line 28
    if-eq p1, v1, :cond_8

    const/16 v1, 0x30

    .line 32
    if-ge p1, v1, :cond_9

    :cond_0
    const/16 v1, 0x61

    .line 36
    if-ge p1, v1, :cond_a

    .line 40
    :cond_1
    if-gez p1, :cond_b

    :cond_2
    const/16 v1, 0x21

    .line 45
    if-ge p1, v1, :cond_c

    :cond_3
    const/16 v1, 0x3a

    .line 50
    if-ge p1, v1, :cond_d

    :cond_4
    const/16 v1, 0x5b

    .line 55
    if-ge p1, v1, :cond_e

    :cond_5
    const/16 v1, 0x60

    .line 60
    if-eq p1, v1, :cond_f

    const/16 v1, 0x41

    .line 65
    if-ge p1, v1, :cond_10

    :cond_6
    const/16 v1, 0x7b

    .line 70
    if-ge p1, v1, :cond_11

    :cond_7
    const/16 v1, 0x80

    .line 75
    if-ge p1, v1, :cond_12

    .line 81
    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->illegalCharacter(C)V

    const/4 v1, -0x1

    .line 82
    return v1

    .line 29
    :cond_8
    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    return v3

    :cond_9
    const/16 v1, 0x39

    .line 32
    if-gt p1, v1, :cond_0

    .line 33
    add-int/lit8 v1, p1, -0x30

    add-int/lit8 v1, v1, 0x4

    int-to-char v1, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    return v3

    :cond_a
    const/16 v1, 0x7a

    .line 36
    if-gt p1, v1, :cond_1

    .line 37
    add-int/lit8 v1, p1, -0x61

    add-int/lit8 v1, v1, 0xe

    int-to-char v1, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    return v3

    :cond_b
    const/16 v1, 0x1f

    .line 40
    if-gt p1, v1, :cond_2

    .line 41
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    return v2

    :cond_c
    const/16 v1, 0x2f

    .line 45
    if-gt p1, v1, :cond_3

    .line 46
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    add-int/lit8 v1, p1, -0x21

    int-to-char v1, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    return v2

    :cond_d
    const/16 v1, 0x40

    .line 50
    if-gt p1, v1, :cond_4

    .line 51
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    add-int/lit8 v1, p1, -0x3a

    add-int/lit8 v1, v1, 0xf

    int-to-char v1, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    return v2

    :cond_e
    const/16 v1, 0x5f

    .line 55
    if-gt p1, v1, :cond_5

    .line 56
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    add-int/lit8 v1, p1, -0x5b

    add-int/lit8 v1, v1, 0x16

    int-to-char v1, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    return v2

    .line 61
    :cond_f
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    add-int/lit8 v1, p1, -0x60

    int-to-char v1, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    return v2

    :cond_10
    const/16 v1, 0x5a

    .line 65
    if-gt p1, v1, :cond_6

    .line 66
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    add-int/lit8 v1, p1, -0x41

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    return v2

    :cond_11
    const/16 v1, 0x7f

    .line 70
    if-gt p1, v1, :cond_7

    .line 71
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    add-int/lit8 v1, p1, -0x7b

    add-int/lit8 v1, v1, 0x1b

    int-to-char v1, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    return v2

    :cond_12
    const-string/jumbo v1, "\u0001\u001e"

    .line 76
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    add-int/lit8 v1, p1, -0x80

    int-to-char v1, v1

    invoke-virtual {p0, v1, p2}, Lcom/google/zxing/datamatrix/encoder/TextEncoder;->encodeChar(CLjava/lang/StringBuilder;)I

    move-result v1

    add-int/lit8 v0, v1, 0x2

    .line 79
    .local v0, "len":I
    return v0
.end method

.method public getEncodingMode()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 23
    return v0
.end method
