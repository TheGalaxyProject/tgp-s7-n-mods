.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/RSAKeyValue;
.super Ljava/lang/Object;
.source "RSAKeyValue.java"


# instance fields
.field private exponent:[B

.field private modulus:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExponent()[B
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/RSAKeyValue;->exponent:[B

    return-object v0
.end method

.method public getmodulus()[B
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/RSAKeyValue;->modulus:[B

    return-object v0
.end method

.method public setExponent([B)V
    .locals 0
    .param p1, "exponent"    # [B

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/RSAKeyValue;->exponent:[B

    .line 20
    return-void
.end method

.method public setModulus([B)V
    .locals 0
    .param p1, "modulus"    # [B

    .prologue
    .line 13
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/RSAKeyValue;->modulus:[B

    .line 12
    return-void
.end method
