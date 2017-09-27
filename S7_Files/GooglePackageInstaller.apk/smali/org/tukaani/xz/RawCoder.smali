.class Lorg/tukaani/xz/RawCoder;
.super Ljava/lang/Object;
.source "RawCoder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static validate([Lorg/tukaani/xz/FilterCoder;)V
    .locals 4
    .param p0, "filters"    # [Lorg/tukaani/xz/FilterCoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    .prologue
    .line 15
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 16
    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/tukaani/xz/FilterCoder;->nonLastOK()Z

    move-result v2

    if-nez v2, :cond_0

    .line 17
    new-instance v2, Lorg/tukaani/xz/UnsupportedOptionsException;

    .line 18
    const-string/jumbo v3, "Unsupported XZ filter chain"

    .line 17
    invoke-direct {v2, v3}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 15
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    :cond_1
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, p0, v2

    invoke-interface {v2}, Lorg/tukaani/xz/FilterCoder;->lastOK()Z

    move-result v2

    if-nez v2, :cond_2

    .line 21
    new-instance v2, Lorg/tukaani/xz/UnsupportedOptionsException;

    .line 22
    const-string/jumbo v3, "Unsupported XZ filter chain"

    .line 21
    invoke-direct {v2, v3}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 24
    :cond_2
    const/4 v0, 0x0

    .line 25
    .local v0, "changesSizeCount":I
    const/4 v1, 0x0

    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 26
    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/tukaani/xz/FilterCoder;->changesSize()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 25
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 29
    :cond_4
    const/4 v2, 0x3

    if-le v0, v2, :cond_5

    .line 30
    new-instance v2, Lorg/tukaani/xz/UnsupportedOptionsException;

    .line 31
    const-string/jumbo v3, "Unsupported XZ filter chain"

    .line 30
    invoke-direct {v2, v3}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 14
    :cond_5
    return-void
.end method
