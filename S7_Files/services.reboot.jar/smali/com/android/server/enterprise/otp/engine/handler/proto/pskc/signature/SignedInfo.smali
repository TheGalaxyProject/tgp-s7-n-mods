.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;
.super Ljava/lang/Object;
.source "SignedInfo.java"


# instance fields
.field private canonicalizationMethod:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private referenceDigestMethod:Ljava/lang/String;

.field private referenceDigestValue:[B

.field private referenceId:Ljava/lang/String;

.field private referenceType:Ljava/lang/String;

.field private referenceUri:Ljava/lang/String;

.field private signatureMethodAlgo:Ljava/lang/String;

.field private signatureMethodHmacLength:I

.field private transforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Transforms;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCanonicalizationMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->canonicalizationMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getReferenceDigestMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->referenceDigestMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getReferenceDigestValue()[B
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->referenceDigestValue:[B

    return-object v0
.end method

.method public getReferenceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->referenceId:Ljava/lang/String;

    return-object v0
.end method

.method public getReferenceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->referenceUri:Ljava/lang/String;

    return-object v0
.end method

.method public getReferenceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->referenceType:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatureMethodAlgo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->signatureMethodAlgo:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatureMethodHmacLength()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->signatureMethodHmacLength:I

    return v0
.end method

.method public getTransforms()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Transforms;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->transforms:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setCanonicalizationMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "canonicalizationMethod"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->canonicalizationMethod:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->id:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setReferenceDigestMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "referenceDigestMethod"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->referenceDigestMethod:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setReferenceDigestValue([B)V
    .locals 0
    .param p1, "referenceDigestValue"    # [B

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->referenceDigestValue:[B

    .line 100
    return-void
.end method

.method public setReferenceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "referenceId"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->referenceId:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setReferenceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mReferenceName"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->referenceUri:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setReferenceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "referenceType"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->referenceType:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setSignatureMethodAlgo(Ljava/lang/String;)V
    .locals 0
    .param p1, "signatureMethodAlgo"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->signatureMethodAlgo:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setSignatureMethodHmacLength(I)V
    .locals 0
    .param p1, "signatureMethodHmacLength"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->signatureMethodHmacLength:I

    .line 60
    return-void
.end method

.method public settransforms(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Transforms;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "transforms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Transforms;>;"
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->transforms:Ljava/util/ArrayList;

    .line 108
    return-void
.end method
