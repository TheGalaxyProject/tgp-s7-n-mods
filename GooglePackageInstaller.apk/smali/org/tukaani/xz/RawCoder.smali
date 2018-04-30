.class Lorg/tukaani/xz/RawCoder;
.super Ljava/lang/Object;
.source "RawCoder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static validate([Lorg/tukaani/xz/FilterCoder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/tukaani/xz/FilterCoder;->nonLastOK()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string/jumbo v3, "Unsupported XZ filter chain"

    invoke-direct {v2, v3}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, p0, v2

    invoke-interface {v2}, Lorg/tukaani/xz/FilterCoder;->lastOK()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string/jumbo v3, "Unsupported XZ filter chain"

    invoke-direct {v2, v3}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_4

    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/tukaani/xz/FilterCoder;->changesSize()Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x3

    if-le v0, v2, :cond_5

    new-instance v2, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string/jumbo v3, "Unsupported XZ filter chain"

    invoke-direct {v2, v3}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    return-void
.end method
