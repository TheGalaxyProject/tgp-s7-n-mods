.class public abstract Lcom/samsung/ucm/ucmservice/scp/BerTLV;
.super Ljava/lang/Object;
.source "BerTLV.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;
    }
.end annotation


# instance fields
.field protected mLen:I

.field protected mLenLength:I

.field protected mLevel:I

.field protected mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static isSpecialPrimitiveTag(B)Z
    .locals 1
    .param p0, "tagVal"    # B

    .prologue
    .line 49
    const/16 v0, -0x50

    if-eq p0, v0, :cond_0

    const/16 v0, -0x10

    if-ne p0, v0, :cond_1

    .line 50
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 52
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static parse([B)Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    .locals 2
    .param p0, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;
        }
    .end annotation

    .prologue
    .line 19
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->parse([BII)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v0

    return-object v0
.end method

.method public static parse([BII)Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    .locals 3
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 24
    aget-byte v0, p0, p1

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->isSpecialPrimitiveTag(B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>([BIII)V

    return-object v0

    .line 28
    :cond_0
    aget-byte v0, p0, p1

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 29
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;-><init>([BIII)V

    return-object v0

    .line 31
    :cond_1
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>([BIII)V

    return-object v0
.end method

.method protected static parse([BIII)Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;
        }
    .end annotation

    .prologue
    .line 37
    aget-byte v0, p0, p1

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->isSpecialPrimitiveTag(B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    add-int/lit8 v1, p3, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>([BIII)V

    return-object v0

    .line 41
    :cond_0
    aget-byte v0, p0, p1

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 42
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;

    add-int/lit8 v1, p3, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;-><init>([BIII)V

    return-object v0

    .line 44
    :cond_1
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    add-int/lit8 v1, p3, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>([BIII)V

    return-object v0
.end method


# virtual methods
.method public getFullLen()I
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/Tag;->getLen()I

    move-result v0

    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLenLength:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getLen()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    return v0
.end method

.method public abstract getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;
.end method

.method public getTag()Lcom/samsung/ucm/ucmservice/scp/Tag;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    return-object v0
.end method

.method protected parseLength([BI)I
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;
        }
    .end annotation

    .prologue
    .line 56
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLenLength:I

    .line 57
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    .line 58
    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    const/16 v2, 0x7f

    if-le v1, v2, :cond_0

    .line 59
    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    and-int/lit16 v1, v1, -0x81

    int-to-short v0, v1

    .line 60
    .local v0, "size":S
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    .line 61
    packed-switch v0, :pswitch_data_0

    .line 79
    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string/jumbo v2, "Invalid format (size)"

    invoke-direct {v1, v2}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :pswitch_0
    add-int/lit8 p2, p2, 0x1

    .line 64
    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    .line 67
    :pswitch_1
    add-int/lit8 p2, p2, 0x1

    .line 68
    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    .line 71
    :pswitch_2
    add-int/lit8 p2, p2, 0x1

    .line 72
    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    .line 75
    :pswitch_3
    add-int/lit8 p2, p2, 0x1

    .line 76
    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    .line 81
    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLenLength:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLenLength:I

    .line 83
    .end local v0    # "size":S
    :cond_0
    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLenLength:I

    return v1

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract remove(Lcom/samsung/ucm/ucmservice/scp/Tag;)V
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLevel:I

    .line 93
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 140
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/scp/Tag;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "ret":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "( tag_len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/scp/Tag;->getLen()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", len_length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLenLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    return-object v0
.end method

.method public updateLenLength()V
    .locals 2

    .prologue
    .line 111
    iget v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    const/16 v1, 0x80

    if-ge v0, v1, :cond_1

    .line 112
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLenLength:I

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    const/16 v1, 0x100

    if-ge v0, v1, :cond_2

    .line 114
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLenLength:I

    goto :goto_0

    .line 115
    :cond_2
    iget v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    const/high16 v1, 0x10000

    if-ge v0, v1, :cond_0

    .line 116
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLenLength:I

    goto :goto_0
.end method

.method public abstract updateLength()V
.end method

.method public abstract write([BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public write()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->updateLength()V

    .line 150
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getFullLen()I

    move-result v1

    new-array v0, v1, [B

    .line 151
    .local v0, "res":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->write([BI)I

    .line 152
    return-object v0
.end method

.method public writeLen([BI)I
    .locals 3
    .param p1, "out"    # [B
    .param p2, "outoffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 121
    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    const/16 v2, 0x80

    if-ge v1, v2, :cond_0

    .line 122
    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 123
    const/4 v1, 0x1

    return v1

    .line 124
    :cond_0
    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    const/16 v2, 0x100

    if-ge v1, v2, :cond_1

    .line 125
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "outoffset":I
    .local v0, "outoffset":I
    const/16 v1, -0x7f

    aput-byte v1, p1, p2

    .line 126
    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 127
    const/4 v1, 0x2

    return v1

    .line 128
    .end local v0    # "outoffset":I
    .restart local p2    # "outoffset":I
    :cond_1
    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    const/high16 v2, 0x10000

    if-ge v1, v2, :cond_2

    .line 129
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "outoffset":I
    .restart local v0    # "outoffset":I
    const/16 v1, -0x7e

    aput-byte v1, p1, p2

    .line 130
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "outoffset":I
    .restart local p2    # "outoffset":I
    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 131
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "outoffset":I
    .restart local v0    # "outoffset":I
    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 132
    const/4 v1, 0x3

    return v1

    .line 134
    .end local v0    # "outoffset":I
    .restart local p2    # "outoffset":I
    :cond_2
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "unsupported"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method
