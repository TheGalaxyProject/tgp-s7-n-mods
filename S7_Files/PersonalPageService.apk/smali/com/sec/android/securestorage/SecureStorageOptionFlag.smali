.class public final Lcom/sec/android/securestorage/SecureStorageOptionFlag;
.super Ljava/lang/Object;
.source "SecureStorageOptionFlag.java"


# static fields
.field public static final SS_OPTION_CUSTOM_KERNEL_DISALLOW:B = 0x1t

.field public static final SS_OPTION_DEFAULT:B = 0x0t

.field public static final SS_OPTION_PROVISIONED_KEY:B = 0x2t


# instance fields
.field private OptionFlag:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-byte v0, p0, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->OptionFlag:B

    .line 45
    iput-byte v0, p0, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->OptionFlag:B

    .line 44
    return-void
.end method

.method public constructor <init>(B)V
    .locals 1
    .param p1, "inFlag"    # B

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->OptionFlag:B

    .line 38
    invoke-virtual {p0, p1}, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->setFlag(B)V

    .line 37
    return-void
.end method


# virtual methods
.method public getFlag()B
    .locals 1

    .prologue
    .line 64
    iget-byte v0, p0, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->OptionFlag:B

    return v0
.end method

.method public setFlag(B)V
    .locals 0
    .param p1, "inFlag"    # B

    .prologue
    .line 56
    iput-byte p1, p0, Lcom/sec/android/securestorage/SecureStorageOptionFlag;->OptionFlag:B

    .line 55
    return-void
.end method
