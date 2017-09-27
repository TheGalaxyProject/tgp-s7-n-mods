.class abstract Lorg/tukaani/xz/delta/DeltaCoder;
.super Ljava/lang/Object;
.source "DeltaCoder.java"


# instance fields
.field final distance:I

.field final history:[B

.field pos:I


# direct methods
.method constructor <init>(I)V
    .locals 2
    .param p1, "distance"    # I

    .prologue
    const/16 v1, 0x100

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/tukaani/xz/delta/DeltaCoder;->history:[B

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/delta/DeltaCoder;->pos:I

    .line 22
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    if-le p1, v1, :cond_1

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 25
    :cond_1
    iput p1, p0, Lorg/tukaani/xz/delta/DeltaCoder;->distance:I

    .line 21
    return-void
.end method
