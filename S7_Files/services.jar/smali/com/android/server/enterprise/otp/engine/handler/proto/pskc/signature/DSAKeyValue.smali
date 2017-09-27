.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/DSAKeyValue;
.super Ljava/lang/Object;
.source "DSAKeyValue.java"


# instance fields
.field private g:[B

.field private j:[B

.field private p:[B

.field private pGenCounter:[B

.field private q:[B

.field private seed:[B

.field private y:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getG()[B
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/DSAKeyValue;->g:[B

    return-object v0
.end method

.method public getJ()[B
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/DSAKeyValue;->j:[B

    return-object v0
.end method

.method public getP()[B
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/DSAKeyValue;->p:[B

    return-object v0
.end method

.method public getPGenCounter()[B
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/DSAKeyValue;->pGenCounter:[B

    return-object v0
.end method

.method public getQ()[B
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/DSAKeyValue;->q:[B

    return-object v0
.end method

.method public getSeed()[B
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/DSAKeyValue;->seed:[B

    return-object v0
.end method

.method public getY()[B
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/DSAKeyValue;->y:[B

    return-object v0
.end method

.method public setG([B)V
    .locals 0
    .param p1, "g"    # [B

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/DSAKeyValue;->g:[B

    .line 40
    return-void
.end method

.method public setJ([B)V
    .locals 0
    .param p1, "j"    # [B

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/DSAKeyValue;->j:[B

    .line 56
    return-void
.end method

.method public setP([B)V
    .locals 0
    .param p1, "p"    # [B

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/DSAKeyValue;->p:[B

    .line 24
    return-void
.end method

.method public setPGenCounter([B)V
    .locals 0
    .param p1, "pGenCounter"    # [B

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/DSAKeyValue;->pGenCounter:[B

    .line 72
    return-void
.end method

.method public setQ([B)V
    .locals 0
    .param p1, "q"    # [B

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/DSAKeyValue;->q:[B

    .line 32
    return-void
.end method

.method public setSeed([B)V
    .locals 0
    .param p1, "seed"    # [B

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/DSAKeyValue;->seed:[B

    .line 64
    return-void
.end method

.method public setY([B)V
    .locals 0
    .param p1, "y"    # [B

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/DSAKeyValue;->y:[B

    .line 48
    return-void
.end method
