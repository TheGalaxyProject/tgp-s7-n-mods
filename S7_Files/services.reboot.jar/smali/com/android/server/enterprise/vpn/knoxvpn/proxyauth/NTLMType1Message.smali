.class public Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;
.super Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMBaseMessage;
.source "NTLMType1Message.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NTLMType1Message"

.field private static defaultFlagSet:I


# instance fields
.field private domain:Ljava/lang/String;

.field private type1MessageString:Ljava/lang/String;

.field private workstation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const v0, 0x88207

    sput v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->defaultFlagSet:I

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 18
    sget v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->defaultFlagSet:I

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMBaseMessage;-><init>(II)V

    .line 10
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->type1MessageString:Ljava/lang/String;

    .line 19
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->domain:Ljava/lang/String;

    .line 20
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->workstation:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "workstation"    # Ljava/lang/String;

    .prologue
    .line 24
    sget v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->defaultFlagSet:I

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMBaseMessage;-><init>(II)V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->type1MessageString:Ljava/lang/String;

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->setFlags(I)V

    .line 26
    iput-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->domain:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->workstation:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method protected createMessageString()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 32
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->type1MessageString:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 33
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->type1MessageString:Ljava/lang/String;

    return-object v4

    .line 34
    :cond_0
    const/4 v0, 0x0

    .local v0, "domainBytes":[B
    const/4 v3, 0x0

    .line 36
    .local v3, "workstationBytes":[B
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->domain:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->domain:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 37
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->domain:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Cp850"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 38
    .local v0, "domainBytes":[B
    const/16 v5, 0x1000

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->setThisFlag(IZ)V

    .line 42
    .end local v0    # "domainBytes":[B
    :goto_0
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->workstation:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->workstation:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 43
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->workstation:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Cp850"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 44
    .local v3, "workstationBytes":[B
    const/16 v5, 0x2000

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->setThisFlag(IZ)V

    .line 48
    .end local v3    # "workstationBytes":[B
    :goto_1
    if-nez v0, :cond_5

    move v6, v4

    .line 49
    :goto_2
    if-nez v3, :cond_6

    move v5, v4

    .line 48
    :goto_3
    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x20

    new-array v2, v5, [B

    .line 50
    .local v2, "finalMessageBytes":[B
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->NTLM_HEADER_BYTES:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x8

    invoke-static {v5, v6, v2, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 51
    const/16 v5, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x4

    invoke-static {v2, v5, v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->setUnsignedValue([BIII)V

    .line 52
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->getFlags()I

    move-result v5

    const/16 v6, 0xc

    const/4 v7, 0x4

    invoke-static {v2, v6, v5, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->setUnsignedValue([BIII)V

    .line 53
    const/16 v5, 0x1000

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->isFlagSet(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 54
    const/16 v5, 0x10

    const/16 v6, 0x20

    invoke-static {v2, v5, v6, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    .line 55
    :cond_1
    const/16 v5, 0x2000

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->isFlagSet(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 56
    if-nez v0, :cond_7

    :goto_4
    add-int/lit8 v4, v4, 0x20

    const/16 v5, 0x18

    invoke-static {v2, v5, v4, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    .line 58
    :cond_2
    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->encode([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->type1MessageString:Ljava/lang/String;

    .line 59
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->type1MessageString:Ljava/lang/String;

    return-object v4

    .line 40
    .end local v2    # "finalMessageBytes":[B
    .local v0, "domainBytes":[B
    .local v3, "workstationBytes":[B
    :cond_3
    const/16 v5, 0x1000

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->setThisFlag(IZ)V

    goto :goto_0

    .line 60
    .end local v0    # "domainBytes":[B
    .end local v3    # "workstationBytes":[B
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    return-object v9

    .line 46
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v3    # "workstationBytes":[B
    :cond_4
    const/16 v5, 0x2000

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->setThisFlag(IZ)V

    goto :goto_1

    .line 48
    .end local v3    # "workstationBytes":[B
    :cond_5
    array-length v5, v0

    move v6, v5

    goto :goto_2

    .line 49
    :cond_6
    array-length v5, v3

    goto :goto_3

    .line 56
    .restart local v2    # "finalMessageBytes":[B
    :cond_7
    array-length v4, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4
.end method

.method protected processMessageString(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    return-void
.end method
