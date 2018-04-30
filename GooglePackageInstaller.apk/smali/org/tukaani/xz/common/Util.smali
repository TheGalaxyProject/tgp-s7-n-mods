.class public Lorg/tukaani/xz/common/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVLISize(J)I
    .locals 4

    const/4 v0, 0x0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x7

    shr-long/2addr p0, v1

    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-nez v1, :cond_0

    return v0
.end method
