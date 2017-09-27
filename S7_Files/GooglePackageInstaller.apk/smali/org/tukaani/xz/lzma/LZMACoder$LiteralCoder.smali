.class abstract Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;
.super Ljava/lang/Object;
.source "LZMACoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tukaani/xz/lzma/LZMACoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "LiteralCoder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder$LiteralSubcoder;
    }
.end annotation


# instance fields
.field private final lc:I

.field private final literalPosMask:I

.field final synthetic this$0:Lorg/tukaani/xz/lzma/LZMACoder;


# direct methods
.method constructor <init>(Lorg/tukaani/xz/lzma/LZMACoder;II)V
    .locals 1
    .param p1, "this$0"    # Lorg/tukaani/xz/lzma/LZMACoder;
    .param p2, "lc"    # I
    .param p3, "lp"    # I

    .prologue
    .line 96
    iput-object p1, p0, Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;->this$0:Lorg/tukaani/xz/lzma/LZMACoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput p2, p0, Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;->lc:I

    .line 98
    const/4 v0, 0x1

    shl-int/2addr v0, p3

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;->literalPosMask:I

    .line 96
    return-void
.end method


# virtual methods
.method final getSubcoderIndex(II)I
    .locals 4
    .param p1, "prevByte"    # I
    .param p2, "pos"    # I

    .prologue
    .line 102
    iget v2, p0, Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;->lc:I

    rsub-int/lit8 v2, v2, 0x8

    shr-int v1, p1, v2

    .line 103
    .local v1, "low":I
    iget v2, p0, Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;->literalPosMask:I

    and-int/2addr v2, p2

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;->lc:I

    shl-int v0, v2, v3

    .line 104
    .local v0, "high":I
    add-int v2, v1, v0

    return v2
.end method
