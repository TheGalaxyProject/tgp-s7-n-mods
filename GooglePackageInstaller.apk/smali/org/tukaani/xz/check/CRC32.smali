.class public Lorg/tukaani/xz/check/CRC32;
.super Lorg/tukaani/xz/check/Check;
.source "CRC32.java"


# instance fields
.field private final state:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/tukaani/xz/check/Check;-><init>()V

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/tukaani/xz/check/CRC32;->state:Ljava/util/zip/CRC32;

    const/4 v0, 0x4

    iput v0, p0, Lorg/tukaani/xz/check/CRC32;->size:I

    const-string/jumbo v0, "CRC32"

    iput-object v0, p0, Lorg/tukaani/xz/check/CRC32;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public finish()[B
    .locals 6

    iget-object v1, p0, Lorg/tukaani/xz/check/CRC32;->state:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    const/4 v1, 0x4

    new-array v0, v1, [B

    long-to-int v1, v2

    int-to-byte v1, v1

    const/4 v4, 0x0

    aput-byte v1, v0, v4

    const/16 v1, 0x8

    ushr-long v4, v2, v1

    long-to-int v1, v4

    int-to-byte v1, v1

    const/4 v4, 0x1

    aput-byte v1, v0, v4

    const/16 v1, 0x10

    ushr-long v4, v2, v1

    long-to-int v1, v4

    int-to-byte v1, v1

    const/4 v4, 0x2

    aput-byte v1, v0, v4

    const/16 v1, 0x18

    ushr-long v4, v2, v1

    long-to-int v1, v4

    int-to-byte v1, v1

    const/4 v4, 0x3

    aput-byte v1, v0, v4

    iget-object v1, p0, Lorg/tukaani/xz/check/CRC32;->state:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->reset()V

    return-object v0
.end method

.method public update([BII)V
    .locals 1

    iget-object v0, p0, Lorg/tukaani/xz/check/CRC32;->state:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    return-void
.end method
