.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;
.super Ljava/lang/Object;
.source "X509Data.java"


# instance fields
.field private x509Certificate:[B

.field private x509Crl:[B

.field private x509IssuerName:Ljava/lang/String;

.field private x509SerialNumber:I

.field private x509Ski:[B

.field private x509SubjectName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getX509Certificate()[B
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;->x509Certificate:[B

    return-object v0
.end method

.method public getX509Crl()[B
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;->x509Crl:[B

    return-object v0
.end method

.method public getX509IssuerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;->x509IssuerName:Ljava/lang/String;

    return-object v0
.end method

.method public getX509SerialNumber()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;->x509SerialNumber:I

    return v0
.end method

.method public getX509Ski()[B
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;->x509Ski:[B

    return-object v0
.end method

.method public getX509SubjectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;->x509SubjectName:Ljava/lang/String;

    return-object v0
.end method

.method public setX509Certificate([B)V
    .locals 0
    .param p1, "x509Certificate"    # [B

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;->x509Certificate:[B

    .line 48
    return-void
.end method

.method public setX509Crl([B)V
    .locals 0
    .param p1, "x509Crl"    # [B

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;->x509Crl:[B

    .line 56
    return-void
.end method

.method public setX509IssuerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "x509IssuerName"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;->x509IssuerName:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setX509SerialNumber(I)V
    .locals 0
    .param p1, "x509SerialNumber"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;->x509SerialNumber:I

    .line 24
    return-void
.end method

.method public setX509Ski([B)V
    .locals 0
    .param p1, "x509Ski"    # [B

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;->x509Ski:[B

    .line 32
    return-void
.end method

.method public setX509SubjectName(Ljava/lang/String;)V
    .locals 0
    .param p1, "x509SubjectName"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;->x509SubjectName:Ljava/lang/String;

    .line 40
    return-void
.end method
