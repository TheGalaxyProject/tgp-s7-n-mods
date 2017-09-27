.class final Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
.super Ljava/lang/Object;
.source "AbstractDateTimeDV.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/datatypes/XSDateTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DateTimeData"
.end annotation


# instance fields
.field private canonical:Ljava/lang/String;

.field day:I

.field hour:I

.field minute:I

.field month:I

.field normalized:Z

.field private originalValue:Ljava/lang/String;

.field position:I

.field second:D

.field timezoneHr:I

.field timezoneMin:I

.field final type:Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

.field unNormDay:I

.field unNormHour:I

.field unNormMinute:I

.field unNormMonth:I

.field unNormSecond:D

.field unNormYear:I

.field utc:I

.field year:I


# direct methods
.method public constructor <init>(IIIIIDILjava/lang/String;ZLmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;)V
    .locals 2

    .prologue
    .line 939
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 918
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->normalized:Z

    .line 941
    iput p1, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    .line 942
    iput p2, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    .line 943
    iput p3, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    .line 944
    iput p4, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    .line 945
    iput p5, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    .line 946
    iput-wide p6, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    .line 947
    iput p8, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    .line 948
    iput-object p11, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->type:Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

    .line 949
    iput-object p9, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->originalValue:Ljava/lang/String;

    .line 950
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;)V
    .locals 1

    .prologue
    .line 935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 918
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->normalized:Z

    .line 936
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->originalValue:Ljava/lang/String;

    .line 937
    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->type:Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

    .line 938
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 12

    .prologue
    .line 1055
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    .line 1056
    iget v5, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    iget-wide v6, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    iget v8, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    iget-object v9, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->originalValue:Ljava/lang/String;

    iget-boolean v10, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->normalized:Z

    iget-object v11, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->type:Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

    .line 1055
    invoke-direct/range {v0 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;-><init>(IIIIIDILjava/lang/String;ZLmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;)V

    .line 1057
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->canonical:Ljava/lang/String;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->canonical:Ljava/lang/String;

    .line 1058
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->position:I

    iput v1, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->position:I

    .line 1059
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    iput v1, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    .line 1060
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    iput v1, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    .line 1061
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormYear:I

    iput v1, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormYear:I

    .line 1062
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormMonth:I

    iput v1, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormMonth:I

    .line 1063
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormDay:I

    iput v1, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormDay:I

    .line 1064
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormHour:I

    iput v1, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormHour:I

    .line 1065
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormMinute:I

    iput v1, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormMinute:I

    .line 1066
    iget-wide v2, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormSecond:D

    iput-wide v2, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormSecond:D

    .line 1067
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 952
    instance-of v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    if-eqz v0, :cond_0

    .line 954
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->type:Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    invoke-virtual {v0, p0, p1, v2}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->compareDates(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Z)S

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 953
    :cond_0
    return v1

    .line 954
    :cond_1
    return v2
.end method

.method public getDays()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 983
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->type:Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

    instance-of v0, v0, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;

    if-nez v0, :cond_0

    .line 985
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->normalized:Z

    if-nez v0, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormDay:I

    :goto_0
    return v0

    .line 984
    :cond_0
    return v1

    .line 985
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    goto :goto_0
.end method

.method public getDuration()Lmf/javax/xml/datatype/Duration;
    .locals 1

    .prologue
    .line 1080
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->type:Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->getDuration(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lmf/javax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getHours()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 991
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->type:Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

    instance-of v0, v0, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;

    if-nez v0, :cond_0

    .line 993
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->normalized:Z

    if-nez v0, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormHour:I

    :goto_0
    return v0

    .line 992
    :cond_0
    return v1

    .line 993
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    goto :goto_0
.end method

.method public getLexicalValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1034
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->originalValue:Ljava/lang/String;

    return-object v0
.end method

.method public getMinutes()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 999
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->type:Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

    instance-of v0, v0, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;

    if-nez v0, :cond_0

    .line 1001
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->normalized:Z

    if-nez v0, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormMinute:I

    :goto_0
    return v0

    .line 1000
    :cond_0
    return v1

    .line 1001
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    goto :goto_0
.end method

.method public getMonths()I
    .locals 2

    .prologue
    .line 974
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->type:Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

    instance-of v0, v0, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;

    if-nez v0, :cond_0

    .line 977
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->normalized:Z

    if-nez v0, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormMonth:I

    :goto_0
    return v0

    .line 975
    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    mul-int/lit8 v0, v0, 0xc

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    add-int/2addr v0, v1

    return v0

    .line 977
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    goto :goto_0
.end method

.method public getSeconds()D
    .locals 4

    .prologue
    .line 1007
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->type:Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

    instance-of v0, v0, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;

    if-nez v0, :cond_0

    .line 1010
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->normalized:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormSecond:D

    :goto_0
    return-wide v0

    .line 1008
    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    mul-int/lit8 v0, v0, 0x18

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    int-to-double v0, v0

    iget-wide v2, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    add-double/2addr v0, v2

    return-wide v0

    .line 1010
    :cond_1
    iget-wide v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    goto :goto_0
.end method

.method public getTimeZoneHours()I
    .locals 1

    .prologue
    .line 1022
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    return v0
.end method

.method public getTimeZoneMinutes()I
    .locals 1

    .prologue
    .line 1028
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    return v0
.end method

.method public getXMLGregorianCalendar()Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 1

    .prologue
    .line 1074
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->type:Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->getXMLGregorianCalendar(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    return-object v0
.end method

.method public getYears()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 966
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->type:Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

    instance-of v0, v0, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;

    if-nez v0, :cond_0

    .line 968
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->normalized:Z

    if-nez v0, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormYear:I

    :goto_0
    return v0

    .line 967
    :cond_0
    return v1

    .line 968
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    goto :goto_0
.end method

.method public hasTimeZone()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1016
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isNormalized()Z
    .locals 1

    .prologue
    .line 1051
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->normalized:Z

    return v0
.end method

.method public normalize()Lmf/org/apache/xerces/xs/datatypes/XSDateTime;
    .locals 2

    .prologue
    .line 1040
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->normalized:Z

    if-eqz v0, :cond_0

    .line 1045
    return-object p0

    .line 1041
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    .line 1042
    const/4 v1, 0x1

    iput-boolean v1, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->normalized:Z

    .line 1043
    return-object v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    .prologue
    monitor-enter p0

    .line 957
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->canonical:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 960
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->canonical:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 958
    :cond_0
    :try_start_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->type:Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->dateToString(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->canonical:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
