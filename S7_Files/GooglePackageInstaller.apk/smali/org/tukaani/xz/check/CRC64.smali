.class public Lorg/tukaani/xz/check/CRC64;
.super Lorg/tukaani/xz/check/Check;
.source "CRC64.java"


# static fields
.field private static final crcTable:[J


# instance fields
.field private crc:J


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x1

    const/4 v8, 0x1

    .line 14
    const/16 v4, 0x100

    new-array v4, v4, [J

    sput-object v4, Lorg/tukaani/xz/check/CRC64;->crcTable:[J

    .line 19
    const/4 v0, 0x0

    .local v0, "b":I
    :goto_0
    sget-object v4, Lorg/tukaani/xz/check/CRC64;->crcTable:[J

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 20
    int-to-long v2, v0

    .line 21
    .local v2, "r":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v4, 0x8

    if-ge v1, v4, :cond_1

    .line 22
    and-long v4, v2, v10

    cmp-long v4, v4, v10

    if-nez v4, :cond_0

    .line 23
    ushr-long v4, v2, v8

    const-wide v6, -0x3693a86a2878f0beL    # -5.0564049839430436E45

    xor-long v2, v4, v6

    .line 21
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 25
    :cond_0
    ushr-long/2addr v2, v8

    goto :goto_2

    .line 28
    :cond_1
    sget-object v4, Lorg/tukaani/xz/check/CRC64;->crcTable:[J

    aput-wide v2, v4, v0

    .line 19
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12
    .end local v1    # "i":I
    .end local v2    # "r":J
    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/tukaani/xz/check/Check;-><init>()V

    .line 16
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/tukaani/xz/check/CRC64;->crc:J

    .line 33
    const/16 v0, 0x8

    iput v0, p0, Lorg/tukaani/xz/check/CRC64;->size:I

    .line 34
    const-string/jumbo v0, "CRC64"

    iput-object v0, p0, Lorg/tukaani/xz/check/CRC64;->name:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public finish()[B
    .locals 6

    .prologue
    .line 45
    iget-wide v4, p0, Lorg/tukaani/xz/check/CRC64;->crc:J

    not-long v2, v4

    .line 46
    .local v2, "value":J
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lorg/tukaani/xz/check/CRC64;->crc:J

    .line 48
    const/16 v4, 0x8

    new-array v0, v4, [B

    .line 49
    .local v0, "buf":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 50
    mul-int/lit8 v4, v1, 0x8

    shr-long v4, v2, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_0
    return-object v0
.end method

.method public update([BII)V
    .locals 7
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 38
    add-int v0, p2, p3

    .local v0, "end":I
    move v1, p2

    .line 40
    .end local p2    # "off":I
    .local v1, "off":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 41
    sget-object v2, Lorg/tukaani/xz/check/CRC64;->crcTable:[J

    add-int/lit8 p2, v1, 0x1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    aget-byte v3, p1, v1

    iget-wide v4, p0, Lorg/tukaani/xz/check/CRC64;->crc:J

    long-to-int v4, v4

    xor-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    aget-wide v2, v2, v3

    iget-wide v4, p0, Lorg/tukaani/xz/check/CRC64;->crc:J

    const/16 v6, 0x8

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    iput-wide v2, p0, Lorg/tukaani/xz/check/CRC64;->crc:J

    move v1, p2

    .end local p2    # "off":I
    .restart local v1    # "off":I
    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method
