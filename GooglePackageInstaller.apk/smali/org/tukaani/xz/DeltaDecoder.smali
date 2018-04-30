.class Lorg/tukaani/xz/DeltaDecoder;
.super Lorg/tukaani/xz/DeltaCoder;
.source "DeltaDecoder.java"

# interfaces
.implements Lorg/tukaani/xz/FilterDecoder;


# instance fields
.field private final distance:I


# direct methods
.method constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/tukaani/xz/DeltaCoder;-><init>()V

    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string/jumbo v1, "Unsupported Delta filter properties"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/tukaani/xz/DeltaDecoder;->distance:I

    return-void
.end method


# virtual methods
.method public getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2

    new-instance v0, Lorg/tukaani/xz/DeltaInputStream;

    iget v1, p0, Lorg/tukaani/xz/DeltaDecoder;->distance:I

    invoke-direct {v0, p1, v1}, Lorg/tukaani/xz/DeltaInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public getMemoryUsage()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
