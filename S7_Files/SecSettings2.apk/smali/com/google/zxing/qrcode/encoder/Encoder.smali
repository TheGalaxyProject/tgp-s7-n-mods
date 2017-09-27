.class public final Lcom/google/zxing/qrcode/encoder/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/qrcode/encoder/Encoder$1;
    }
.end annotation


# static fields
.field private static final ALPHANUMERIC_TABLE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/16 v0, 0x60

    .line 41
    new-array v0, v0, [I

    aput v3, v0, v4

    aput v3, v0, v5

    aput v3, v0, v6

    aput v3, v0, v7

    const/4 v1, 0x4

    aput v3, v0, v1

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/4 v1, 0x7

    aput v3, v0, v1

    const/16 v1, 0x8

    aput v3, v0, v1

    const/16 v1, 0x9

    aput v3, v0, v1

    const/16 v1, 0xa

    aput v3, v0, v1

    const/16 v1, 0xb

    aput v3, v0, v1

    const/16 v1, 0xc

    aput v3, v0, v1

    const/16 v1, 0xd

    aput v3, v0, v1

    const/16 v1, 0xe

    aput v3, v0, v1

    const/16 v1, 0xf

    aput v3, v0, v1

    const/16 v1, 0x10

    aput v3, v0, v1

    const/16 v1, 0x11

    aput v3, v0, v1

    const/16 v1, 0x12

    aput v3, v0, v1

    const/16 v1, 0x13

    aput v3, v0, v1

    const/16 v1, 0x14

    aput v3, v0, v1

    const/16 v1, 0x15

    aput v3, v0, v1

    const/16 v1, 0x16

    aput v3, v0, v1

    const/16 v1, 0x17

    aput v3, v0, v1

    const/16 v1, 0x18

    aput v3, v0, v1

    const/16 v1, 0x19

    aput v3, v0, v1

    const/16 v1, 0x1a

    aput v3, v0, v1

    const/16 v1, 0x1b

    aput v3, v0, v1

    const/16 v1, 0x1c

    aput v3, v0, v1

    const/16 v1, 0x1d

    aput v3, v0, v1

    const/16 v1, 0x1e

    aput v3, v0, v1

    const/16 v1, 0x1f

    aput v3, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x24

    aput v2, v0, v1

    const/16 v1, 0x21

    aput v3, v0, v1

    const/16 v1, 0x22

    aput v3, v0, v1

    const/16 v1, 0x23

    aput v3, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x25

    aput v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x26

    aput v2, v0, v1

    const/16 v1, 0x26

    aput v3, v0, v1

    const/16 v1, 0x27

    aput v3, v0, v1

    const/16 v1, 0x28

    aput v3, v0, v1

    const/16 v1, 0x29

    aput v3, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x27

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x28

    aput v2, v0, v1

    const/16 v1, 0x2c

    aput v3, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x29

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x2a

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x2b

    aput v2, v0, v1

    const/16 v1, 0x30

    aput v4, v0, v1

    const/16 v1, 0x31

    aput v5, v0, v1

    const/16 v1, 0x32

    aput v6, v0, v1

    const/16 v1, 0x33

    aput v7, v0, v1

    const/16 v1, 0x34

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x35

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x36

    const/4 v2, 0x6

    aput v2, v0, v1

    const/16 v1, 0x37

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x9

    aput v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x2c

    aput v2, v0, v1

    const/16 v1, 0x3b

    aput v3, v0, v1

    const/16 v1, 0x3c

    aput v3, v0, v1

    const/16 v1, 0x3d

    aput v3, v0, v1

    const/16 v1, 0x3e

    aput v3, v0, v1

    const/16 v1, 0x3f

    aput v3, v0, v1

    const/16 v1, 0x40

    aput v3, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0xf

    aput v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x11

    aput v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x12

    aput v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x13

    aput v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0x14

    aput v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x15

    aput v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x16

    aput v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0x17

    aput v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0x18

    aput v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x19

    aput v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x1a

    aput v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x1b

    aput v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x1c

    aput v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x1d

    aput v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x1e

    aput v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x1f

    aput v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x21

    aput v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x22

    aput v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x23

    aput v2, v0, v1

    const/16 v1, 0x5b

    aput v3, v0, v1

    const/16 v1, 0x5c

    aput v3, v0, v1

    const/16 v1, 0x5d

    aput v3, v0, v1

    const/16 v1, 0x5e

    aput v3, v0, v1

    const/16 v1, 0x5f

    aput v3, v0, v1

    sput-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method static append8BitBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V
    .locals 7
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 541
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 545
    .local v2, "bytes":[B
    move-object v0, v2

    .local v0, "arr$":[B
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-lt v3, v4, :cond_0

    .line 548
    return-void

    .line 544
    .end local v0    # "arr$":[B
    .end local v2    # "bytes":[B
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :catch_0
    move-exception v5

    .line 543
    .local v5, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v6, Lcom/google/zxing/WriterException;

    invoke-direct {v6, v5}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 545
    .end local v5    # "uee":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "arr$":[B
    .restart local v2    # "bytes":[B
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_0
    aget-byte v1, v0, v3

    .local v1, "b":B
    const/16 v6, 0x8

    .line 546
    invoke-virtual {p1, v1, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 545
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method static appendAlphanumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V
    .locals 7
    .param p0, "content"    # Ljava/lang/CharSequence;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 514
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .local v3, "length":I
    const/4 v2, 0x0

    .line 516
    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 535
    return-void

    .line 517
    :cond_0
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v0

    .line 518
    .local v0, "code1":I
    if-eq v0, v6, :cond_1

    .line 521
    add-int/lit8 v4, v2, 0x1

    if-lt v4, v3, :cond_2

    const/4 v4, 0x6

    .line 531
    invoke-virtual {p1, v0, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 532
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 519
    :cond_1
    new-instance v4, Lcom/google/zxing/WriterException;

    invoke-direct {v4}, Lcom/google/zxing/WriterException;-><init>()V

    throw v4

    .line 522
    :cond_2
    add-int/lit8 v4, v2, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v1

    .line 523
    .local v1, "code2":I
    if-eq v1, v6, :cond_3

    .line 527
    mul-int/lit8 v4, v0, 0x2d

    add-int/2addr v4, v1

    const/16 v5, 0xb

    invoke-virtual {p1, v4, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 528
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 524
    :cond_3
    new-instance v4, Lcom/google/zxing/WriterException;

    invoke-direct {v4}, Lcom/google/zxing/WriterException;-><init>()V

    throw v4
.end method

.method static appendBytes(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "mode"    # Lcom/google/zxing/qrcode/decoder/Mode;
    .param p2, "bits"    # Lcom/google/zxing/common/BitArray;
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 471
    sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder$1;->$SwitchMap$com$google$zxing$qrcode$decoder$Mode:[I

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 485
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :pswitch_0
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendNumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V

    .line 487
    :goto_0
    return-void

    .line 476
    :pswitch_1
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendAlphanumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V

    goto :goto_0

    .line 479
    :pswitch_2
    invoke-static {p0, p2, p3}, Lcom/google/zxing/qrcode/encoder/Encoder;->append8BitBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V

    goto :goto_0

    .line 482
    :pswitch_3
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendKanjiBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;)V

    goto :goto_0

    .line 471
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static appendECI(Lcom/google/zxing/common/CharacterSetECI;Lcom/google/zxing/common/BitArray;)V
    .locals 2
    .param p0, "eci"    # Lcom/google/zxing/common/CharacterSetECI;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;

    .prologue
    .line 577
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 579
    invoke-virtual {p0}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 580
    return-void
.end method

.method static appendKanjiBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;)V
    .locals 12
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const v11, 0x8140

    :try_start_0
    const-string/jumbo v9, "Shift_JIS"

    .line 553
    invoke-virtual {p0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 557
    .local v2, "bytes":[B
    array-length v6, v2

    .local v6, "length":I
    const/4 v5, 0x0

    .line 558
    .local v5, "i":I
    :goto_0
    if-lt v5, v6, :cond_0

    .line 574
    return-void

    .line 556
    .end local v2    # "bytes":[B
    .end local v5    # "i":I
    .end local v6    # "length":I
    :catch_0
    move-exception v8

    .line 555
    .local v8, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v9, Lcom/google/zxing/WriterException;

    invoke-direct {v9, v8}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 559
    .end local v8    # "uee":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "bytes":[B
    .restart local v5    # "i":I
    .restart local v6    # "length":I
    :cond_0
    aget-byte v9, v2, v5

    and-int/lit16 v0, v9, 0xff

    .line 560
    .local v0, "byte1":I
    add-int/lit8 v9, v5, 0x1

    aget-byte v9, v2, v9

    and-int/lit16 v1, v9, 0xff

    .line 561
    .local v1, "byte2":I
    shl-int/lit8 v9, v0, 0x8

    or-int v3, v9, v1

    .local v3, "code":I
    const/4 v7, -0x1

    .line 563
    .local v7, "subtracted":I
    if-ge v3, v11, :cond_3

    :cond_1
    const v9, 0xe040

    .line 565
    if-ge v3, v9, :cond_4

    :cond_2
    :goto_1
    const/4 v9, -0x1

    .line 568
    if-eq v7, v9, :cond_5

    .line 571
    shr-int/lit8 v9, v7, 0x8

    mul-int/lit16 v9, v9, 0xc0

    and-int/lit16 v10, v7, 0xff

    add-int v4, v9, v10

    .local v4, "encoded":I
    const/16 v9, 0xd

    .line 572
    invoke-virtual {p1, v4, v9}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 558
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .end local v4    # "encoded":I
    :cond_3
    const v9, 0x9ffc

    .line 563
    if-gt v3, v9, :cond_1

    .line 564
    sub-int v7, v3, v11

    goto :goto_1

    :cond_4
    const v9, 0xebbf

    .line 565
    if-gt v3, v9, :cond_2

    const v9, 0xc140

    .line 566
    sub-int v7, v3, v9

    goto :goto_1

    .line 569
    :cond_5
    new-instance v9, Lcom/google/zxing/WriterException;

    const-string/jumbo v10, "Invalid byte sequence"

    invoke-direct {v9, v10}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method static appendLengthInfo(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V
    .locals 5
    .param p0, "numLetters"    # I
    .param p1, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p2, "mode"    # Lcom/google/zxing/qrcode/decoder/Mode;
    .param p3, "bits"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 457
    invoke-virtual {p2, p1}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v0

    .line 458
    .local v0, "numBits":I
    shl-int v1, v4, v0

    if-ge p0, v1, :cond_0

    .line 461
    invoke-virtual {p3, p0, v0}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 462
    return-void

    .line 459
    :cond_0
    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is bigger than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    shl-int v3, v4, v0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static appendModeInfo(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V
    .locals 2
    .param p0, "mode"    # Lcom/google/zxing/qrcode/decoder/Mode;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 450
    return-void
.end method

.method static appendNumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V
    .locals 7
    .param p0, "content"    # Ljava/lang/CharSequence;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;

    .prologue
    .line 490
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, "length":I
    const/4 v0, 0x0

    .line 492
    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 511
    return-void

    .line 493
    :cond_0
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v2, v5, -0x30

    .line 494
    .local v2, "num1":I
    add-int/lit8 v5, v0, 0x2

    if-lt v5, v1, :cond_1

    .line 500
    add-int/lit8 v5, v0, 0x1

    if-lt v5, v1, :cond_2

    const/4 v5, 0x4

    .line 507
    invoke-virtual {p1, v2, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 508
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 496
    :cond_1
    add-int/lit8 v5, v0, 0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v3, v5, -0x30

    .line 497
    .local v3, "num2":I
    add-int/lit8 v5, v0, 0x2

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v4, v5, -0x30

    .line 498
    .local v4, "num3":I
    mul-int/lit8 v5, v2, 0x64

    mul-int/lit8 v6, v3, 0xa

    add-int/2addr v5, v6

    add-int/2addr v5, v4

    const/16 v6, 0xa

    invoke-virtual {p1, v5, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 499
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 502
    .end local v3    # "num2":I
    .end local v4    # "num3":I
    :cond_2
    add-int/lit8 v5, v0, 0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v3, v5, -0x30

    .line 503
    .restart local v3    # "num2":I
    mul-int/lit8 v5, v2, 0xa

    add-int/2addr v5, v3

    const/4 v6, 0x7

    invoke-virtual {p1, v5, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 504
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private static calculateMaskPenalty(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 2
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .prologue
    .line 58
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v0

    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule2(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule3(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule4(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static chooseMaskPattern(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 5
    .param p0, "bits"    # Lcom/google/zxing/common/BitArray;
    .param p1, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .param p2, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p3, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const v2, 0x7fffffff

    .local v2, "minPenalty":I
    const/4 v0, -0x1

    .local v0, "bestMaskPattern":I
    const/4 v1, 0x0

    .local v1, "maskPattern":I
    :goto_0
    const/16 v4, 0x8

    .line 241
    if-lt v1, v4, :cond_0

    .line 249
    return v0

    .line 242
    :cond_0
    invoke-static {p0, p1, p2, v1, p3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 243
    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/Encoder;->calculateMaskPenalty(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v3

    .line 244
    .local v3, "penalty":I
    if-lt v3, v2, :cond_1

    .line 241
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 245
    :cond_1
    move v2, v3

    .line 246
    move v0, v1

    goto :goto_1
.end method

.method private static chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;
    .locals 6
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v4, "Shift_JIS"

    .line 188
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 192
    const/4 v2, 0x0

    .line 193
    .local v2, "hasNumeric":Z
    const/4 v1, 0x0

    .local v1, "hasAlphanumeric":Z
    const/4 v3, 0x0

    .line 194
    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 204
    if-nez v1, :cond_6

    .line 207
    if-nez v2, :cond_7

    .line 210
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object v4

    .line 190
    .end local v1    # "hasAlphanumeric":Z
    .end local v2    # "hasNumeric":Z
    .end local v3    # "i":I
    :cond_0
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/Encoder;->isOnlyDoubleByteKanji(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    :goto_1
    return-object v4

    :cond_1
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_1

    .line 195
    .restart local v1    # "hasAlphanumeric":Z
    .restart local v2    # "hasNumeric":Z
    .restart local v3    # "i":I
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "c":C
    const/16 v4, 0x30

    .line 196
    if-ge v0, v4, :cond_4

    .line 198
    :cond_3
    invoke-static {v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5

    .line 201
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object v4

    :cond_4
    const/16 v4, 0x39

    .line 196
    if-gt v0, v4, :cond_3

    .line 197
    const/4 v2, 0x1

    .line 194
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 199
    :cond_5
    const/4 v1, 0x1

    goto :goto_2

    .line 205
    .end local v0    # "c":C
    :cond_6
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object v4

    .line 208
    :cond_7
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object v4
.end method

.method private static chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;
    .locals 9
    .param p0, "numInputBits"    # I
    .param p1, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .local v6, "versionNum":I
    :goto_0
    const/16 v7, 0x28

    .line 254
    if-le v6, v7, :cond_0

    .line 268
    new-instance v7, Lcom/google/zxing/WriterException;

    const-string/jumbo v8, "Data too big"

    invoke-direct {v7, v8}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 255
    :cond_0
    invoke-static {v6}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v5

    .line 257
    .local v5, "version":Lcom/google/zxing/qrcode/decoder/Version;
    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v1

    .line 259
    .local v1, "numBytes":I
    invoke-virtual {v5, p1}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v0

    .line 260
    .local v0, "ecBlocks":Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getTotalECCodewords()I

    move-result v3

    .line 262
    .local v3, "numEcBytes":I
    sub-int v2, v1, v3

    .line 263
    .local v2, "numDataBytes":I
    add-int/lit8 v7, p0, 0x7

    div-int/lit8 v4, v7, 0x8

    .line 264
    .local v4, "totalInputBytes":I
    if-ge v2, v4, :cond_1

    .line 254
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 265
    :cond_1
    return-object v5
.end method

.method public static encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;
    .locals 22
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/qrcode/encoder/QRCode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 84
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    if-eqz p2, :cond_1

    sget-object v20, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v7, v20

    .line 85
    .local v7, "encoding":Ljava/lang/String;
    :goto_0
    if-eqz v7, :cond_2

    .line 91
    :goto_1
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v13

    .line 95
    .local v13, "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    new-instance v10, Lcom/google/zxing/common/BitArray;

    invoke-direct {v10}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 98
    .local v10, "headerBits":Lcom/google/zxing/common/BitArray;
    sget-object v20, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object/from16 v0, v20

    if-eq v13, v0, :cond_3

    .line 106
    :cond_0
    :goto_2
    invoke-static {v13, v10}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendModeInfo(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V

    .line 110
    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 111
    .local v3, "dataBits":Lcom/google/zxing/common/BitArray;
    move-object/from16 v0, p0

    invoke-static {v0, v13, v3, v7}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendBytes(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v10}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v20

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v21

    add-int v20, v20, v21

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v21

    add-int v16, v20, v21

    .line 120
    .local v16, "provisionalBitsNeeded":I
    move/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v17

    .line 124
    .local v17, "provisionalVersion":Lcom/google/zxing/qrcode/decoder/Version;
    invoke-virtual {v10}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v20

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v21

    add-int v20, v20, v21

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v21

    add-int v2, v20, v21

    .line 127
    .local v2, "bitsNeeded":I
    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v19

    .line 129
    .local v19, "version":Lcom/google/zxing/qrcode/decoder/Version;
    new-instance v9, Lcom/google/zxing/common/BitArray;

    invoke-direct {v9}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 130
    .local v9, "headerAndDataBits":Lcom/google/zxing/common/BitArray;
    invoke-virtual {v9, v10}, Lcom/google/zxing/common/BitArray;->appendBitArray(Lcom/google/zxing/common/BitArray;)V

    .line 132
    sget-object v20, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object/from16 v0, v20

    if-eq v13, v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    .line 133
    .local v15, "numLetters":I
    :goto_3
    move-object/from16 v0, v19

    invoke-static {v15, v0, v13, v9}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendLengthInfo(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V

    .line 135
    invoke-virtual {v9, v3}, Lcom/google/zxing/common/BitArray;->appendBitArray(Lcom/google/zxing/common/BitArray;)V

    .line 137
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v5

    .line 138
    .local v5, "ecBlocks":Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v20

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getTotalECCodewords()I

    move-result v21

    sub-int v14, v20, v21

    .line 141
    .local v14, "numDataBytes":I
    invoke-static {v14, v9}, Lcom/google/zxing/qrcode/encoder/Encoder;->terminateBits(ILcom/google/zxing/common/BitArray;)V

    .line 144
    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v20

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getNumBlocks()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v9, v0, v14, v1}, Lcom/google/zxing/qrcode/encoder/Encoder;->interleaveWithECBytes(Lcom/google/zxing/common/BitArray;III)Lcom/google/zxing/common/BitArray;

    move-result-object v8

    .line 149
    .local v8, "finalBits":Lcom/google/zxing/common/BitArray;
    new-instance v18, Lcom/google/zxing/qrcode/encoder/QRCode;

    invoke-direct/range {v18 .. v18}, Lcom/google/zxing/qrcode/encoder/QRCode;-><init>()V

    .line 151
    .local v18, "qrCode":Lcom/google/zxing/qrcode/encoder/QRCode;
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/zxing/qrcode/encoder/QRCode;->setECLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V

    .line 152
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMode(Lcom/google/zxing/qrcode/decoder/Mode;)V

    .line 153
    invoke-virtual/range {v18 .. v19}, Lcom/google/zxing/qrcode/encoder/QRCode;->setVersion(Lcom/google/zxing/qrcode/decoder/Version;)V

    .line 156
    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v4

    .line 157
    .local v4, "dimension":I
    new-instance v12, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-direct {v12, v4, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(II)V

    .line 158
    .local v12, "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v8, v0, v1, v12}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseMaskPattern(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v11

    .line 159
    .local v11, "maskPattern":I
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMaskPattern(I)V

    .line 162
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v8, v0, v1, v11, v12}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 163
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 165
    return-object v18

    .end local v2    # "bitsNeeded":I
    .end local v3    # "dataBits":Lcom/google/zxing/common/BitArray;
    .end local v4    # "dimension":I
    .end local v5    # "ecBlocks":Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    .end local v7    # "encoding":Ljava/lang/String;
    .end local v8    # "finalBits":Lcom/google/zxing/common/BitArray;
    .end local v9    # "headerAndDataBits":Lcom/google/zxing/common/BitArray;
    .end local v10    # "headerBits":Lcom/google/zxing/common/BitArray;
    .end local v11    # "maskPattern":I
    .end local v12    # "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .end local v13    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .end local v14    # "numDataBytes":I
    .end local v15    # "numLetters":I
    .end local v16    # "provisionalBitsNeeded":I
    .end local v17    # "provisionalVersion":Lcom/google/zxing/qrcode/decoder/Version;
    .end local v18    # "qrCode":Lcom/google/zxing/qrcode/encoder/QRCode;
    .end local v19    # "version":Lcom/google/zxing/qrcode/decoder/Version;
    :cond_1
    const/4 v7, 0x0

    .line 84
    goto/16 :goto_0

    .restart local v7    # "encoding":Ljava/lang/String;
    :cond_2
    const-string/jumbo v7, "ISO-8859-1"

    .line 86
    goto/16 :goto_1

    .restart local v10    # "headerBits":Lcom/google/zxing/common/BitArray;
    .restart local v13    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    :cond_3
    const-string/jumbo v20, "ISO-8859-1"

    .line 98
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 99
    invoke-static {v7}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByName(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v6

    .line 100
    .local v6, "eci":Lcom/google/zxing/common/CharacterSetECI;
    if-eqz v6, :cond_0

    .line 101
    invoke-static {v6, v10}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendECI(Lcom/google/zxing/common/CharacterSetECI;Lcom/google/zxing/common/BitArray;)V

    goto/16 :goto_2

    .line 132
    .end local v6    # "eci":Lcom/google/zxing/common/CharacterSetECI;
    .restart local v2    # "bitsNeeded":I
    .restart local v3    # "dataBits":Lcom/google/zxing/common/BitArray;
    .restart local v9    # "headerAndDataBits":Lcom/google/zxing/common/BitArray;
    .restart local v16    # "provisionalBitsNeeded":I
    .restart local v17    # "provisionalVersion":Lcom/google/zxing/qrcode/decoder/Version;
    .restart local v19    # "version":Lcom/google/zxing/qrcode/decoder/Version;
    :cond_4
    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v15

    goto/16 :goto_3
.end method

.method static generateECBytes([BI)[B
    .locals 6
    .param p0, "dataBytes"    # [B
    .param p1, "numEcBytesInBlock"    # I

    .prologue
    .line 431
    array-length v2, p0

    .line 432
    .local v2, "numDataBytes":I
    add-int v4, v2, p1

    new-array v3, v4, [I

    .local v3, "toEncode":[I
    const/4 v1, 0x0

    .line 433
    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 436
    new-instance v4, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;

    sget-object v5, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v4, v5}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    invoke-virtual {v4, v3, p1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->encode([II)V

    .line 438
    new-array v0, p1, [B

    .local v0, "ecBytes":[B
    const/4 v1, 0x0

    .line 439
    :goto_1
    if-lt v1, p1, :cond_1

    .line 442
    return-object v0

    .line 434
    .end local v0    # "ecBytes":[B
    :cond_0
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v1

    .line 433
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 440
    .restart local v0    # "ecBytes":[B
    :cond_1
    add-int v4, v2, v1

    aget v4, v3, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 439
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static getAlphanumericCode(I)I
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 173
    sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    array-length v0, v0

    if-lt p0, v0, :cond_0

    const/4 v0, -0x1

    .line 176
    return v0

    .line 174
    :cond_0
    sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    aget v0, v0, p0

    return v0
.end method

.method static getNumDataBytesAndNumECBytesForBlockID(IIII[I[I)V
    .locals 10
    .param p0, "numTotalBytes"    # I
    .param p1, "numDataBytes"    # I
    .param p2, "numRSBlocks"    # I
    .param p3, "blockID"    # I
    .param p4, "numDataBytesInBlock"    # [I
    .param p5, "numECBytesInBlock"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 312
    if-ge p3, p2, :cond_0

    .line 316
    rem-int v5, p0, p2

    .line 318
    .local v5, "numRsBlocksInGroup2":I
    sub-int v4, p2, v5

    .line 320
    .local v4, "numRsBlocksInGroup1":I
    div-int v6, p0, p2

    .line 322
    .local v6, "numTotalBytesInGroup1":I
    add-int/lit8 v7, v6, 0x1

    .line 324
    .local v7, "numTotalBytesInGroup2":I
    div-int v0, p1, p2

    .line 326
    .local v0, "numDataBytesInGroup1":I
    add-int/lit8 v1, v0, 0x1

    .line 328
    .local v1, "numDataBytesInGroup2":I
    sub-int v2, v6, v0

    .line 330
    .local v2, "numEcBytesInGroup1":I
    sub-int v3, v7, v1

    .line 333
    .local v3, "numEcBytesInGroup2":I
    if-ne v2, v3, :cond_1

    .line 337
    add-int v8, v4, v5

    if-ne p2, v8, :cond_2

    .line 341
    add-int v8, v0, v2

    mul-int/2addr v8, v4

    add-int v9, v1, v3

    mul-int/2addr v9, v5

    add-int/2addr v8, v9

    if-ne p0, v8, :cond_3

    .line 349
    if-lt p3, v4, :cond_4

    const/4 v8, 0x0

    .line 353
    aput v1, p4, v8

    const/4 v8, 0x0

    .line 354
    aput v3, p5, v8

    .line 356
    :goto_0
    return-void

    .line 313
    .end local v0    # "numDataBytesInGroup1":I
    .end local v1    # "numDataBytesInGroup2":I
    .end local v2    # "numEcBytesInGroup1":I
    .end local v3    # "numEcBytesInGroup2":I
    .end local v4    # "numRsBlocksInGroup1":I
    .end local v5    # "numRsBlocksInGroup2":I
    .end local v6    # "numTotalBytesInGroup1":I
    .end local v7    # "numTotalBytesInGroup2":I
    :cond_0
    new-instance v8, Lcom/google/zxing/WriterException;

    const-string/jumbo v9, "Block ID too large"

    invoke-direct {v8, v9}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 334
    .restart local v0    # "numDataBytesInGroup1":I
    .restart local v1    # "numDataBytesInGroup2":I
    .restart local v2    # "numEcBytesInGroup1":I
    .restart local v3    # "numEcBytesInGroup2":I
    .restart local v4    # "numRsBlocksInGroup1":I
    .restart local v5    # "numRsBlocksInGroup2":I
    .restart local v6    # "numTotalBytesInGroup1":I
    .restart local v7    # "numTotalBytesInGroup2":I
    :cond_1
    new-instance v8, Lcom/google/zxing/WriterException;

    const-string/jumbo v9, "EC bytes mismatch"

    invoke-direct {v8, v9}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 338
    :cond_2
    new-instance v8, Lcom/google/zxing/WriterException;

    const-string/jumbo v9, "RS blocks mismatch"

    invoke-direct {v8, v9}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 346
    :cond_3
    new-instance v8, Lcom/google/zxing/WriterException;

    const-string/jumbo v9, "Total bytes mismatch"

    invoke-direct {v8, v9}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_4
    const/4 v8, 0x0

    .line 350
    aput v0, p4, v8

    const/4 v8, 0x0

    .line 351
    aput v2, p5, v8

    goto :goto_0
.end method

.method static interleaveWithECBytes(Lcom/google/zxing/common/BitArray;III)Lcom/google/zxing/common/BitArray;
    .locals 18
    .param p0, "bits"    # Lcom/google/zxing/common/BitArray;
    .param p1, "numTotalBytes"    # I
    .param p2, "numDataBytes"    # I
    .param p3, "numRSBlocks"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v2

    move/from16 v0, p2

    if-ne v2, v0, :cond_0

    const/4 v11, 0x0

    .local v11, "dataBytesOffset":I
    const/4 v14, 0x0

    .local v14, "maxNumDataBytes":I
    const/4 v15, 0x0

    .line 379
    .local v15, "maxNumEcBytes":I
    new-instance v9, Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .local v9, "blocks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/qrcode/encoder/BlockPair;>;"
    const/4 v5, 0x0

    .line 381
    .local v5, "i":I
    :goto_0
    move/from16 v0, p3

    if-lt v5, v0, :cond_1

    .line 398
    move/from16 v0, p2

    if-ne v0, v11, :cond_2

    .line 402
    new-instance v16, Lcom/google/zxing/common/BitArray;

    invoke-direct/range {v16 .. v16}, Lcom/google/zxing/common/BitArray;-><init>()V

    .local v16, "result":Lcom/google/zxing/common/BitArray;
    const/4 v5, 0x0

    .line 405
    :goto_1
    if-lt v5, v14, :cond_3

    const/4 v5, 0x0

    .line 414
    :goto_2
    if-lt v5, v15, :cond_6

    .line 422
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v2

    move/from16 v0, p1

    if-ne v0, v2, :cond_9

    .line 427
    return-object v16

    .line 369
    .end local v5    # "i":I
    .end local v9    # "blocks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/qrcode/encoder/BlockPair;>;"
    .end local v11    # "dataBytesOffset":I
    .end local v14    # "maxNumDataBytes":I
    .end local v15    # "maxNumEcBytes":I
    .end local v16    # "result":Lcom/google/zxing/common/BitArray;
    :cond_0
    new-instance v2, Lcom/google/zxing/WriterException;

    const-string/jumbo v3, "Number of bits and data bytes does not match"

    invoke-direct {v2, v3}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v2

    .restart local v5    # "i":I
    .restart local v9    # "blocks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/qrcode/encoder/BlockPair;>;"
    .restart local v11    # "dataBytesOffset":I
    .restart local v14    # "maxNumDataBytes":I
    .restart local v15    # "maxNumEcBytes":I
    :cond_1
    const/4 v2, 0x1

    .line 382
    new-array v6, v2, [I

    .local v6, "numDataBytesInBlock":[I
    const/4 v2, 0x1

    .line 383
    new-array v7, v2, [I

    .local v7, "numEcBytesInBlock":[I
    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    .line 384
    invoke-static/range {v2 .. v7}, Lcom/google/zxing/qrcode/encoder/Encoder;->getNumDataBytesAndNumECBytesForBlockID(IIII[I[I)V

    const/4 v2, 0x0

    .line 388
    aget v17, v6, v2

    .line 389
    .local v17, "size":I
    move/from16 v0, v17

    new-array v10, v0, [B

    .line 390
    .local v10, "dataBytes":[B
    mul-int/lit8 v2, v11, 0x8

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v2, v10, v3, v1}, Lcom/google/zxing/common/BitArray;->toBytes(I[BII)V

    const/4 v2, 0x0

    .line 391
    aget v2, v7, v2

    invoke-static {v10, v2}, Lcom/google/zxing/qrcode/encoder/Encoder;->generateECBytes([BI)[B

    move-result-object v12

    .line 392
    .local v12, "ecBytes":[B
    new-instance v2, Lcom/google/zxing/qrcode/encoder/BlockPair;

    invoke-direct {v2, v10, v12}, Lcom/google/zxing/qrcode/encoder/BlockPair;-><init>([B[B)V

    invoke-interface {v9, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 394
    move/from16 v0, v17

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 395
    array-length v2, v12

    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    move-result v15

    const/4 v2, 0x0

    .line 396
    aget v2, v6, v2

    add-int/2addr v11, v2

    .line 381
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 399
    .end local v6    # "numDataBytesInBlock":[I
    .end local v7    # "numEcBytesInBlock":[I
    .end local v10    # "dataBytes":[B
    .end local v12    # "ecBytes":[B
    .end local v17    # "size":I
    :cond_2
    new-instance v2, Lcom/google/zxing/WriterException;

    const-string/jumbo v3, "Data bytes does not match offset"

    invoke-direct {v2, v3}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 406
    .restart local v16    # "result":Lcom/google/zxing/common/BitArray;
    :cond_3
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    .line 405
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 406
    :cond_5
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/zxing/qrcode/encoder/BlockPair;

    .line 407
    .local v8, "block":Lcom/google/zxing/qrcode/encoder/BlockPair;
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/encoder/BlockPair;->getDataBytes()[B

    move-result-object v10

    .line 408
    .restart local v10    # "dataBytes":[B
    array-length v2, v10

    if-ge v5, v2, :cond_4

    .line 409
    aget-byte v2, v10, v5

    const/16 v3, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_3

    .line 415
    .end local v8    # "block":Lcom/google/zxing/qrcode/encoder/BlockPair;
    .end local v10    # "dataBytes":[B
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_7
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_8

    .line 414
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 415
    :cond_8
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/zxing/qrcode/encoder/BlockPair;

    .line 416
    .restart local v8    # "block":Lcom/google/zxing/qrcode/encoder/BlockPair;
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/encoder/BlockPair;->getErrorCorrectionBytes()[B

    move-result-object v12

    .line 417
    .restart local v12    # "ecBytes":[B
    array-length v2, v12

    if-ge v5, v2, :cond_7

    .line 418
    aget-byte v2, v12, v5

    const/16 v3, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_4

    .line 423
    .end local v8    # "block":Lcom/google/zxing/qrcode/encoder/BlockPair;
    .end local v12    # "ecBytes":[B
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_9
    new-instance v2, Lcom/google/zxing/WriterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Interleaving error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " differ."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static isOnlyDoubleByteKanji(Ljava/lang/String;)Z
    .locals 7
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    :try_start_0
    const-string/jumbo v5, "Shift_JIS"

    .line 216
    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 220
    .local v1, "bytes":[B
    array-length v4, v1

    .line 221
    .local v4, "length":I
    rem-int/lit8 v5, v4, 0x2

    if-nez v5, :cond_0

    const/4 v2, 0x0

    .line 224
    .local v2, "i":I
    :goto_0
    if-lt v2, v4, :cond_1

    .line 230
    const/4 v5, 0x1

    return v5

    .line 219
    .end local v1    # "bytes":[B
    .end local v2    # "i":I
    .end local v4    # "length":I
    :catch_0
    move-exception v3

    .line 218
    .local v3, "ignored":Ljava/io/UnsupportedEncodingException;
    return v6

    .line 222
    .end local v3    # "ignored":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "bytes":[B
    .restart local v4    # "length":I
    :cond_0
    return v6

    .line 225
    .restart local v2    # "i":I
    :cond_1
    aget-byte v5, v1, v2

    and-int/lit16 v0, v5, 0xff

    .local v0, "byte1":I
    const/16 v5, 0x81

    .line 226
    if-ge v0, v5, :cond_4

    :cond_2
    const/16 v5, 0xe0

    if-ge v0, v5, :cond_5

    .line 227
    :cond_3
    return v6

    :cond_4
    const/16 v5, 0x9f

    .line 226
    if-gt v0, v5, :cond_2

    .line 224
    :goto_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_5
    const/16 v5, 0xeb

    .line 226
    if-gt v0, v5, :cond_3

    goto :goto_1
.end method

.method static terminateBits(ILcom/google/zxing/common/BitArray;)V
    .locals 7
    .param p0, "numDataBytes"    # I
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 275
    shl-int/lit8 v0, p0, 0x3

    .line 276
    .local v0, "capacity":I
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    if-gt v4, v0, :cond_2

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x4

    .line 280
    if-lt v1, v4, :cond_3

    .line 285
    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    and-int/lit8 v2, v4, 0x7

    .line 286
    .local v2, "numBitsInLastByte":I
    if-gtz v2, :cond_4

    .line 292
    :cond_1
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v4

    sub-int v3, p0, v4

    .local v3, "numPaddingBytes":I
    const/4 v1, 0x0

    .line 293
    :goto_1
    if-lt v1, v3, :cond_5

    .line 296
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    if-ne v4, v0, :cond_7

    .line 299
    return-void

    .line 277
    .end local v1    # "i":I
    .end local v2    # "numBitsInLastByte":I
    .end local v3    # "numPaddingBytes":I
    :cond_2
    new-instance v4, Lcom/google/zxing/WriterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "data bits cannot fit in the QR Code"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 280
    .restart local v1    # "i":I
    :cond_3
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    if-ge v4, v0, :cond_0

    .line 281
    invoke-virtual {p1, v5}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    .restart local v2    # "numBitsInLastByte":I
    :cond_4
    move v1, v2

    :goto_2
    if-ge v1, v6, :cond_1

    .line 288
    invoke-virtual {p1, v5}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 294
    .restart local v3    # "numPaddingBytes":I
    :cond_5
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_6

    const/16 v4, 0x11

    :goto_3
    invoke-virtual {p1, v4, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    const/16 v4, 0xec

    .line 294
    goto :goto_3

    .line 297
    :cond_7
    new-instance v4, Lcom/google/zxing/WriterException;

    const-string/jumbo v5, "Bits size does not equal capacity"

    invoke-direct {v4, v5}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
