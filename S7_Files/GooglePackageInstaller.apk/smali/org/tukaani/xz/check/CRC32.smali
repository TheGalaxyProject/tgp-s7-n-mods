.class public Lorg/tukaani/xz/check/CRC32;
.super Lorg/tukaani/xz/check/Check;
.source "CRC32.java"


# instance fields
.field private final state:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/tukaani/xz/check/Check;-><init>()V

    .line 13
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/tukaani/xz/check/CRC32;->state:Ljava/util/zip/CRC32;

    .line 16
    const/4 v0, 0x4

    iput v0, p0, Lorg/tukaani/xz/check/CRC32;->size:I

    .line 17
    const-string/jumbo v0, "CRC32"

    iput-object v0, p0, Lorg/tukaani/xz/check/CRC32;->name:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public finish()[B
    .locals 6

    .prologue
    .line 25
    iget-object v1, p0, Lorg/tukaani/xz/check/CRC32;->state:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    .line 26
    .local v2, "value":J
    const/4 v1, 0x4

    new-array v0, v1, [B

    long-to-int v1, v2

    int-to-byte v1, v1

    const/4 v4, 0x0

    aput-byte v1, v0, v4

    .line 27
    const/16 v1, 0x8

    ushr-long v4, v2, v1

    long-to-int v1, v4

    int-to-byte v1, v1

    const/4 v4, 0x1

    aput-byte v1, v0, v4

    .line 28
    const/16 v1, 0x10

    ushr-long v4, v2, v1

    long-to-int v1, v4

    int-to-byte v1, v1

    const/4 v4, 0x2

    aput-byte v1, v0, v4

    .line 29
    const/16 v1, 0x18

    ushr-long v4, v2, v1

    long-to-int v1, v4

    int-to-byte v1, v1

    const/4 v4, 0x3

    aput-byte v1, v0, v4

    .line 30
    .local v0, "buf":[B
    iget-object v1, p0, Lorg/tukaani/xz/check/CRC32;->state:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->reset()V

    .line 31
    return-object v0
.end method

.method public update([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 21
    iget-object v0, p0, Lorg/tukaani/xz/check/CRC32;->state:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 20
    return-void
.end method
