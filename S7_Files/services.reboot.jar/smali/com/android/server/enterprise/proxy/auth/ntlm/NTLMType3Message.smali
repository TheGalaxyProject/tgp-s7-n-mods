.class public Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;
.super Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;
.source "NTLMType3Message.java"


# static fields
.field private static final CIPHER_DES_ECB_NO_PADDING:Ljava/lang/String; = "DES/ECB/NoPadding"

.field private static final ENCODING_US_ASCII:Ljava/lang/String; = "US-ASCII"

.field private static final HASH_MD5:Ljava/lang/String; = "MD5"

.field private static final MAGIC:Ljava/lang/String; = "KGS!@#$%"


# instance fields
.field domain:Ljava/lang/String;

.field lmCompatibility:I

.field lmResponse:[B

.field ntResponse:[B

.field password:Ljava/lang/String;

.field private randomBytesGenerator:Ljava/security/SecureRandom;

.field serverChallenge:[B

.field username:Ljava/lang/String;

.field workstation:Ljava/lang/String;


# direct methods
.method public constructor <init>([BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "serverChallenge"    # [B
    .param p2, "finalFlags"    # I
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "workstation"    # Ljava/lang/String;
    .param p7, "lmCompatibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 58
    const/4 v0, 0x3

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;-><init>(II)V

    .line 50
    iput-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->username:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->password:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->domain:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->workstation:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->serverChallenge:[B

    iput-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->lmResponse:[B

    iput-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->ntResponse:[B

    .line 53
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->randomBytesGenerator:Ljava/security/SecureRandom;

    .line 59
    iput-object p3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->username:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->password:Ljava/lang/String;

    .line 61
    iput-object p5, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->domain:Ljava/lang/String;

    .line 62
    iput-object p6, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->workstation:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->serverChallenge:[B

    .line 64
    iput p7, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->lmCompatibility:I

    .line 57
    return-void
.end method

.method private createHashPartForLm([BLjavax/crypto/Cipher;)[B
    .locals 4
    .param p1, "keyBytes"    # [B
    .param p2, "des"    # Ljavax/crypto/Cipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->getSecret([B)Ljava/security/Key;

    move-result-object v1

    .line 163
    .local v1, "key":Ljava/security/Key;
    const/4 v2, 0x1

    invoke-virtual {p2, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 164
    const-string/jumbo v2, "KGS!@#$%"

    const-string/jumbo v3, "US-ASCII"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 165
    .local v0, "hash":[B
    return-object v0
.end method

.method private createKeyFrom([BI)[B
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I

    .prologue
    const/4 v2, 0x7

    .line 80
    new-array v0, v2, [B

    .line 81
    .local v0, "keyBytes":[B
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 82
    return-object v0
.end method

.method private createLMResponse([B[B)[B
    .locals 7
    .param p1, "bytePassword"    # [B
    .param p2, "challenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 173
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->hashForLm([B)[B

    move-result-object v2

    .line 174
    .local v2, "lmHash":[B
    const/16 v5, 0x15

    new-array v1, v5, [B

    .line 175
    .local v1, "keyBytes":[B
    const/16 v5, 0x10

    invoke-static {v2, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 176
    invoke-direct {p0, v1, v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v0

    .line 177
    .local v0, "firstKey":[B
    const/4 v5, 0x7

    invoke-direct {p0, v1, v5}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v3

    .line 178
    .local v3, "secondKey":[B
    const/16 v5, 0xe

    invoke-direct {p0, v1, v5}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v4

    .line 179
    .local v4, "thirdKey":[B
    invoke-direct {p0, p2, v0, v3, v4}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->getLmBytes([B[B[B[B)[B

    move-result-object v5

    return-object v5
.end method

.method private createNTLMResponse([B[B)[B
    .locals 7
    .param p1, "bytePassword"    # [B
    .param p2, "challenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->hashForNtlm([B)[B

    move-result-object v2

    .line 184
    .local v2, "ntlmHash":[B
    const/16 v5, 0x15

    new-array v1, v5, [B

    .line 185
    .local v1, "keyBytes":[B
    const/16 v5, 0x10

    invoke-static {v2, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 186
    invoke-direct {p0, v1, v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v0

    .line 187
    .local v0, "firstKey":[B
    const/4 v5, 0x7

    invoke-direct {p0, v1, v5}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v3

    .line 188
    .local v3, "secondKey":[B
    const/16 v5, 0xe

    invoke-direct {p0, v1, v5}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v4

    .line 189
    .local v4, "thirdKey":[B
    invoke-direct {p0, p2, v0, v3, v4}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->getLmBytes([B[B[B[B)[B

    move-result-object v5

    return-object v5
.end method

.method private createType3Message()[B
    .locals 22

    .prologue
    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->ntResponse:[B

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->lmResponse:[B

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 194
    :cond_0
    const/16 v18, 0x0

    return-object v18

    .line 193
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->username:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 197
    const/16 v18, 0x1

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->isFlagSet(I)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 198
    const-string/jumbo v8, "UTF-16LE"

    .line 201
    .local v8, "encodingStandard":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    .line 202
    .local v4, "domainBytes":[B
    const/4 v5, 0x0

    .line 203
    .local v5, "domainLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->domain:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->domain:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 205
    .local v4, "domainBytes":[B
    array-length v5, v4

    .line 208
    .end local v4    # "domainBytes":[B
    :cond_2
    const/16 v16, 0x0

    .line 209
    .local v16, "workstationBytes":[B
    const/16 v17, 0x0

    .line 210
    .local v17, "workstationLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->workstation:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->workstation:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v16

    .line 212
    .local v16, "workstationBytes":[B
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    .line 215
    .end local v16    # "workstationBytes":[B
    :cond_3
    const/4 v14, 0x0

    .line 216
    .local v14, "usernameBytes":[B
    const/4 v15, 0x0

    .line 217
    .local v15, "usernameLength":I
    const-string/jumbo v18, "Cp850"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->username:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->username:Ljava/lang/String;

    .line 220
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->username:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    .line 221
    .local v14, "usernameBytes":[B
    array-length v15, v14

    .line 223
    const/4 v12, 0x0

    .line 226
    .local v12, "sessionKeyBytes":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->ntResponse:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v10, v0

    .line 227
    .local v10, "ntResponseLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->lmResponse:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v9, v0

    .line 228
    .local v9, "lmResponseLength":I
    add-int/lit8 v18, v5, 0x40

    add-int v18, v18, v15

    add-int v18, v18, v17

    add-int v18, v18, v9

    add-int v18, v18, v10

    add-int/lit8 v18, v18, 0x0

    move/from16 v0, v18

    new-array v13, v0, [B

    .line 231
    .local v13, "type3MessageBytes":[B
    sget-object v18, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->NTLM_HEADER_BYTES:[B

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v13, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 232
    const/16 v18, 0x8

    const/16 v19, 0x3

    const/16 v20, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v13, v0, v1, v2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setUnsignedValue([BIII)V

    .line 233
    const/16 v11, 0x40

    .line 234
    .local v11, "offset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->lmResponse:[B

    move-object/from16 v18, v0

    const/16 v19, 0xc

    move/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v13, v0, v11, v1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    .line 235
    add-int/lit8 v11, v9, 0x40

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->ntResponse:[B

    move-object/from16 v18, v0

    const/16 v19, 0x14

    move/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v13, v0, v11, v1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    .line 237
    add-int/2addr v11, v10

    .line 238
    const/16 v18, 0x1c

    move/from16 v0, v18

    invoke-static {v13, v0, v11, v4}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    .line 239
    add-int/2addr v11, v5

    .line 240
    const/16 v18, 0x24

    move/from16 v0, v18

    invoke-static {v13, v0, v11, v14}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    .line 241
    add-int/2addr v11, v15

    .line 242
    const/16 v18, 0x2c

    move/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v13, v0, v11, v1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    .line 243
    add-int v11, v11, v17

    .line 244
    const/16 v18, 0x34

    move/from16 v0, v18

    invoke-static {v13, v0, v11, v12}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->getFlags()I

    move-result v18

    const/16 v19, 0x3c

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v20

    invoke-static {v13, v0, v1, v2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setUnsignedValue([BIII)V

    .line 246
    return-object v13

    .line 199
    .end local v5    # "domainLength":I
    .end local v8    # "encodingStandard":Ljava/lang/String;
    .end local v9    # "lmResponseLength":I
    .end local v10    # "ntResponseLength":I
    .end local v11    # "offset":I
    .end local v12    # "sessionKeyBytes":[B
    .end local v13    # "type3MessageBytes":[B
    .end local v14    # "usernameBytes":[B
    .end local v15    # "usernameLength":I
    .end local v17    # "workstationLength":I
    :cond_5
    const-string/jumbo v8, "Cp850"
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .restart local v8    # "encodingStandard":Ljava/lang/String;
    goto/16 :goto_0

    .line 248
    .end local v8    # "encodingStandard":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 253
    :goto_1
    const/16 v18, 0x0

    return-object v18

    .line 250
    :catch_1
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method private encriptAndFillResponse([B[B[BLjavax/crypto/Cipher;I)V
    .locals 4
    .param p1, "challenge"    # [B
    .param p2, "keyBytes"    # [B
    .param p3, "result"    # [B
    .param p4, "des"    # Ljavax/crypto/Cipher;
    .param p5, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->getSecret([B)Ljava/security/Key;

    move-result-object v0

    .line 114
    .local v0, "key":Ljava/security/Key;
    const/4 v2, 0x1

    invoke-virtual {p4, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 115
    invoke-virtual {p4, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 116
    .local v1, "partialResult":[B
    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v1, v2, p3, p5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 112
    return-void
.end method

.method private getBytesForNtlm2([B[B[B)[B
    .locals 10
    .param p1, "bytePassword"    # [B
    .param p2, "challenge"    # [B
    .param p3, "clientNonce"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->hashForNtlm([B)[B

    move-result-object v3

    .line 132
    .local v3, "ntlmHash":[B
    const-string/jumbo v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 133
    .local v2, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v2, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 134
    invoke-virtual {v2, p3, v8, v9}, Ljava/security/MessageDigest;->update([BII)V

    .line 135
    new-array v5, v9, [B

    .line 136
    .local v5, "sessionHash":[B
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-static {v7, v8, v5, v8, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 137
    const/16 v7, 0x15

    new-array v1, v7, [B

    .line 138
    .local v1, "keyBytes":[B
    const/16 v7, 0x10

    invoke-static {v3, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 139
    invoke-direct {p0, v1, v8}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v0

    .line 140
    .local v0, "firstKey":[B
    const/4 v7, 0x7

    invoke-direct {p0, v1, v7}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v4

    .line 141
    .local v4, "secondKey":[B
    const/16 v7, 0xe

    invoke-direct {p0, v1, v7}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v6

    .line 142
    .local v6, "thirdKey":[B
    invoke-direct {p0, v5, v0, v4, v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->getLmBytes([B[B[B[B)[B

    move-result-object v7

    return-object v7
.end method

.method private getLmBytes([B[B[B[B)[B
    .locals 6
    .param p1, "challenge"    # [B
    .param p2, "firstKey"    # [B
    .param p3, "secondKey"    # [B
    .param p4, "thirdKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 100
    const/16 v0, 0x18

    new-array v3, v0, [B

    .line 102
    .local v3, "result":[B
    const-string/jumbo v0, "DES/ECB/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 103
    .local v4, "des":Ljavax/crypto/Cipher;
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->encriptAndFillResponse([B[B[BLjavax/crypto/Cipher;I)V

    .line 104
    const/16 v5, 0x8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->encriptAndFillResponse([B[B[BLjavax/crypto/Cipher;I)V

    .line 105
    const/16 v5, 0x10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->encriptAndFillResponse([B[B[BLjavax/crypto/Cipher;I)V

    .line 107
    return-object v3
.end method

.method private getPasswordForLm(Ljava/lang/String;)[B
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Cp850"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private getPasswordForNtlm(Ljava/lang/String;)[B
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 126
    const-string/jumbo v0, "UTF-16LE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private getSecret([B)Ljava/security/Key;
    .locals 4
    .param p1, "keyBytes"    # [B

    .prologue
    const/4 v3, 0x0

    .line 68
    const/16 v2, 0x8

    new-array v1, v2, [B

    .line 69
    .local v1, "material":[B
    aget-byte v2, p1, v3

    aput-byte v2, v1, v3

    .line 70
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 71
    add-int/lit8 v2, v0, -0x1

    aget-byte v2, p1, v2

    array-length v3, v1

    sub-int/2addr v3, v0

    shl-int/2addr v2, v3

    .line 72
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    ushr-int/2addr v3, v0

    .line 71
    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x6

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 75
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->processParityForBytes([B)V

    .line 76
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v3, "DES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v2
.end method

.method private hashForLm([B)[B
    .locals 10
    .param p1, "bytePassword"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v9, 0xe

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 146
    array-length v6, p1

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 147
    .local v3, "length":I
    new-array v2, v9, [B

    .line 148
    .local v2, "keyBytes":[B
    invoke-static {p1, v7, v2, v7, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 149
    const-string/jumbo v6, "DES/ECB/NoPadding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 150
    .local v0, "des":Ljavax/crypto/Cipher;
    invoke-direct {p0, v2, v7}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v6

    invoke-direct {p0, v6, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createHashPartForLm([BLjavax/crypto/Cipher;)[B

    move-result-object v1

    .line 151
    .local v1, "firstHash":[B
    const/4 v6, 0x7

    invoke-direct {p0, v2, v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v6

    invoke-direct {p0, v6, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createHashPartForLm([BLjavax/crypto/Cipher;)[B

    move-result-object v5

    .line 153
    .local v5, "secondHash":[B
    const/16 v6, 0x10

    new-array v4, v6, [B

    .line 154
    .local v4, "lmHash":[B
    invoke-static {v1, v7, v4, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 155
    invoke-static {v5, v7, v4, v8, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 157
    return-object v4
.end method

.method private hashForNtlm([B)[B
    .locals 2
    .param p1, "bytePassword"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;

    invoke-direct {v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;-><init>()V

    .line 121
    .local v0, "md4":Ljava/security/MessageDigest;
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 122
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    return-object v1
.end method

.method private processParityForBytes([B)V
    .locals 6
    .param p1, "bytes"    # [B

    .prologue
    const/4 v3, 0x0

    .line 86
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_2

    .line 87
    aget-byte v0, p1, v1

    .line 88
    .local v0, "b":B
    ushr-int/lit8 v4, v0, 0x7

    ushr-int/lit8 v5, v0, 0x6

    xor-int/2addr v4, v5

    ushr-int/lit8 v5, v0, 0x5

    xor-int/2addr v4, v5

    ushr-int/lit8 v5, v0, 0x4

    xor-int/2addr v4, v5

    ushr-int/lit8 v5, v0, 0x3

    xor-int/2addr v4, v5

    .line 89
    ushr-int/lit8 v5, v0, 0x2

    .line 88
    xor-int/2addr v4, v5

    .line 90
    ushr-int/lit8 v5, v0, 0x1

    .line 88
    xor-int/2addr v4, v5

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    const/4 v2, 0x1

    .line 91
    .local v2, "needsParity":Z
    :goto_1
    if-eqz v2, :cond_1

    .line 92
    aget-byte v4, p1, v1

    or-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, p1, v1

    .line 86
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "needsParity":Z
    :cond_0
    move v2, v3

    .line 88
    goto :goto_1

    .line 94
    .restart local v2    # "needsParity":Z
    :cond_1
    aget-byte v4, p1, v1

    and-int/lit8 v4, v4, -0x2

    int-to-byte v4, v4

    aput-byte v4, p1, v1

    goto :goto_2

    .line 85
    .end local v0    # "b":B
    .end local v2    # "needsParity":Z
    :cond_2
    return-void
.end method


# virtual methods
.method protected createMessageString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 259
    iget-object v4, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->username:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->password:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 260
    :cond_0
    return-object v7

    .line 259
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->serverChallenge:[B

    if-eqz v4, :cond_0

    .line 262
    iget v4, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->lmCompatibility:I

    packed-switch v4, :pswitch_data_0

    .line 296
    :goto_0
    :pswitch_0
    return-object v7

    .line 265
    :pswitch_1
    const/high16 v4, 0x80000

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->isFlagSet(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 266
    const/16 v4, 0x18

    new-array v2, v4, [B

    .line 267
    .local v2, "randomClientNonce":[B
    iget-object v4, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->randomBytesGenerator:Ljava/security/SecureRandom;

    invoke-virtual {v4, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 269
    array-length v4, v2

    .line 268
    const/16 v5, 0x8

    .line 269
    const/4 v6, 0x0

    .line 268
    invoke-static {v2, v5, v4, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 270
    iget-object v4, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->password:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->getPasswordForNtlm(Ljava/lang/String;)[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->serverChallenge:[B

    invoke-direct {p0, v4, v5, v2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->getBytesForNtlm2([B[B[B)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->ntResponse:[B

    .line 272
    iput-object v2, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->lmResponse:[B

    .line 273
    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createType3Message()[B

    move-result-object v3

    .line 274
    .local v3, "type3MessageBytes":[B
    if-nez v3, :cond_2

    .line 275
    return-object v7

    .line 277
    :cond_2
    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "encode":Ljava/lang/String;
    return-object v1

    .line 280
    .end local v1    # "encode":Ljava/lang/String;
    .end local v2    # "randomClientNonce":[B
    .end local v3    # "type3MessageBytes":[B
    :cond_3
    iget-object v4, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->password:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->getPasswordForLm(Ljava/lang/String;)[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->serverChallenge:[B

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createLMResponse([B[B)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->lmResponse:[B

    .line 281
    iget-object v4, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->password:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->getPasswordForNtlm(Ljava/lang/String;)[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->serverChallenge:[B

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createNTLMResponse([B[B)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->ntResponse:[B

    .line 282
    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createType3Message()[B

    move-result-object v3

    .line 283
    .restart local v3    # "type3MessageBytes":[B
    if-nez v3, :cond_4

    .line 284
    return-object v7

    .line 286
    :cond_4
    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 287
    .restart local v1    # "encode":Ljava/lang/String;
    return-object v1

    .line 289
    .end local v1    # "encode":Ljava/lang/String;
    .end local v3    # "type3MessageBytes":[B
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
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
    .line 300
    return-void
.end method
