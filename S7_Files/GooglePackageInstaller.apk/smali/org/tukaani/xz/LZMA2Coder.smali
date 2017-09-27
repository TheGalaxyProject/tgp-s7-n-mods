.class abstract Lorg/tukaani/xz/LZMA2Coder;
.super Ljava/lang/Object;
.source "LZMA2Coder.java"

# interfaces
.implements Lorg/tukaani/xz/FilterCoder;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changesSize()Z
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method public lastOK()Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public nonLastOK()Z
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method
