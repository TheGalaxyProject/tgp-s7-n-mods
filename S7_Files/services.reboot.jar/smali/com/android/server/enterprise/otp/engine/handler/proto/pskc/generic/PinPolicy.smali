.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;
.super Ljava/lang/Object;
.source "PinPolicy.java"


# instance fields
.field private maxFailedAttempts:I

.field private maxLength:I

.field private minLength:I

.field private pinEncoding:Ljava/lang/String;

.field private pinKeyId:Ljava/lang/String;

.field private pinUsageMode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxFailedAttempts()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->maxFailedAttempts:I

    return v0
.end method

.method public getMaxLength()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->maxLength:I

    return v0
.end method

.method public getMinLength()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->minLength:I

    return v0
.end method

.method public getPinEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->pinEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getPinKeyID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->pinKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public getPinUsageMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->pinUsageMode:Ljava/lang/String;

    return-object v0
.end method

.method public setMaxFailedAttempts(Ljava/lang/String;)V
    .locals 1
    .param p1, "maxFailedAttempts"    # Ljava/lang/String;

    .prologue
    .line 31
    if-eqz p1, :cond_0

    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->maxFailedAttempts:I

    .line 30
    :cond_0
    return-void
.end method

.method public setMaxLength(Ljava/lang/String;)V
    .locals 1
    .param p1, "maxLength"    # Ljava/lang/String;

    .prologue
    .line 51
    if-eqz p1, :cond_0

    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->maxLength:I

    .line 50
    :cond_0
    return-void
.end method

.method public setMinLength(Ljava/lang/String;)V
    .locals 1
    .param p1, "minLength"    # Ljava/lang/String;

    .prologue
    .line 41
    if-eqz p1, :cond_0

    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->minLength:I

    .line 40
    :cond_0
    return-void
.end method

.method public setPinEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "pinEncoding"    # Ljava/lang/String;

    .prologue
    .line 71
    if-eqz p1, :cond_0

    .line 72
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->pinEncoding:Ljava/lang/String;

    .line 70
    :cond_0
    return-void
.end method

.method public setPinKeyID(Ljava/lang/String;)V
    .locals 0
    .param p1, "pinKeyID"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->pinKeyId:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setPinUsageMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "pinEncoding"    # Ljava/lang/String;

    .prologue
    .line 61
    if-eqz p1, :cond_0

    .line 62
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->pinUsageMode:Ljava/lang/String;

    .line 60
    :cond_0
    return-void
.end method
