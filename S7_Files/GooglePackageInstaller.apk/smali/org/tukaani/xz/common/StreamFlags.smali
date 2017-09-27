.class public Lorg/tukaani/xz/common/StreamFlags;
.super Ljava/lang/Object;
.source "StreamFlags.java"


# instance fields
.field public backwardSize:J

.field public checkType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lorg/tukaani/xz/common/StreamFlags;->checkType:I

    .line 14
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/tukaani/xz/common/StreamFlags;->backwardSize:J

    .line 12
    return-void
.end method
