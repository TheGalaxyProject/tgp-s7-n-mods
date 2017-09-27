.class public abstract Lmf/javax/xml/datatype/DatatypeFactory;
.super Ljava/lang/Object;
.source "DatatypeFactory.java"


# static fields
.field public static final DATATYPEFACTORY_IMPLEMENTATION_CLASS:Ljava/lang/String;

.field public static final DATATYPEFACTORY_PROPERTY:Ljava/lang/String; = "javax.xml.datatype.DatatypeFactory"

.field private static final XDTSCHEMA_DTD:Ljava/util/regex/Pattern;

.field private static final XDTSCHEMA_YMD:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "com.sun.org.apache.xerces.internal.jaxp.datatype.DatatypeFactoryImpl"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmf/javax/xml/datatype/DatatypeFactory;->DATATYPEFACTORY_IMPLEMENTATION_CLASS:Ljava/lang/String;

    const-string/jumbo v0, "[^DT]*"

    .line 118
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 117
    sput-object v0, Lmf/javax/xml/datatype/DatatypeFactory;->XDTSCHEMA_YMD:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "[^YM]*[DT].*"

    .line 121
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 120
    sput-object v0, Lmf/javax/xml/datatype/DatatypeFactory;->XDTSCHEMA_DTD:Ljava/util/regex/Pattern;

    .line 121
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    return-void
.end method

.method public static newInstance()Lmf/javax/xml/datatype/DatatypeFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .prologue
    :try_start_0
    const-string/jumbo v0, "javax.xml.datatype.DatatypeFactory"

    .line 152
    sget-object v1, Lmf/javax/xml/datatype/DatatypeFactory;->DATATYPEFACTORY_IMPLEMENTATION_CLASS:Ljava/lang/String;

    .line 148
    invoke-static {v0, v1}, Lmf/javax/xml/datatype/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/datatype/DatatypeFactory;
    :try_end_0
    .catch Lmf/javax/xml/datatype/FactoryFinder$ConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 154
    new-instance v1, Lmf/javax/xml/datatype/DatatypeConfigurationException;

    invoke-virtual {v0}, Lmf/javax/xml/datatype/FactoryFinder$ConfigurationError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lmf/javax/xml/datatype/FactoryFinder$ConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lmf/javax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Lmf/javax/xml/datatype/DatatypeFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .prologue
    .line 195
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, v0}, Lmf/javax/xml/datatype/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/datatype/DatatypeFactory;
    :try_end_0
    .catch Lmf/javax/xml/datatype/FactoryFinder$ConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 197
    new-instance v1, Lmf/javax/xml/datatype/DatatypeConfigurationException;

    invoke-virtual {v0}, Lmf/javax/xml/datatype/FactoryFinder$ConfigurationError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lmf/javax/xml/datatype/FactoryFinder$ConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lmf/javax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public abstract newDuration(J)Lmf/javax/xml/datatype/Duration;
.end method

.method public abstract newDuration(Ljava/lang/String;)Lmf/javax/xml/datatype/Duration;
.end method

.method public newDuration(ZIIIIII)Lmf/javax/xml/datatype/Duration;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    .line 343
    if-ne p2, v1, :cond_0

    move-object v2, v0

    .line 346
    :goto_0
    if-ne p3, v1, :cond_1

    move-object v3, v0

    .line 349
    :goto_1
    if-ne p4, v1, :cond_2

    move-object v4, v0

    .line 352
    :goto_2
    if-ne p5, v1, :cond_3

    move-object v5, v0

    .line 355
    :goto_3
    if-ne p6, v1, :cond_4

    move-object v6, v0

    .line 358
    :goto_4
    if-ne p7, v1, :cond_5

    move-object v7, v0

    :goto_5
    move-object v0, p0

    move v1, p1

    .line 360
    invoke-virtual/range {v0 .. v7}, Lmf/javax/xml/datatype/DatatypeFactory;->newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Lmf/javax/xml/datatype/Duration;

    move-result-object v0

    return-object v0

    .line 343
    :cond_0
    int-to-long v2, p2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_0

    .line 346
    :cond_1
    int-to-long v4, p3

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_1

    .line 349
    :cond_2
    int-to-long v4, p4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    goto :goto_2

    .line 352
    :cond_3
    int-to-long v6, p5

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    goto :goto_3

    .line 355
    :cond_4
    int-to-long v6, p6

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    goto :goto_4

    .line 358
    :cond_5
    int-to-long v0, p7

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v7

    goto :goto_5
