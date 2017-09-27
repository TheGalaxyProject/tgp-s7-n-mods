.class public Lcom/android/settings/EFSProperties$ODEProperties;
.super Ljava/lang/Object;
.source "EFSProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/EFSProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ODEProperties"
.end annotation


# instance fields
.field public AID:[B

.field public CertAdminID:I

.field public CertAlias:[B

.field public CertLocation:[B

.field public CertUserID:I

.field public authMaxCnt:I

.field public authMode:I

.field public cofiguratorPkg:[B

.field public cofiguratorSign:[B

.field public csName:[B

.field public enabledSCP:I

.field public enabledUCSInODE:I

.field public enabledWrap:I

.field public pinMaxLength:I

.field public pinMinLength:I

.field public pukMaxLength:I

.field public pukMinLength:I

.field public scpCreationParam:[B

.field public storageType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    iput v0, p0, Lcom/android/settings/EFSProperties$ODEProperties;->enabledUCSInODE:I

    .line 494
    iput-object v1, p0, Lcom/android/settings/EFSProperties$ODEProperties;->AID:[B

    .line 495
    iput v0, p0, Lcom/android/settings/EFSProperties$ODEProperties;->storageType:I

    .line 496
    iput v0, p0, Lcom/android/settings/EFSProperties$ODEProperties;->enabledSCP:I

    .line 497
    iput v0, p0, Lcom/android/settings/EFSProperties$ODEProperties;->enabledWrap:I

    .line 498
    iput v0, p0, Lcom/android/settings/EFSProperties$ODEProperties;->pinMinLength:I

    .line 499
    iput v0, p0, Lcom/android/settings/EFSProperties$ODEProperties;->pinMaxLength:I

    .line 500
    iput v0, p0, Lcom/android/settings/EFSProperties$ODEProperties;->authMode:I

    .line 501
    iput v0, p0, Lcom/android/settings/EFSProperties$ODEProperties;->authMaxCnt:I

    .line 502
    iput v0, p0, Lcom/android/settings/EFSProperties$ODEProperties;->pukMinLength:I

    .line 503
    iput v0, p0, Lcom/android/settings/EFSProperties$ODEProperties;->pukMaxLength:I

    .line 504
    iput-object v1, p0, Lcom/android/settings/EFSProperties$ODEProperties;->csName:[B

    .line 505
    iput v0, p0, Lcom/android/settings/EFSProperties$ODEProperties;->CertAdminID:I

    .line 506
    iput v0, p0, Lcom/android/settings/EFSProperties$ODEProperties;->CertUserID:I

    .line 507
    iput-object v1, p0, Lcom/android/settings/EFSProperties$ODEProperties;->CertAlias:[B

    .line 508
    iput-object v1, p0, Lcom/android/settings/EFSProperties$ODEProperties;->CertLocation:[B

    .line 509
    iput-object v1, p0, Lcom/android/settings/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    .line 510
    iput-object v1, p0, Lcom/android/settings/EFSProperties$ODEProperties;->cofiguratorSign:[B

    .line 511
    iput-object v1, p0, Lcom/android/settings/EFSProperties$ODEProperties;->scpCreationParam:[B

    .line 492
    return-void
.end method

.method public static getStorageTypeIndex(Ljava/lang/String;)I
    .locals 6
    .param p0, "storageType"    # Ljava/lang/String;

    .prologue
    .line 540
    sget-object v4, Lcom/android/settings/EFSProperties;->STORAGE_TYPES:[Ljava/lang/String;

    array-length v2, v4

    .line 541
    .local v2, "length":I
    const/4 v1, -0x1

    .line 542
    .local v1, "index":I
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 543
    :cond_0
    return v1

    .line 546
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 547
    .local v3, "lowerStorageType":Ljava/lang/String;
    const-string/jumbo v4, "uicc"

    const-string/jumbo v5, "sim"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 549
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 550
    sget-object v4, Lcom/android/settings/EFSProperties;->STORAGE_TYPES:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 551
    move v1, v0

    .line 552
    return v0

    .line 549
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 557
    :cond_3
    const/16 v1, 0x9

    .line 559
    return v1
.end method
