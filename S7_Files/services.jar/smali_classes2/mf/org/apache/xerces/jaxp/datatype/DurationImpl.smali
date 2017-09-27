.class Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;
.super Lmf/javax/xml/datatype/Duration;
.source "DurationImpl.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final FACTORS:[Ljava/math/BigDecimal;

.field private static final FIELDS:[Lmf/javax/xml/datatype/DatatypeConstants$Field;

.field private static final TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

.field private static final ZERO:Ljava/math/BigDecimal;

.field private static final serialVersionUID:J = -0x24c6c86e5ffadfb3L


# instance fields
.field private final days:Ljava/math/BigInteger;

.field private final hours:Ljava/math/BigInteger;

.field private final minutes:Ljava/math/BigInteger;

.field private final months:Ljava/math/BigInteger;

.field private final seconds:Ljava/math/BigDecimal;

.field private final signum:I

.field private final years:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v0, 0x6

    .line 111
    new-array v0, v0, [Lmf/javax/xml/datatype/DatatypeConstants$Field;

    .line 112
    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    aput-object v1, v0, v4

    .line 113
    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    aput-object v1, v0, v3

    .line 114
    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    aput-object v1, v0, v5

    .line 115
    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    aput-object v1, v0, v6

    .line 116
    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 117
    sget-object v2, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    aput-object v2, v0, v1

    .line 111
    sput-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->FIELDS:[Lmf/javax/xml/datatype/DatatypeConstants$Field;

    const-wide/16 v0, 0x0

    .line 123
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    .line 658
    new-array v0, v7, [Lmf/javax/xml/datatype/XMLGregorianCalendar;

    const-string/jumbo v1, "1696-09-01T00:00:00Z"

    .line 659
    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->parse(Ljava/lang/String;)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v1

    aput-object v1, v0, v4

    const-string/jumbo v1, "1697-02-01T00:00:00Z"

    .line 660
    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->parse(Ljava/lang/String;)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v1

    aput-object v1, v0, v3

    const-string/jumbo v1, "1903-03-01T00:00:00Z"

    .line 661
    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->parse(Ljava/lang/String;)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "1903-07-01T00:00:00Z"

    .line 662
    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->parse(Ljava/lang/String;)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v1

    aput-object v1, v0, v6

    .line 658
    sput-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

    const/4 v0, 0x5

    .line 1598
    new-array v0, v0, [Ljava/math/BigDecimal;

    const-wide/16 v2, 0xc

    .line 1599
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    aput-object v1, v0, v4

    const-wide/16 v2, 0x18

    .line 1601
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    aput-object v1, v0, v5

    const-wide/16 v2, 0x3c

    .line 1602
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    aput-object v1, v0, v6

    const-wide/16 v2, 0x3c

    .line 1603
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    aput-object v1, v0, v7

    .line 1598
    sput-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->FACTORS:[Ljava/math/BigDecimal;

    .line 1604
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 11

    .prologue
    const-wide/16 v8, 0x18

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 351
    invoke-direct {p0}, Lmf/javax/xml/datatype/Duration;-><init>()V

    .line 356
    cmp-long v0, p1, v6

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 357
    iput v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    move v0, v2

    .line 372
    :goto_1
    iput-object v3, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    .line 373
    iput-object v3, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    const-wide/32 v4, 0xea60

    .line 376
    rem-long v4, p1, v4

    if-nez v0, :cond_5

    :goto_2
    int-to-long v0, v2

    add-long/2addr v0, v4

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    .line 375
    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    const-wide/32 v0, 0xea60

    .line 378
    div-long v4, p1, v0

    .line 379
    cmp-long v0, v4, v6

    if-nez v0, :cond_6

    move-object v0, v3

    :goto_3
    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    const-wide/16 v0, 0x3c

    .line 381
    div-long/2addr v4, v0

    .line 382
    cmp-long v0, v4, v6

    if-nez v0, :cond_7

    move-object v0, v3

    :goto_4
    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    .line 384
    div-long v0, v4, v8

    .line 385
    cmp-long v2, v0, v6

    if-nez v2, :cond_8

    :goto_5
    iput-object v3, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    .line 386
    return-void

    :cond_0
    move v0, v2

    .line 356
    goto :goto_0

    .line 359
    :cond_1
    cmp-long v0, p1, v6

    if-ltz v0, :cond_2

    move v0, v1

    :goto_6
    if-nez v0, :cond_4

    const/4 v0, -0x1

    .line 360
    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    const-wide/high16 v4, -0x8000000000000000L

    .line 361
    cmp-long v0, p1, v4

    if-nez v0, :cond_3

    const-wide/16 v4, 0x1

    .line 363
    add-long/2addr p1, v4

    move v0, v1

    :goto_7
    const-wide/16 v4, -0x1

    .line 366
    mul-long/2addr p1, v4

    goto :goto_1

    :cond_2
    move v0, v2

    .line 359
    goto :goto_6

    :cond_3
    move v0, v2

    .line 361
    goto :goto_7

    .line 369
    :cond_4
    iput v2, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    move v0, v2

    goto :goto_1

    :cond_5
    move v2, v1

    .line 376
    goto :goto_2

    :cond_6
    const-wide/16 v0, 0x3c

    .line 379
    rem-long v0, v4, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_3

    .line 382
    :cond_7
    rem-long v0, v4, v8

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_4

    .line 385
    :cond_8
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_5
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 420
    invoke-direct {p0}, Lmf/javax/xml/datatype/Duration;-><init>()V

    .line 424
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    .line 430
    new-array v5, v0, [I

    .line 431
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 432
    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 434
    aput v1, v5, v0

    const/4 v0, 0x0

    .line 435
    aget v0, v5, v0

    if-ne v6, v0, :cond_7

    .line 440
    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    .line 443
    aget v1, v5, v1

    if-ne v6, v1, :cond_8

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 452
    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x3

    .line 453
    new-array v8, v2, [I

    :goto_1
    const/4 v2, 0x0

    .line 454
    aget v2, v5, v2

    if-ne v6, v2, :cond_a

    :cond_2
    :goto_2
    const/4 v2, 0x0

    .line 461
    aget v2, v5, v2

    if-ne v6, v2, :cond_b

    move v2, v3

    :goto_3
    const/4 v3, 0x0

    const/4 v4, 0x3

    .line 471
    new-array v9, v4, [Ljava/lang/String;

    const/4 v4, 0x3

    .line 472
    new-array v10, v4, [I

    :goto_4
    const/4 v4, 0x0

    .line 473
    aget v4, v5, v4

    if-ne v6, v4, :cond_e

    .line 480
    :cond_3
    :goto_5
    if-nez v2, :cond_f

    :cond_4
    const/4 v2, 0x0

    .line 484
    aget v2, v5, v2

    if-ne v6, v2, :cond_10

    .line 487
    if-eqz v1, :cond_11

    :cond_5
    const-string/jumbo v2, "YMD"

    .line 493
    invoke-static {p1, v7, v8, v1, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->organizeParts(Ljava/lang/String;[Ljava/lang/String;[IILjava/lang/String;)V

    const-string/jumbo v1, "HMS"

    .line 494
    invoke-static {p1, v9, v10, v3, v1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->organizeParts(Ljava/lang/String;[Ljava/lang/String;[IILjava/lang/String;)V

    const/4 v1, 0x0

    .line 497
    aget-object v1, v7, v1

    const/4 v2, 0x0

    aget v2, v8, v2

    invoke-static {p1, v1, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->parseBigInteger(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    const/4 v1, 0x1

    .line 498
    aget-object v1, v7, v1

    const/4 v2, 0x1

    aget v2, v8, v2

    invoke-static {p1, v1, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->parseBigInteger(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    const/4 v1, 0x2

    .line 499
    aget-object v1, v7, v1

    const/4 v2, 0x2

    aget v2, v8, v2

    invoke-static {p1, v1, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->parseBigInteger(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    const/4 v1, 0x0

    .line 500
    aget-object v1, v9, v1

    const/4 v2, 0x0

    aget v2, v10, v2

    invoke-static {p1, v1, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->parseBigInteger(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    const/4 v1, 0x1

    .line 501
    aget-object v1, v9, v1

    const/4 v2, 0x1

    aget v2, v10, v2

    invoke-static {p1, v1, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->parseBigInteger(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    const/4 v1, 0x2

    .line 502
    aget-object v1, v9, v1

    const/4 v2, 0x2

    aget v2, v10, v2

    invoke-static {p1, v1, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->parseBigDecimal(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    .line 503
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->calcSignum(Z)I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    .line 504
    return-void

    .line 425
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_7
    const/4 v0, 0x0

    .line 435
    aget v0, v5, v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 436
    aget v1, v5, v1

    add-int/lit8 v1, v1, 0x1

    aput v1, v5, v0

    .line 437
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v1, 0x0

    .line 443
    aget v1, v5, v1

    const/4 v2, 0x0

    add-int/lit8 v4, v1, 0x1

    aput v4, v5, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x50

    if-eq v1, v2, :cond_1

    .line 444
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const/4 v2, 0x3

    .line 454
    if-ge v1, v2, :cond_2

    const/4 v2, 0x0

    .line 457
    aget v2, v5, v2

    aput v2, v8, v1

    .line 458
    add-int/lit8 v2, v1, 0x1

    invoke-static {p1, v5}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->parsePiece(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v1

    move v1, v2

    goto/16 :goto_1

    :cond_a
    const/4 v2, 0x0

    .line 455
    aget v2, v5, v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_2

    :cond_b
    const/4 v2, 0x0

    .line 462
    aget v2, v5, v2

    const/4 v3, 0x0

    add-int/lit8 v4, v2, 0x1

    aput v4, v5, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x54

    if-eq v2, v3, :cond_c

    .line 466
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_c
    const/4 v2, 0x1

    goto/16 :goto_3

    :cond_d
    const/4 v4, 0x3

    .line 473
    if-ge v3, v4, :cond_3

    const/4 v4, 0x0

    .line 476
    aget v4, v5, v4

    aput v4, v10, v3

    .line 477
    add-int/lit8 v4, v3, 0x1

    invoke-static {p1, v5}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->parsePiece(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v3

    move v3, v4

    goto/16 :goto_4

    :cond_e
    const/4 v4, 0x0

    .line 474
    aget v4, v5, v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->isDigitOrPeriod(C)Z

    move-result v4

    if-nez v4, :cond_d

    goto/16 :goto_5

    .line 480
    :cond_f
    if-nez v3, :cond_4

    .line 481
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :cond_11
    if-nez v3, :cond_5

    .line 488
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor <init>(ZIIIIII)V
    .locals 8

    .prologue
    .line 309
    invoke-static {p2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->wrap(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 310
    invoke-static {p3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->wrap(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 311
    invoke-static {p4}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->wrap(I)Ljava/math/BigInteger;

    move-result-object v4

    .line 312
    invoke-static {p5}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->wrap(I)Ljava/math/BigInteger;

    move-result-object v5

    .line 313
    invoke-static {p6}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->wrap(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 314
    if-nez p7, :cond_0

    const/4 v7, 0x0

    :goto_0
    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)V

    .line 315
    return-void

    .line 314
    :cond_0
    int-to-long v0, p7

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v7

    goto :goto_0
.end method

.method protected constructor <init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 217
    invoke-direct {p0}, Lmf/javax/xml/datatype/Duration;-><init>()V

    .line 226
    iput-object p2, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    .line 227
    iput-object p3, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    .line 228
    iput-object p4, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    .line 229
    iput-object p5, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    .line 230
    iput-object p6, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    .line 231
    iput-object p7, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    .line 233
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->calcSignum(Z)I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    .line 236
    if-eqz p2, :cond_1

    .line 247
    :cond_0
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-static {p2, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->testNonNegative(Ljava/math/BigInteger;Lmf/javax/xml/datatype/DatatypeConstants$Field;)V

    .line 248
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-static {p3, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->testNonNegative(Ljava/math/BigInteger;Lmf/javax/xml/datatype/DatatypeConstants$Field;)V

    .line 249
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-static {p4, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->testNonNegative(Ljava/math/BigInteger;Lmf/javax/xml/datatype/DatatypeConstants$Field;)V

    .line 250
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-static {p5, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->testNonNegative(Ljava/math/BigInteger;Lmf/javax/xml/datatype/DatatypeConstants$Field;)V

    .line 251
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-static {p6, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->testNonNegative(Ljava/math/BigInteger;Lmf/javax/xml/datatype/DatatypeConstants$Field;)V

    .line 252
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-static {p7, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->testNonNegative(Ljava/math/BigDecimal;Lmf/javax/xml/datatype/DatatypeConstants$Field;)V

    .line 253
    return-void

    .line 237
    :cond_1
    if-nez p3, :cond_0

    .line 238
    if-nez p4, :cond_0

    .line 239
    if-nez p5, :cond_0

    .line 240
    if-nez p6, :cond_0

    .line 241
    if-nez p7, :cond_0

    .line 242
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "AllFieldsNull"

    .line 244
    invoke-static {v2, v1, v2}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static alignSigns([Ljava/math/BigDecimal;II)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    :cond_0
    move v3, p1

    move v2, v4

    move v0, v4

    .line 1713
    :goto_0
    if-ge v3, p2, :cond_4

    .line 1714
    aget-object v1, p0, v3

    invoke-virtual {v1}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    mul-int/2addr v1, v2

    if-ltz v1, :cond_1

    .line 1731
    :goto_1
    aget-object v1, p0, v3

    invoke-virtual {v1}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    .line 1713
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_0

    .line 1716
    :cond_1
    const/4 v1, 0x1

    .line 1720
    aget-object v0, p0, v3

    invoke-virtual {v0}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v0

    .line 1721
    sget-object v5, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->FACTORS:[Ljava/math/BigDecimal;

    add-int/lit8 v6, v3, -0x1

    aget-object v5, v5, v6

    .line 1720
    invoke-virtual {v0, v5, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1723
    aget-object v5, p0, v3

    invoke-virtual {v5}, Ljava/math/BigDecimal;->signum()I

    move-result v5

    if-gtz v5, :cond_2

    .line 1728
    :goto_3
    add-int/lit8 v5, v3, -0x1

    add-int/lit8 v6, v3, -0x1

    aget-object v6, p0, v6

    invoke-virtual {v6, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v6

    aput-object v6, p0, v5

    .line 1729
    aget-object v5, p0, v3

    sget-object v6, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->FACTORS:[Ljava/math/BigDecimal;

    add-int/lit8 v7, v3, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v0, v6}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    aput-object v0, p0, v3

    move v0, v1

    goto :goto_1

    .line 1724
    :cond_2
    invoke-virtual {v0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_3

    .line 1732
    :cond_3
    aget-object v1, p0, v3

    invoke-virtual {v1}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    goto :goto_2

    .line 1735
    :cond_4
    if-nez v0, :cond_0

    .line 1736
    return-void
.end method

.method private calcSignum(Z)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 180
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    if-nez v0, :cond_6

    .line 181
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    if-nez v0, :cond_7

    .line 182
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    if-nez v0, :cond_8

    .line 183
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    if-nez v0, :cond_9

    .line 184
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    if-nez v0, :cond_a

    .line 185
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-nez v0, :cond_b

    .line 186
    :cond_5
    return v1

    .line 180
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    :goto_0
    if-nez p1, :cond_c

    const/4 v0, -0x1

    .line 193
    return v0

    .line 181
    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 182
    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 183
    :cond_9
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 184
    :cond_a
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 185
    :cond_b
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_c
    const/4 v0, 0x1

    .line 190
    return v0
.end method

.method private compareDates(Lmf/javax/xml/datatype/Duration;Lmf/javax/xml/datatype/Duration;)I
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 887
    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    .line 888
    sget-object v1, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    .line 891
    invoke-virtual {v0, p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->add(Lmf/javax/xml/datatype/Duration;)V

    .line 892
    invoke-virtual {v1, p2}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->add(Lmf/javax/xml/datatype/Duration;)V

    .line 893
    invoke-virtual {v0, v1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->compare(Lmf/javax/xml/datatype/XMLGregorianCalendar;)I

    move-result v2

    .line 894
    if-eq v2, v3, :cond_0

    .line 898
    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    .line 899
    sget-object v1, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    .line 901
    invoke-virtual {v0, p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->add(Lmf/javax/xml/datatype/Duration;)V

    .line 902
    invoke-virtual {v1, p2}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->add(Lmf/javax/xml/datatype/Duration;)V

    .line 903
    invoke-virtual {v0, v1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->compare(Lmf/javax/xml/datatype/XMLGregorianCalendar;)I

    move-result v0

    .line 904
    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->compareResults(II)I

    move-result v2

    .line 905
    if-eq v2, v3, :cond_1

    .line 909
    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    .line 910
    sget-object v1, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    .line 912
    invoke-virtual {v0, p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->add(Lmf/javax/xml/datatype/Duration;)V

    .line 913
    invoke-virtual {v1, p2}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->add(Lmf/javax/xml/datatype/Duration;)V

    .line 914
    invoke-virtual {v0, v1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->compare(Lmf/javax/xml/datatype/XMLGregorianCalendar;)I

    move-result v0

    .line 915
    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->compareResults(II)I

    move-result v2

    .line 916
    if-eq v2, v3, :cond_2

    .line 920
    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    .line 921
    sget-object v1, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    .line 923
    invoke-virtual {v0, p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->add(Lmf/javax/xml/datatype/Duration;)V

    .line 924
    invoke-virtual {v1, p2}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->add(Lmf/javax/xml/datatype/Duration;)V

    .line 925
    invoke-virtual {v0, v1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->compare(Lmf/javax/xml/datatype/XMLGregorianCalendar;)I

    move-result v0

    .line 926
    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->compareResults(II)I

    move-result v0

    .line 928
    return v0

    .line 895
    :cond_0
    return v3

    .line 906
    :cond_1
    return v3

    .line 917
    :cond_2
    return v3
.end method

.method private compareResults(II)I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 933
    if-eq p2, v0, :cond_0

    .line 936
    if-ne p1, p2, :cond_1

    .line 939
    return p1

    .line 934
    :cond_0
    return v0

    .line 937
    :cond_1
    return v0
.end method

.method private static getCalendarTimeInMillis(Ljava/util/Calendar;)J
    .locals 2

    .prologue
    .line 1954
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private getFieldAsBigDecimal(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/math/BigDecimal;
    .locals 2

    .prologue
    .line 1556
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-eq p1, v0, :cond_0

    .line 1565
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    .line 1566
    if-eqz v0, :cond_2

    .line 1570
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object v1

    .line 1557
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-nez v0, :cond_1

    .line 1561
    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    return-object v0

    .line 1558
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    return-object v0

    .line 1567
    :cond_2
    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    return-object v0
.end method

.method private getInt(Lmf/javax/xml/datatype/DatatypeConstants$Field;)I
    .locals 1

    .prologue
    .line 1275
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    .line 1276
    if-eqz v0, :cond_0

    .line 1280
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1277
    return v0
.end method

.method private static isDigit(C)Z
    .locals 1

    .prologue
    const/16 v0, 0x30

    .line 515
    if-le v0, p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method private static isDigitOrPeriod(C)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 526
    invoke-static {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/16 v0, 0x2e

    if-eq p0, v0, :cond_0

    return v1
.end method

.method private static organizeParts(Ljava/lang/String;[Ljava/lang/String;[IILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 574
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    .line 575
    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 576
    aget-object v2, p1, v0

    if-eqz v2, :cond_0

    .line 581
    aget-object v2, p1, v0

    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 582
    add-int/lit8 v3, v1, -0x1

    .line 580
    invoke-virtual {p4, v2, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    const/4 v3, -0x1

    .line 583
    if-eq v2, v3, :cond_1

    .line 588
    add-int/lit8 v3, v2, 0x1

    :goto_1
    if-ge v3, v1, :cond_2

    .line 589
    aput-object v4, p1, v3

    .line 588
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 577
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_2
    aget-object v1, p1, v0

    aput-object v1, p1, v2

    .line 593
    aget v1, p2, v0

    aput v1, p2, v2

    .line 575
    add-int/lit8 v0, v0, -0x1

    move v1, v2

    goto :goto_0

    .line 595
    :cond_3
    add-int/lit8 v0, v1, -0x1

    :goto_2
    if-ltz v0, :cond_4

    .line 596
    aput-object v4, p1, v0

    .line 595
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 598
    :cond_4
    return-void
.end method

.method private static parseBigDecimal(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigDecimal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 643
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 646
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 649
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 644
    :cond_0
    return-object v0
.end method

.method private static parseBigInteger(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 616
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 619
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 621
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 617
    :cond_0
    return-object v0
.end method

.method private static parsePiece(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 541
    aget v0, p1, v3

    .line 542
    :goto_0
    aget v1, p1, v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 546
    :cond_0
    aget v1, p1, v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 550
    aget v1, p1, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v3

    .line 552
    aget v1, p1, v3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 543
    :cond_1
    aget v1, p1, v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->isDigitOrPeriod(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 544
    aget v1, p1, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v3

    goto :goto_0

    .line 547
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 1765
    if-nez p1, :cond_1

    .line 1766
    :cond_0
    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    return-object v0

    .line 1765
    :cond_1
    if-eqz p0, :cond_0

    .line 1768
    if-gtz p1, :cond_2

    .line 1771
    invoke-virtual {p0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1769
    :cond_2
    return-object p0
.end method

.method private static sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;
    .locals 2

    .prologue
    .line 1747
    if-nez p1, :cond_1

    .line 1748
    :cond_0
    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    return-object v0

    .line 1747
    :cond_1
    if-eqz p0, :cond_0

    .line 1750
    if-gtz p1, :cond_2

    .line 1753
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    .line 1751
    :cond_2
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method private static testNonNegative(Ljava/math/BigDecimal;Lmf/javax/xml/datatype/DatatypeConstants$Field;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 278
    if-nez p0, :cond_1

    .line 284
    :cond_0
    return-void

    .line 278
    :cond_1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-gez v0, :cond_0

    .line 280
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "NegativeField"

    const/4 v2, 0x1

    .line 281
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v5, v1, v2}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 280
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static testNonNegative(Ljava/math/BigInteger;Lmf/javax/xml/datatype/DatatypeConstants$Field;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 263
    if-nez p0, :cond_1

    .line 268
    :cond_0
    return-void

    .line 263
    :cond_1
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_0

    .line 264
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "NegativeField"

    const/4 v2, 0x1

    .line 265
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v5, v1, v2}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 1586
    if-nez p1, :cond_1

    .line 1590
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 1586
    :cond_1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1587
    return-object v0
.end method

.method private toString(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1017
    invoke-virtual {p1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1018
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    .line 1020
    if-eqz v0, :cond_0

    .line 1026
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    .line 1027
    if-eqz v3, :cond_1

    .line 1030
    if-gtz v3, :cond_2

    .line 1035
    new-instance v0, Ljava/lang/StringBuffer;

    rsub-int/lit8 v4, v3, 0x3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string/jumbo v4, "0."

    .line 1036
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1037
    :goto_0
    neg-int v4, v3

    if-ge v1, v4, :cond_3

    .line 1038
    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1037
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1021
    :cond_0
    return-object v2

    .line 1028
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "0."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1031
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1032
    const/16 v1, 0x2e

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 1042
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1040
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private static wrap(I)Ljava/math/BigInteger;
    .locals 2

    .prologue
    const/high16 v0, -0x80000000

    .line 326
    if-eq p0, v0, :cond_0

    .line 331
    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 327
    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1966
    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/SerializedDuration;

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/SerializedDuration;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public add(Lmf/javax/xml/datatype/Duration;)Lmf/javax/xml/datatype/Duration;
    .locals 14

    .prologue
    const/4 v13, 0x5

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x6

    .line 1658
    new-array v10, v0, [Ljava/math/BigDecimal;

    .line 1660
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    .line 1661
    invoke-virtual {p0}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v1

    .line 1660
    invoke-static {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v1

    .line 1661
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v2

    invoke-static {v0, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1660
    aput-object v0, v10, v6

    .line 1662
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    .line 1663
    invoke-virtual {p0}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v1

    .line 1662
    invoke-static {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v1

    .line 1663
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v2

    invoke-static {v0, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1662
    aput-object v0, v10, v8

    .line 1664
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    .line 1665
    invoke-virtual {p0}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v1

    .line 1664
    invoke-static {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v1

    .line 1665
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v2

    invoke-static {v0, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1664
    aput-object v0, v10, v5

    const/4 v1, 0x3

    .line 1666
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    .line 1667
    invoke-virtual {p0}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v2

    .line 1666
    invoke-static {v0, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v2

    .line 1667
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v3

    invoke-static {v0, v3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1666
    aput-object v0, v10, v1

    const/4 v1, 0x4

    .line 1668
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    .line 1669
    invoke-virtual {p0}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v2

    .line 1668
    invoke-static {v0, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v2

    .line 1669
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v3

    invoke-static {v0, v3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1668
    aput-object v0, v10, v1

    .line 1670
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigDecimal;

    .line 1671
    invoke-virtual {p0}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v1

    .line 1670
    invoke-static {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v1

    .line 1671
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v2

    invoke-static {v0, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1670
    aput-object v0, v10, v13

    .line 1674
    invoke-static {v10, v6, v5}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->alignSigns([Ljava/math/BigDecimal;II)V

    const/4 v0, 0x6

    .line 1675
    invoke-static {v10, v5, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->alignSigns([Ljava/math/BigDecimal;II)V

    move v1, v6

    move v7, v6

    :goto_0
    const/4 v0, 0x6

    .line 1679
    if-ge v1, v0, :cond_2

    .line 1680
    aget-object v0, v10, v1

    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    mul-int/2addr v0, v7

    if-ltz v0, :cond_0

    .line 1683
    if-eqz v7, :cond_1

    move v0, v7

    .line 1679
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v7, v0

    goto :goto_0

    .line 1681
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1684
    :cond_1
    aget-object v0, v10, v1

    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    goto :goto_1

    .line 1688
    :cond_2
    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;

    .line 1689
    if-gez v7, :cond_9

    move v1, v6

    .line 1690
    :goto_2
    aget-object v2, v10, v6

    invoke-static {v2, v7}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v3

    .line 1691
    sget-object v2, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v2}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v2

    if-eqz v2, :cond_a

    :cond_3
    move v2, v6

    .line 1690
    :goto_3
    invoke-static {v3, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v2

    .line 1692
    aget-object v3, v10, v8

    invoke-static {v3, v7}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v4

    .line 1693
    sget-object v3, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v3}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v3

    if-eqz v3, :cond_b

    :cond_4
    move v3, v6

    .line 1692
    :goto_4
    invoke-static {v4, v3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v3

    .line 1694
    aget-object v4, v10, v5

    invoke-static {v4, v7}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v5

    .line 1695
    sget-object v4, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v4}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v4

    if-eqz v4, :cond_c

    :cond_5
    move v4, v6

    .line 1694
    :goto_5
    invoke-static {v5, v4}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v4

    const/4 v5, 0x3

    .line 1696
    aget-object v5, v10, v5

    invoke-static {v5, v7}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v11

    .line 1697
    sget-object v5, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v5}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v5

    if-eqz v5, :cond_d

    :cond_6
    move v5, v6

    .line 1696
    :goto_6
    invoke-static {v11, v5}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v5

    const/4 v11, 0x4

    .line 1698
    aget-object v11, v10, v11

    invoke-static {v11, v7}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v11

    .line 1699
    sget-object v12, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v12}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v12

    if-eqz v12, :cond_e

    :goto_7
    move v8, v6

    .line 1698
    :cond_7
    invoke-static {v11, v8}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v6

    .line 1700
    aget-object v8, v10, v13

    invoke-virtual {v8}, Ljava/math/BigDecimal;->signum()I

    move-result v8

    if-eqz v8, :cond_f

    .line 1702
    :cond_8
    aget-object v8, v10, v13

    invoke-static {v8, v7}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v7

    .line 1688
    :goto_8
    invoke-direct/range {v0 .. v7}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)V

    return-object v0

    :cond_9
    move v1, v8

    .line 1689
    goto :goto_2

    .line 1691
    :cond_a
    sget-object v2, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v2}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v8

    goto :goto_3

    .line 1693
    :cond_b
    sget-object v3, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v3}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v3

    if-nez v3, :cond_4

    move v3, v8

    goto :goto_4

    .line 1695
    :cond_c
    sget-object v4, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v4}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v8

    goto :goto_5

    .line 1697
    :cond_d
    sget-object v5, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v5}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v5

    if-nez v5, :cond_6

    move v5, v8

    goto :goto_6

    .line 1699
    :cond_e
    sget-object v12, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v12}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v12

    if-eqz v12, :cond_7

    goto :goto_7

    .line 1701
    :cond_f
    sget-object v8, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v8}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v8

    if-nez v8, :cond_8

    .line 1702
    sget-object v8, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v8}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v8

    if-nez v8, :cond_8

    move-object v7, v9

    goto :goto_8
.end method

.method public addTo(Ljava/util/Calendar;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1902
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getYears()I

    move-result v0

    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v3, v0}, Ljava/util/Calendar;->add(II)V

    const/4 v0, 0x2

    .line 1903
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getMonths()I

    move-result v1

    iget v2, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    const/4 v0, 0x5

    .line 1904
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getDays()I

    move-result v1

    iget v2, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    const/16 v0, 0xa

    .line 1905
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getHours()I

    move-result v1

    iget v2, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    const/16 v0, 0xc

    .line 1906
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getMinutes()I

    move-result v1

    iget v2, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    const/16 v0, 0xd

    .line 1907
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getSeconds()I

    move-result v1

    iget v2, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 1909
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    .line 1915
    :goto_0
    return-void

    .line 1911
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    const/4 v1, 0x3

    .line 1912
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    const/16 v1, 0xe

    .line 1913
    iget v2, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->add(II)V

    goto :goto_0
.end method

.method public addTo(Ljava/util/Date;)V
    .locals 2

    .prologue
    .line 1939
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1940
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1941
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->addTo(Ljava/util/Calendar;)V

    .line 1942
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 1943
    return-void
.end method

.method public compare(Lmf/javax/xml/datatype/Duration;)I
    .locals 14

    .prologue
    const/4 v13, 0x6

    const/4 v12, 0x2

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/32 v6, 0x7fffffff

    .line 697
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 700
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    if-nez v0, :cond_c

    .line 709
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    if-nez v0, :cond_d

    .line 719
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    if-nez v0, :cond_e

    .line 729
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    if-nez v0, :cond_f

    .line 739
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    if-nez v0, :cond_10

    .line 749
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-nez v0, :cond_11

    .line 761
    :cond_5
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    .line 762
    if-nez v0, :cond_12

    .line 772
    :cond_6
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    .line 773
    if-nez v0, :cond_13

    .line 783
    :cond_7
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    .line 784
    if-nez v0, :cond_14

    .line 794
    :cond_8
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    .line 795
    if-nez v0, :cond_15

    .line 805
    :cond_9
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    .line 806
    if-nez v0, :cond_16

    .line 816
    :cond_a
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigDecimal;

    .line 818
    if-nez v0, :cond_17

    move-object v0, v1

    .line 821
    :goto_0
    if-nez v0, :cond_18

    .line 833
    :cond_b
    new-instance v0, Ljava/util/GregorianCalendar;

    const/16 v1, 0x7b2

    move v3, v2

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 840
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getYears()I

    move-result v1

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getSign()I

    move-result v3

    mul-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->add(II)V

    .line 841
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getMonths()I

    move-result v1

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getSign()I

    move-result v3

    mul-int/2addr v1, v3

    invoke-virtual {v0, v12, v1}, Ljava/util/GregorianCalendar;->add(II)V

    .line 842
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getDays()I

    move-result v1

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getSign()I

    move-result v3

    mul-int/2addr v1, v3

    invoke-virtual {v0, v13, v1}, Ljava/util/GregorianCalendar;->add(II)V

    const/16 v1, 0xb

    .line 843
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getHours()I

    move-result v3

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getSign()I

    move-result v5

    mul-int/2addr v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/util/GregorianCalendar;->add(II)V

    const/16 v1, 0xc

    .line 844
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getMinutes()I

    move-result v3

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getSign()I

    move-result v5

    mul-int/2addr v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/util/GregorianCalendar;->add(II)V

    const/16 v1, 0xd

    .line 845
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getSeconds()I

    move-result v3

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getSign()I

    move-result v5

    mul-int/2addr v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/util/GregorianCalendar;->add(II)V

    .line 848
    new-instance v5, Ljava/util/GregorianCalendar;

    const/16 v6, 0x7b2

    move v7, v2

    move v8, v2

    move v9, v4

    move v10, v4

    move v11, v4

    invoke-direct/range {v5 .. v11}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 855
    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getYears()I

    move-result v1

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v3

    mul-int/2addr v1, v3

    invoke-virtual {v5, v2, v1}, Ljava/util/GregorianCalendar;->add(II)V

    .line 856
    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getMonths()I

    move-result v1

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {v5, v12, v1}, Ljava/util/GregorianCalendar;->add(II)V

    .line 857
    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getDays()I

    move-result v1

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {v5, v13, v1}, Ljava/util/GregorianCalendar;->add(II)V

    const/16 v1, 0xb

    .line 858
    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getHours()I

    move-result v2

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v5, v1, v2}, Ljava/util/GregorianCalendar;->add(II)V

    const/16 v1, 0xc

    .line 859
    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getMinutes()I

    move-result v2

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v5, v1, v2}, Ljava/util/GregorianCalendar;->add(II)V

    const/16 v1, 0xd

    .line 860
    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getSeconds()I

    move-result v2

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v5, v1, v2}, Ljava/util/GregorianCalendar;->add(II)V

    .line 863
    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 867
    invoke-direct {p0, p0, p1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->compareDates(Lmf/javax/xml/datatype/Duration;Lmf/javax/xml/datatype/Duration;)I

    move-result v0

    return v0

    .line 700
    :cond_c
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 701
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "TooLarge"

    .line 703
    new-array v5, v12, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "#compare(Duration duration)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v7}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    .line 702
    invoke-static {v1, v3, v5}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 701
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :cond_d
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 710
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "TooLarge"

    .line 712
    new-array v5, v12, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "#compare(Duration duration)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v7}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    .line 711
    invoke-static {v1, v3, v5}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 710
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 719
    :cond_e
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 720
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "TooLarge"

    .line 722
    new-array v5, v12, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "#compare(Duration duration)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v7}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    .line 721
    invoke-static {v1, v3, v5}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 720
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 729
    :cond_f
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 730
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "TooLarge"

    .line 732
    new-array v5, v12, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "#compare(Duration duration)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v7}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    .line 731
    invoke-static {v1, v3, v5}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 730
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 739
    :cond_10
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 740
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "TooLarge"

    .line 742
    new-array v5, v12, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "#compare(Duration duration)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v7}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    .line 741
    invoke-static {v1, v3, v5}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 740
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 749
    :cond_11
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 750
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "TooLarge"

    .line 752
    new-array v5, v12, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "#compare(Duration duration)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v7}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toString(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    .line 751
    invoke-static {v1, v3, v5}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 750
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 762
    :cond_12
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-ne v5, v2, :cond_6

    .line 763
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v5, "TooLarge"

    .line 765
    new-array v6, v12, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "#compare(Duration duration)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v8}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    .line 764
    invoke-static {v1, v5, v6}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 763
    invoke-direct {v3, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 773
    :cond_13
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-ne v5, v2, :cond_7

    .line 774
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v5, "TooLarge"

    .line 776
    new-array v6, v12, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "#compare(Duration duration)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v8}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    .line 775
    invoke-static {v1, v5, v6}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 774
    invoke-direct {v3, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 784
    :cond_14
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-ne v5, v2, :cond_8

    .line 785
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v5, "TooLarge"

    .line 787
    new-array v6, v12, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "#compare(Duration duration)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v8}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    .line 786
    invoke-static {v1, v5, v6}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 785
    invoke-direct {v3, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 795
    :cond_15
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-ne v5, v2, :cond_9

    .line 796
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v5, "TooLarge"

    .line 798
    new-array v6, v12, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "#compare(Duration duration)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v8}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    .line 797
    invoke-static {v1, v5, v6}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 796
    invoke-direct {v3, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 806
    :cond_16
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-ne v5, v2, :cond_a

    .line 807
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v5, "TooLarge"

    .line 809
    new-array v6, v12, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "#compare(Duration duration)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v8}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    .line 808
    invoke-static {v1, v5, v6}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 807
    invoke-direct {v3, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 819
    :cond_17
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    goto/16 :goto_0

    .line 821
    :cond_18
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ne v3, v2, :cond_b

    .line 822
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v5, "TooLarge"

    .line 824
    new-array v6, v12, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "#compare(Duration duration)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v8}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    .line 823
    invoke-static {v1, v5, v6}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 822
    invoke-direct {v3, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 864
    :cond_19
    return v4
.end method

.method public getDays()I
    .locals 1

    .prologue
    .line 1219
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getInt(Lmf/javax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1127
    if-eqz p1, :cond_0

    .line 1135
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-eq p1, v0, :cond_1

    .line 1139
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-eq p1, v0, :cond_2

    .line 1143
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-eq p1, v0, :cond_3

    .line 1147
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-eq p1, v0, :cond_4

    .line 1151
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-eq p1, v0, :cond_5

    .line 1155
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-eq p1, v0, :cond_6

    const-string/jumbo v0, "javax.xml.datatype.Duration#(getSet(DatatypeConstants.Field field)"

    .line 1167
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "UnknownField"

    const/4 v3, 0x2

    .line 1168
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {p1}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v4, v2, v3}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1167
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string/jumbo v0, "javax.xml.datatype.Duration#isSet(DatatypeConstants.Field field) "

    .line 1130
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "FieldCannotBeNull"

    .line 1131
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v4, v2, v3}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1130
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1136
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    return-object v0

    .line 1140
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    return-object v0

    .line 1144
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    return-object v0

    .line 1148
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    return-object v0

    .line 1152
    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    return-object v0

    .line 1156
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getHours()I
    .locals 1

    .prologue
    .line 1233
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getInt(Lmf/javax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public getMinutes()I
    .locals 1

    .prologue
    .line 1247
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getInt(Lmf/javax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public getMonths()I
    .locals 1

    .prologue
    .line 1206
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getInt(Lmf/javax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public getSeconds()I
    .locals 1

    .prologue
    .line 1262
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getInt(Lmf/javax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public getSign()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    return v0
.end method

.method public getTimeInMillis(Ljava/util/Calendar;)J
    .locals 4

    .prologue
    .line 1315
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 1316
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->addTo(Ljava/util/Calendar;)V

    .line 1317
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v0

    invoke-static {p1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTimeInMillis(Ljava/util/Date;)J
    .locals 4

    .prologue
    .line 1352
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1353
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1354
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->addTo(Ljava/util/Calendar;)V

    .line 1355
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getYears()I
    .locals 1

    .prologue
    .line 1193
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getInt(Lmf/javax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 949
    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->toGregorianCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 950
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->addTo(Ljava/util/Calendar;)V

    .line 951
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public isSet(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1062
    if-eqz p1, :cond_0

    .line 1070
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-eq p1, v0, :cond_1

    .line 1074
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-eq p1, v0, :cond_3

    .line 1078
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-eq p1, v0, :cond_5

    .line 1082
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-eq p1, v0, :cond_7

    .line 1086
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-eq p1, v0, :cond_9

    .line 1090
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-eq p1, v0, :cond_b

    const-string/jumbo v0, "javax.xml.datatype.Duration#isSet(DatatypeConstants.Field field)"

    .line 1095
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "UnknownField"

    const/4 v3, 0x2

    .line 1096
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {p1}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v4, v2, v3}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1095
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string/jumbo v0, "javax.xml.datatype.Duration#isSet(DatatypeConstants.Field field)"

    .line 1064
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "FieldCannotBeNull"

    .line 1066
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v4, v2, v3}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1064
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1071
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    if-nez v0, :cond_2

    return v5

    :cond_2
    return v6

    .line 1075
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    if-nez v0, :cond_4

    return v5

    :cond_4
    return v6

    .line 1079
    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    if-nez v0, :cond_6

    return v5

    :cond_6
    return v6

    .line 1083
    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    if-nez v0, :cond_8

    return v5

    :cond_8
    return v6

    .line 1087
    :cond_9
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    if-nez v0, :cond_a

    return v5

    :cond_a
    return v6

    .line 1091
    :cond_b
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-nez v0, :cond_c

    return v5

    :cond_c
    return v6
.end method

.method public multiply(I)Lmf/javax/xml/datatype/Duration;
    .locals 2

    .prologue
    .line 1453
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->multiply(Ljava/math/BigDecimal;)Lmf/javax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method

.method public multiply(Ljava/math/BigDecimal;)Lmf/javax/xml/datatype/Duration;
    .locals 13

    .prologue
    const/4 v12, 0x5

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1504
    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    .line 1505
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v2

    .line 1506
    invoke-virtual {p1}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v3

    const/4 v1, 0x6

    .line 1508
    new-array v9, v1, [Ljava/math/BigDecimal;

    move v1, v6

    .line 1510
    :goto_0
    if-ge v1, v12, :cond_2

    .line 1511
    sget-object v4, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->FIELDS:[Lmf/javax/xml/datatype/DatatypeConstants$Field;

    aget-object v4, v4, v1

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getFieldAsBigDecimal(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 1512
    invoke-virtual {v4, v3}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1514
    invoke-virtual {v0, v6, v7}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v4

    aput-object v4, v9, v1

    .line 1516
    aget-object v4, v9, v1

    invoke-virtual {v0, v4}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1517
    if-eq v1, v7, :cond_0

    .line 1525
    sget-object v4, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->FACTORS:[Ljava/math/BigDecimal;

    aget-object v4, v4, v1

    invoke-virtual {v0, v4}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1510
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1518
    :cond_0
    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-nez v0, :cond_1

    .line 1521
    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    goto :goto_1

    .line 1519
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1529
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-nez v1, :cond_4

    .line 1533
    aput-object v0, v9, v12

    .line 1536
    :goto_2
    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;

    .line 1537
    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v1, v2

    if-gez v1, :cond_5

    move v1, v6

    .line 1538
    :goto_3
    aget-object v3, v9, v6

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    if-eqz v2, :cond_6

    move v2, v6

    :goto_4
    invoke-static {v3, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v2

    .line 1539
    aget-object v4, v9, v7

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    if-eqz v3, :cond_7

    move v3, v6

    :goto_5
    invoke-static {v4, v3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v3

    const/4 v4, 0x2

    .line 1540
    aget-object v5, v9, v4

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    if-eqz v4, :cond_8

    move v4, v6

    :goto_6
    invoke-static {v5, v4}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v4

    const/4 v5, 0x3

    .line 1541
    aget-object v10, v9, v5

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    if-eqz v5, :cond_9

    move v5, v6

    :goto_7
    invoke-static {v10, v5}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v5

    const/4 v10, 0x4

    .line 1542
    aget-object v10, v9, v10

    iget-object v11, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    if-eqz v11, :cond_a

    :goto_8
    invoke-static {v10, v6}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v6

    .line 1543
    aget-object v7, v9, v12

    invoke-virtual {v7}, Ljava/math/BigDecimal;->signum()I

    move-result v7

    if-eqz v7, :cond_b

    :cond_3
    aget-object v7, v9, v12

    .line 1536
    :goto_9
    invoke-direct/range {v0 .. v7}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)V

    return-object v0

    .line 1530
    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    invoke-virtual {v1, v3}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    aput-object v0, v9, v12

    goto :goto_2

    :cond_5
    move v1, v7

    .line 1537
    goto :goto_3

    :cond_6
    move v2, v7

    .line 1538
    goto :goto_4

    :cond_7
    move v3, v7

    .line 1539
    goto :goto_5

    :cond_8
    move v4, v7

    .line 1540
    goto :goto_6

    :cond_9
    move v5, v7

    .line 1541
    goto :goto_7

    :cond_a
    move v6, v7

    .line 1542
    goto :goto_8

    .line 1543
    :cond_b
    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-nez v7, :cond_3

    move-object v7, v8

    goto :goto_9
.end method

.method public negate()Lmf/javax/xml/datatype/Duration;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1840
    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;

    .line 1841
    iget v2, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    if-lez v2, :cond_0

    .line 1842
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    .line 1843
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    .line 1844
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    .line 1845
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    .line 1846
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    .line 1847
    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    .line 1840
    invoke-direct/range {v0 .. v7}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)V

    return-object v0

    :cond_0
    const/4 v1, 0x1

    .line 1841
    goto :goto_0
.end method

.method public normalizeWith(Ljava/util/Calendar;)Lmf/javax/xml/datatype/Duration;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1414
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 1418
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getYears()I

    move-result v4

    iget v5, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    const/4 v4, 0x2

    .line 1419
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getMonths()I

    move-result v5

    iget v6, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    const/4 v4, 0x5

    .line 1420
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getDays()I

    move-result v5

    iget v6, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 1423
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v4

    invoke-static {p1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x5265c00

    .line 1424
    div-long/2addr v4, v6

    long-to-int v4, v4

    .line 1426
    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;

    .line 1427
    if-gez v4, :cond_0

    .line 1430
    :goto_0
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->wrap(I)Ljava/math/BigInteger;

    move-result-object v4

    .line 1431
    sget-object v3, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v5

    check-cast v5, Ljava/math/BigInteger;

    .line 1432
    sget-object v3, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v6

    check-cast v6, Ljava/math/BigInteger;

    .line 1433
    sget-object v3, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v7

    check-cast v7, Ljava/math/BigDecimal;

    move-object v3, v2

    .line 1426
    invoke-direct/range {v0 .. v7}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)V

    return-object v0

    :cond_0
    move v1, v3

    .line 1427
    goto :goto_0
.end method

.method public signum()I
    .locals 1

    .prologue
    .line 1858
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    return v0
.end method

.method public subtract(Lmf/javax/xml/datatype/Duration;)Lmf/javax/xml/datatype/Duration;
    .locals 1

    .prologue
    .line 1824
    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->negate()Lmf/javax/xml/datatype/Duration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->add(Lmf/javax/xml/datatype/Duration;)Lmf/javax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x4d

    .line 974
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 975
    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    if-ltz v1, :cond_1

    .line 978
    :goto_0
    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 980
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    if-nez v1, :cond_2

    .line 983
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    if-nez v1, :cond_3

    .line 986
    :goto_2
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    if-nez v1, :cond_4

    .line 990
    :goto_3
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    if-eqz v1, :cond_5

    .line 991
    :cond_0
    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 992
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    if-nez v1, :cond_6

    .line 995
    :goto_4
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    if-nez v1, :cond_7

    .line 998
    :goto_5
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-nez v1, :cond_8

    .line 1003
    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 976
    :cond_1
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 981
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x59

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 984
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 987
    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x44

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 990
    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    if-nez v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-nez v1, :cond_0

    goto :goto_6

    .line 993
    :cond_6
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x48

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 996
    :cond_7
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 999
    :cond_8
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toString(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x53

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6
.end method