.end method

.method public abstract newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Lmf/javax/xml/datatype/Duration;
.end method

.method public newDurationDayTime(J)Lmf/javax/xml/datatype/Duration;
    .locals 1

    .prologue
    .line 454
    invoke-virtual {p0, p1, p2}, Lmf/javax/xml/datatype/DatatypeFactory;->newDuration(J)Lmf/javax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method

.method public newDurationDayTime(Ljava/lang/String;)Lmf/javax/xml/datatype/Duration;
    .locals 3

    .prologue
    .line 397
    if-eqz p1, :cond_0

    .line 404
    sget-object v0, Lmf/javax/xml/datatype/DatatypeFactory;->XDTSCHEMA_DTD:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 405
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    invoke-virtual {p0, p1}, Lmf/javax/xml/datatype/DatatypeFactory;->newDuration(Ljava/lang/String;)Lmf/javax/xml/datatype/Duration;

    move-result-object v0

    return-object v0

    .line 398
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Trying to create an xdt:dayTimeDuration with an invalid lexical representation of \"null\""

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Trying to create an xdt:dayTimeDuration with an invalid lexical representation of \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\", data model requires years and months only."

    .line 409
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 407
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 406
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newDurationDayTime(ZIIII)Lmf/javax/xml/datatype/Duration;
    .locals 6

    .prologue
    .line 541
    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .line 542
    int-to-long v0, p3

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 543
    int-to-long v0, p4

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    .line 544
    int-to-long v0, p5

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    .line 539
    invoke-virtual/range {v0 .. v5}, Lmf/javax/xml/datatype/DatatypeFactory;->newDurationDayTime(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lmf/javax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method

.method public newDurationDayTime(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lmf/javax/xml/datatype/Duration;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 503
    if-nez p5, :cond_0

    move-object v7, v2

    :goto_0
    move-object v0, p0

    move v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 496
    invoke-virtual/range {v0 .. v7}, Lmf/javax/xml/datatype/DatatypeFactory;->newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Lmf/javax/xml/datatype/Duration;

    move-result-object v0

    return-object v0

    .line 503
    :cond_0
    new-instance v7, Ljava/math/BigDecimal;

    invoke-direct {v7, p5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    goto :goto_0
.end method

.method public newDurationYearMonth(J)Lmf/javax/xml/datatype/Duration;
    .locals 5

    .prologue
    .line 634
    invoke-virtual {p0, p1, p2}, Lmf/javax/xml/datatype/DatatypeFactory;->newDuration(J)Lmf/javax/xml/datatype/Duration;

    move-result-object v3

    .line 635
    invoke-virtual {v3}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 637
    :goto_0
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v3, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    .line 638
    if-eqz v0, :cond_1

    :goto_1
    move-object v2, v0

    .line 640
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v3, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    .line 641
    if-eqz v0, :cond_2

    .line 643
    :goto_2
    invoke-virtual {p0, v1, v2, v0}, Lmf/javax/xml/datatype/DatatypeFactory;->newDurationYearMonth(ZLjava/math/BigInteger;Ljava/math/BigInteger;)Lmf/javax/xml/datatype/Duration;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 635
    goto :goto_0

    .line 638
    :cond_1
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_1

    .line 641
    :cond_2
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_2
.end method

.method public newDurationYearMonth(Ljava/lang/String;)Lmf/javax/xml/datatype/Duration;
    .locals 3

    .prologue
    .line 576
    if-eqz p1, :cond_0

    .line 583
    sget-object v0, Lmf/javax/xml/datatype/DatatypeFactory;->XDTSCHEMA_YMD:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 584
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    invoke-virtual {p0, p1}, Lmf/javax/xml/datatype/DatatypeFactory;->newDuration(Ljava/lang/String;)Lmf/javax/xml/datatype/Duration;

    move-result-object v0

    return-object v0

    .line 577
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Trying to create an xdt:yearMonthDuration with an invalid lexical representation of \"null\""

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 586
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Trying to create an xdt:yearMonthDuration with an invalid lexical representation of \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 587
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\", data model requires days and times only."

    .line 588
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 586
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 585
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newDurationYearMonth(ZII)Lmf/javax/xml/datatype/Duration;
    .locals 4

    .prologue
    .line 712
    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 713
    int-to-long v2, p3

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 710
    invoke-virtual {p0, p1, v0, v1}, Lmf/javax/xml/datatype/DatatypeFactory;->newDurationYearMonth(ZLjava/math/BigInteger;Ljava/math/BigInteger;)Lmf/javax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method

.method public newDurationYearMonth(ZLjava/math/BigInteger;Ljava/math/BigInteger;)Lmf/javax/xml/datatype/Duration;
    .locals 8

    .prologue
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 676
    invoke-virtual/range {v0 .. v7}, Lmf/javax/xml/datatype/DatatypeFactory;->newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Lmf/javax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method

.method public abstract newXMLGregorianCalendar()Lmf/javax/xml/datatype/XMLGregorianCalendar;
.end method

.method public newXMLGregorianCalendar(IIIIIIII)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 11

    .prologue
    const/high16 v2, -0x80000000

    .line 889
    if-ne p1, v2, :cond_0

    const/4 v3, 0x0

    :goto_0
    const/4 v9, 0x0

    const/high16 v2, -0x80000000

    .line 894
    move/from16 v0, p7

    if-ne v0, v2, :cond_1

    :goto_1
    move-object v2, p0

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v10, p8

    .line 906
    invoke-virtual/range {v2 .. v10}, Lmf/javax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v2

    return-object v2

    .line 889
    :cond_0
    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_0

    .line 895
    :cond_1
    if-gez p7, :cond_3

    .line 896
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 897
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "javax.xml.datatype.DatatypeFactory#newXMLGregorianCalendar(int year, int month, int day, int hour, int minute, int second, int millisecond, int timezone)with invalid millisecond: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 899
    move/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 897
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 896
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    const/16 v2, 0x3e8

    .line 895
    move/from16 v0, p7

    if-gt v0, v2, :cond_2

    .line 903
    move/from16 v0, p7

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/math/BigDecimal;->movePointLeft(I)Ljava/math/BigDecimal;

    move-result-object v9

    goto :goto_1
.end method

.method public abstract newXMLGregorianCalendar(Ljava/lang/String;)Lmf/javax/xml/datatype/XMLGregorianCalendar;
.end method

.method public abstract newXMLGregorianCalendar(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)Lmf/javax/xml/datatype/XMLGregorianCalendar;
.end method

.method public abstract newXMLGregorianCalendar(Ljava/util/GregorianCalendar;)Lmf/javax/xml/datatype/XMLGregorianCalendar;
.end method

.method public newXMLGregorianCalendarDate(IIII)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 9

    .prologue
    const/high16 v4, -0x80000000

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, v4

    move v7, v4

    move v8, p4

    .line 947
    invoke-virtual/range {v0 .. v8}, Lmf/javax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(IIIIIIII)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    return-object v0
.end method

.method public newXMLGregorianCalendarTime(IIII)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 9

    .prologue
    const/high16 v1, -0x80000000

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, v1

    move v8, p4

    .line 983
    invoke-virtual/range {v0 .. v8}, Lmf/javax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(IIIIIIII)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    return-object v0
.end method

.method public newXMLGregorianCalendarTime(IIIII)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/high16 v0, -0x80000000

    .line 1063
    if-ne p4, v0, :cond_0

    :goto_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    .line 1075
    invoke-virtual/range {v0 .. v5}, Lmf/javax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendarTime(IIILjava/math/BigDecimal;I)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    return-object v0

    .line 1064
    :cond_0
    if-gez p4, :cond_2

    .line 1065
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1066
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "javax.xml.datatype.DatatypeFactory#newXMLGregorianCalendarTime(int hours, int minutes, int seconds, int milliseconds, int timezone)with invalid milliseconds: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1068
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1066
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1065
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v0, 0x3e8

    .line 1064
    if-gt p4, v0, :cond_1

    .line 1072
    int-to-long v0, p4

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->movePointLeft(I)Ljava/math/BigDecimal;

    move-result-object v4

    goto :goto_0
.end method

.method public newXMLGregorianCalendarTime(IIILjava/math/BigDecimal;I)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 9

    .prologue
    const/high16 v2, -0x80000000

    const/4 v1, 0x0

    move-object v0, p0

    move v3, v2

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    .line 1022
    invoke-virtual/range {v0 .. v8}, Lmf/javax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    return-object v0
.end method
