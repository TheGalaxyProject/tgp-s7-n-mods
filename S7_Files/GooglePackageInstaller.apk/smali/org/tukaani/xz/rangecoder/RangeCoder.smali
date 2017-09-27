.class public abstract Lorg/tukaani/xz/rangecoder/RangeCoder;
.super Ljava/lang/Object;
.source "RangeCoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final initProbs([S)V
    .locals 1
    .param p0, "probs"    # [S

    .prologue
    .line 24
    const/16 v0, 0x400

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([SS)V

    .line 23
    return-void
.end method
