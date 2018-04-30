.class public Lorg/tukaani/xz/check/None;
.super Lorg/tukaani/xz/check/Check;
.source "None.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/tukaani/xz/check/Check;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/check/None;->size:I

    const-string/jumbo v0, "None"

    iput-object v0, p0, Lorg/tukaani/xz/check/None;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public finish()[B
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [B

    return-object v0
.end method

.method public update([BII)V
    .locals 0

    return-void
.end method
