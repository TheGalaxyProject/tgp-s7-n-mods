.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;
.super Ljava/lang/Object;
.source "CipherData.java"


# instance fields
.field private cipherReferenceTransform:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Transforms;",
            ">;"
        }
    .end annotation
.end field

.field private cipherReferenceURI:Ljava/lang/String;

.field private cipherValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCipherReferenceTransform()Ljava/util/ArrayList;
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
    .line 30
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;->cipherReferenceTransform:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCipherReferenceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;->cipherReferenceURI:Ljava/lang/String;

    return-object v0
.end method

.method public getCipherValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;->cipherValue:Ljava/lang/String;

    return-object v0
.end method

.method public setCipherReferenceTransform(Ljava/util/ArrayList;)V
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
    .line 34
    .local p1, "cipherReferenceTransform":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Transforms;>;"
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;->cipherReferenceTransform:Ljava/util/ArrayList;

    .line 33
    return-void
.end method

.method public setCipherReferenceURI(Ljava/lang/String;)V
    .locals 0
    .param p1, "cipherReferenceURI"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;->cipherReferenceURI:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setCipherValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "cipherValue"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;->cipherValue:Ljava/lang/String;

    .line 17
    return-void
.end method
