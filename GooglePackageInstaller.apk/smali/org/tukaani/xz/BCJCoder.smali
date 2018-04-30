.class abstract Lorg/tukaani/xz/BCJCoder;
.super Ljava/lang/Object;
.source "BCJCoder.java"

# interfaces
.implements Lorg/tukaani/xz/FilterCoder;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBCJFilterID(J)Z
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v2, 0x4

    cmp-long v1, p0, v2

    if-ltz v1, :cond_0

    const-wide/16 v2, 0x9

    cmp-long v1, p0, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public changesSize()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public lastOK()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public nonLastOK()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
