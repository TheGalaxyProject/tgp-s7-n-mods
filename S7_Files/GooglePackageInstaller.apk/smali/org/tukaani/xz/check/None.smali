.class public Lorg/tukaani/xz/check/None;
.super Lorg/tukaani/xz/check/Check;
.source "None.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/tukaani/xz/check/Check;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/check/None;->size:I

    .line 15
    const-string/jumbo v0, "None"

    iput-object v0, p0, Lorg/tukaani/xz/check/None;->name:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public finish()[B
    .locals 2

    .prologue
    .line 21
    const/4 v1, 0x0

    new-array v0, v1, [B

    .line 22
    .local v0, "empty":[B
    return-object v0
.end method

.method public update([BII)V
    .locals 0
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 18
    return-void
.end method
