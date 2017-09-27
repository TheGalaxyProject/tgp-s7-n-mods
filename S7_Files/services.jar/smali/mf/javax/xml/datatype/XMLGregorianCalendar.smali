.class public abstract Lmf/javax/xml/datatype/XMLGregorianCalendar;
.super Ljava/lang/Object;
.source "XMLGregorianCalendar.java"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    return-void
.end method


# virtual methods
.method public abstract add(Lmf/javax/xml/datatype/Duration;)V
.end method

.method public abstract clear()V
.end method

.method public abstract clone()Ljava/lang/Object;
.end method

.method public abstract compare(Lmf/javax/xml/datatype/XMLGregorianCalendar;)I
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 709
    if-nez p1, :cond_1

    .line 710
    :cond_0
    return v1

    .line 709
    :cond_1
    instance-of v0, p1, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    if-eqz v0, :cond_0

    .line 712
    check-cast p1, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    invoke-virtual {p0, p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->compare(Lmf/javax/xml/datatype/XMLGregorianCalendar;)I

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public abstract getDay()I
.end method

.method public abstract getEon()Ljava/math/BigInteger;
.end method

.method public abstract getEonAndYear()Ljava/math/BigInteger;
.end method

.method public abstract getFractionalSecond()Ljava/math/BigDecimal;
.end method

.method public abstract getHour()I
.end method

.method public getMillisecond()I
    .locals 2

    .prologue
    .line 630
    invoke-virtual {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getFractionalSecond()Ljava/math/BigDecimal;

    move-result-object v0

    .line 633
    if-eqz v0, :cond_0

    .line 637
    invoke-virtual {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getFractionalSecond()Ljava/math/BigDecimal;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/high16 v0, -0x80000000

    .line 634
    return v0
.end method

.method public abstract getMinute()I
.end method

.method public abstract getMonth()I
.end method

.method public abstract getSecond()I
.end method

.method public abstract getTimeZone(I)Ljava/util/TimeZone;
.end method

.method public abstract getTimezone()I
.end method

.method public abstract getXMLSchemaType()Lmf/javax/xml/namespace/QName;
.end method

.method public abstract getYear()I
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 727
    invoke-virtual {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getTimezone()I

    move-result v0

    const/high16 v2, -0x80000000

    .line 728
    if-eq v0, v2, :cond_0

    .line 732
    :goto_0
    if-nez v0, :cond_1

    .line 735
    :goto_1
    invoke-virtual {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getYear()I

    move-result v0

    .line 736
    invoke-virtual {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getMonth()I

    move-result v1

    .line 735
    add-int/2addr v0, v1

    .line 737
    invoke-virtual {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getDay()I

    move-result v1

    .line 735
    add-int/2addr v0, v1

    .line 738
    invoke-virtual {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getHour()I

    move-result v1

    .line 735
    add-int/2addr v0, v1

    .line 739
    invoke-virtual {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getMinute()I

    move-result v1

    .line 735
    add-int/2addr v0, v1

    .line 740
    invoke-virtual {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getSecond()I

    move-result v1

    .line 735
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v1

    .line 729
    goto :goto_0

    .line 733
    :cond_1
    invoke-virtual {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->normalize()Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object p0

    goto :goto_1
.end method

.method public abstract isValid()Z
.end method

.method public abstract normalize()Lmf/javax/xml/datatype/XMLGregorianCalendar;
.end method

.method public abstract reset()V
.end method

.method public abstract setDay(I)V
.end method

.method public abstract setFractionalSecond(Ljava/math/BigDecimal;)V
.end method

.method public abstract setHour(I)V
.end method

.method public abstract setMillisecond(I)V
.end method

.method public abstract setMinute(I)V
.end method

.method public abstract setMonth(I)V
.end method

.method public abstract setSecond(I)V
.end method

.method public setTime(III)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 366
    invoke-virtual {p0, p1, p2, p3, v0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->setTime(IIILjava/math/BigDecimal;)V

    .line 372
    return-void
.end method

.method public setTime(IIII)V
    .locals 0

    .prologue
    .line 485
    invoke-virtual {p0, p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->setHour(I)V

    .line 486
    invoke-virtual {p0, p2}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->setMinute(I)V

    .line 487
    invoke-virtual {p0, p3}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->setSecond(I)V

    .line 488
    invoke-virtual {p0, p4}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->setMillisecond(I)V

    .line 489
    return-void
.end method

.method public setTime(IIILjava/math/BigDecimal;)V
    .locals 0

    .prologue
    .line 460
    invoke-virtual {p0, p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->setHour(I)V

    .line 461
    invoke-virtual {p0, p2}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->setMinute(I)V

    .line 462
    invoke-virtual {p0, p3}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->setSecond(I)V

    .line 463
    invoke-virtual {p0, p4}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->setFractionalSecond(Ljava/math/BigDecimal;)V

    .line 464
    return-void
.end method

.method public abstract setTimezone(I)V
.end method

.method public abstract setYear(I)V
.end method

.method public abstract setYear(Ljava/math/BigInteger;)V
.end method

.method public abstract toGregorianCalendar()Ljava/util/GregorianCalendar;
.end method

.method public abstract toGregorianCalendar(Ljava/util/TimeZone;Ljava/util/Locale;Lmf/javax/xml/datatype/XMLGregorianCalendar;)Ljava/util/GregorianCalendar;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 886
    invoke-virtual {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->toXMLFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract toXMLFormat()Ljava/lang/String;
.end method
