.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;
.super Ljava/lang/Object;
.source "ResponseFormat.java"


# instance fields
.field private checkDigit:Z

.field private encoding:I

.field private length:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encodingToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "encoding"    # I

    .prologue
    .line 22
    const/4 v0, 0x0

    .line 23
    .local v0, "result":Ljava/lang/String;
    const/16 v1, 0x141

    if-ne p1, v1, :cond_1

    .line 24
    const-string/jumbo v0, "DECIMAL"

    .line 33
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 25
    .restart local v0    # "result":Ljava/lang/String;
    :cond_1
    const/16 v1, 0x201

    if-ne p1, v1, :cond_2

    .line 26
    const-string/jumbo v0, "HEXADECIMAL"

    .local v0, "result":Ljava/lang/String;
    goto :goto_0

    .line 27
    .local v0, "result":Ljava/lang/String;
    :cond_2
    const/16 v1, 0x202

    if-ne p1, v1, :cond_3

    .line 28
    const-string/jumbo v0, "ALPHANUMERIC"

    .local v0, "result":Ljava/lang/String;
    goto :goto_0

    .line 29
    .local v0, "result":Ljava/lang/String;
    :cond_3
    const/16 v1, 0x203

    if-ne p1, v1, :cond_4

    .line 30
    const-string/jumbo v0, "BASE64"

    .local v0, "result":Ljava/lang/String;
    goto :goto_0

    .line 31
    .local v0, "result":Ljava/lang/String;
    :cond_4
    const/16 v1, 0x204

    if-ne p1, v1, :cond_0

    .line 32
    const-string/jumbo v0, "BINARY"

    .local v0, "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public getCheckDigit()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->checkDigit:Z

    return v0
.end method

.method public getEncoding()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->encoding:I

    return v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->length:I

    return v0
.end method

.method public setCheckDigit(Ljava/lang/String;)V
    .locals 1
    .param p1, "checkDigit"    # Ljava/lang/String;

    .prologue
    .line 55
    if-eqz p1, :cond_0

    .line 56
    const-string/jumbo v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->checkDigit:Z

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->checkDigit:Z

    goto :goto_0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 37
    const-string/jumbo v0, "DECIMAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    const/16 v0, 0x141

    iput v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->encoding:I

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    const-string/jumbo v0, "HEXADECIMAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    const/16 v0, 0x201

    iput v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->encoding:I

    goto :goto_0

    .line 41
    :cond_2
    const-string/jumbo v0, "ALPHANUMERIC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 42
    const/16 v0, 0x202

    iput v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->encoding:I

    goto :goto_0

    .line 43
    :cond_3
    const-string/jumbo v0, "BASE64"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 44
    const/16 v0, 0x203

    iput v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->encoding:I

    goto :goto_0

    .line 45
    :cond_4
    const-string/jumbo v0, "BINARY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const/16 v0, 0x204

    iput v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->encoding:I

    goto :goto_0
.end method

.method public setLength(Ljava/lang/String;)V
    .locals 1
    .param p1, "length"    # Ljava/lang/String;

    .prologue
    .line 69
    if-eqz p1, :cond_0

    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->length:I

    .line 68
    :cond_0
    return-void
.end method
