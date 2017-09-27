.class public Lcom/android/server/pm/PersonaIdentificationGenerator;
.super Ljava/lang/Object;
.source "PersonaIdentificationGenerator.java"


# static fields
.field private static final KEYSTORE_PATH:Ljava/lang/String; = "/data/idkey"

.field private static final TAG:Ljava/lang/String; = "PersonaIdentificationGenerator"

.field private static final UNIQUE_ID_KEY:Ljava/lang/String; = "uniqueIdKey"

.field private static final VERSION:Ljava/lang/String; = "01"


# instance fields
.field private final mCryptoScheme:Ljava/lang/String;

.field private final mDigest:Ljava/security/MessageDigest;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "cryptoScheme"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-nez p1, :cond_0

    .line 51
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "need to provide a valid crypto scheme"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_0
    :try_start_0
    const-string/jumbo v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PersonaIdentificationGenerator;->mDigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    iput-object p1, p0, Lcom/android/server/pm/PersonaIdentificationGenerator;->mCryptoScheme:Ljava/lang/String;

    .line 49
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Failed to get hash checksum provider"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "plain"    # Ljava/lang/String;

    .prologue
    .line 104
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PersonaIdentificationGenerator;->getKey()Ljavax/crypto/SecretKey;

    move-result-object v7

    .line 105
    .local v7, "key":Ljavax/crypto/SecretKey;
    if-eqz v7, :cond_0

    .line 106
    iget-object v8, p0, Lcom/android/server/pm/PersonaIdentificationGenerator;->mCryptoScheme:Ljava/lang/String;

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 107
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    .line 109
    .local v6, "encryptedBytes":[B
    const/4 v8, 0x0

    invoke-static {v6, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 111
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v6    # "encryptedBytes":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "missing key for persona id encryption"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    .end local v7    # "key":Ljavax/crypto/SecretKey;
    :catch_0
    move-exception v2

    .line 114
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "missing encryption algorithm"

    invoke-direct {v8, v9, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 121
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v5

    .line 122
    .local v5, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "missing padding scheme"

    invoke-direct {v8, v9, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 119
    .end local v5    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v3

    .line 120
    .local v3, "e":Ljavax/crypto/BadPaddingException;
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "bad padding exception"

    invoke-direct {v8, v9, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 117
    .end local v3    # "e":Ljavax/crypto/BadPaddingException;
    :catch_3
    move-exception v4

    .line 118
    .local v4, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "illegal block size"

    invoke-direct {v8, v9, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 115
    .end local v4    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_4
    move-exception v1

    .line 116
    .local v1, "e":Ljava/security/InvalidKeyException;
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "invalid key"

    invoke-direct {v8, v9, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method

.method private getChecksum(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/pm/PersonaIdentificationGenerator;->mDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 93
    iget-object v0, p0, Lcom/android/server/pm/PersonaIdentificationGenerator;->mDigest:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 94
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/server/pm/PersonaIdentificationGenerator;->mDigest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getKey()Ljavax/crypto/SecretKey;
    .locals 18

    .prologue
    .line 132
    const/4 v7, 0x0

    .line 133
    .local v7, "in":Ljava/io/FileInputStream;
    const/4 v12, 0x0

    .line 136
    .local v12, "out":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v11

    .line 137
    .local v11, "mKeyStore":Ljava/security/KeyStore;
    new-instance v4, Ljava/io/File;

    const-string/jumbo v14, "/data/idkey"

    invoke-direct {v4, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .local v4, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_2

    .line 141
    new-instance v13, Ljava/io/FileOutputStream;

    const/4 v14, 0x0

    invoke-direct {v13, v4, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .local v13, "out":Ljava/io/FileOutputStream;
    move-object v12, v13

    .line 150
    .end local v7    # "in":Ljava/io/FileInputStream;
    .end local v12    # "out":Ljava/io/FileOutputStream;
    .end local v13    # "out":Ljava/io/FileOutputStream;
    :goto_0
    const/4 v14, 0x0

    invoke-virtual {v11, v7, v14}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :goto_1
    :try_start_2
    const-string/jumbo v14, "uniqueIdKey"

    invoke-virtual {v11, v14}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 174
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaIdentificationGenerator;->mCryptoScheme:Ljava/lang/String;

    invoke-static {v14}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v5

    .line 175
    .local v5, "generator":Ljavax/crypto/KeyGenerator;
    invoke-virtual {v5}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v9

    .line 177
    .local v9, "key":Ljavax/crypto/SecretKey;
    new-instance v10, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v10, v9}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 178
    .local v10, "keyEntry":Ljava/security/KeyStore$SecretKeyEntry;
    const-string/jumbo v14, "uniqueIdKey"

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v10, v15}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 180
    const/4 v14, 0x0

    invoke-virtual {v11, v12, v14}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V

    .line 181
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    .line 186
    .end local v5    # "generator":Ljavax/crypto/KeyGenerator;
    .end local v9    # "key":Ljavax/crypto/SecretKey;
    :goto_2
    invoke-virtual {v10}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v14

    .line 191
    if-eqz v7, :cond_0

    .line 192
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 195
    :cond_0
    if-eqz v12, :cond_1

    .line 196
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 186
    :cond_1
    :goto_3
    return-object v14

    .line 143
    .end local v10    # "keyEntry":Ljava/security/KeyStore$SecretKeyEntry;
    .restart local v7    # "in":Ljava/io/FileInputStream;
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    :cond_2
    :try_start_4
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_3

    .line 144
    const-string/jumbo v14, "PersonaIdentificationGenerator"

    const-string/jumbo v15, "Creating key file again..."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v13, Ljava/io/FileOutputStream;

    const/4 v14, 0x0

    invoke-direct {v13, v4, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .restart local v13    # "out":Ljava/io/FileOutputStream;
    move-object v12, v13

    .end local v13    # "out":Ljava/io/FileOutputStream;
    .local v12, "out":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 147
    .local v12, "out":Ljava/io/FileOutputStream;
    :cond_3
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .local v8, "in":Ljava/io/FileInputStream;
    move-object v7, v8

    .end local v8    # "in":Ljava/io/FileInputStream;
    .local v7, "in":Ljava/io/FileInputStream;
    goto :goto_0

    .line 151
    .end local v7    # "in":Ljava/io/FileInputStream;
    .end local v12    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v6

    .line 152
    .local v6, "ie":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v14, "PersonaIdentificationGenerator"

    const-string/jumbo v15, "io exception when getting key, removing file"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    if-eqz v12, :cond_d

    .line 155
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 156
    const/4 v12, 0x0

    .restart local v12    # "out":Ljava/io/FileOutputStream;
    move-object v13, v12

    .line 158
    .end local v12    # "out":Ljava/io/FileOutputStream;
    .restart local v13    # "out":Ljava/io/FileOutputStream;
    :goto_4
    if-eqz v7, :cond_4

    .line 159
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 160
    const/4 v7, 0x0

    .line 163
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v14

    if-nez v14, :cond_7

    .line 164
    const-string/jumbo v14, "PersonaIdentificationGenerator"

    const-string/jumbo v15, "failed to delete file"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 165
    const/4 v14, 0x0

    .line 191
    if-eqz v7, :cond_5

    .line 192
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 195
    :cond_5
    if-eqz v13, :cond_6

    .line 196
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 165
    :cond_6
    :goto_5
    return-object v14

    .line 198
    :catch_1
    move-exception v2

    .line 199
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v15, "PersonaIdentificationGenerator"

    const-string/jumbo v16, "failed to close IO"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 168
    .end local v2    # "e":Ljava/io/IOException;
    :cond_7
    :try_start_8
    new-instance v12, Ljava/io/FileOutputStream;

    const/4 v14, 0x0

    invoke-direct {v12, v4, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 169
    .end local v13    # "out":Ljava/io/FileOutputStream;
    .local v12, "out":Ljava/io/FileOutputStream;
    const/4 v14, 0x0

    const/4 v15, 0x0

    :try_start_9
    invoke-virtual {v11, v14, v15}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 187
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "ie":Ljava/io/IOException;
    .end local v11    # "mKeyStore":Ljava/security/KeyStore;
    .end local v12    # "out":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    .line 188
    .local v3, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_a
    const-string/jumbo v14, "PersonaIdentificationGenerator"

    const-string/jumbo v15, "failed to get secret key"

    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 191
    if-eqz v7, :cond_8

    .line 192
    :try_start_b
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 195
    :cond_8
    if-eqz v12, :cond_9

    .line 196
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 203
    :cond_9
    :goto_7
    const/4 v14, 0x0

    return-object v14

    .line 183
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v11    # "mKeyStore":Ljava/security/KeyStore;
    :cond_a
    :try_start_c
    const-string/jumbo v14, "uniqueIdKey"

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v10

    check-cast v10, Ljava/security/KeyStore$SecretKeyEntry;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .restart local v10    # "keyEntry":Ljava/security/KeyStore$SecretKeyEntry;
    goto/16 :goto_2

    .line 198
    :catch_3
    move-exception v2

    .line 199
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v15, "PersonaIdentificationGenerator"

    const-string/jumbo v16, "failed to close IO"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 198
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "file":Ljava/io/File;
    .end local v10    # "keyEntry":Ljava/security/KeyStore$SecretKeyEntry;
    .end local v11    # "mKeyStore":Ljava/security/KeyStore;
    .restart local v3    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 199
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v14, "PersonaIdentificationGenerator"

    const-string/jumbo v15, "failed to close IO"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 189
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    .line 191
    :goto_8
    if-eqz v7, :cond_b

    .line 192
    :try_start_d
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 195
    :cond_b
    if-eqz v12, :cond_c

    .line 196
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .line 189
    :cond_c
    :goto_9
    throw v14

    .line 198
    :catch_5
    move-exception v2

    .line 199
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v15, "PersonaIdentificationGenerator"

    const-string/jumbo v16, "failed to close IO"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 189
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "ie":Ljava/io/IOException;
    .restart local v11    # "mKeyStore":Ljava/security/KeyStore;
    .restart local v13    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v14

    move-object v12, v13

    .end local v13    # "out":Ljava/io/FileOutputStream;
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    goto :goto_8

    .line 187
    .end local v12    # "out":Ljava/io/FileOutputStream;
    .restart local v13    # "out":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    move-object v12, v13

    .end local v13    # "out":Ljava/io/FileOutputStream;
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    goto :goto_6

    .end local v3    # "e":Ljava/lang/Exception;
    .end local v12    # "out":Ljava/io/FileOutputStream;
    :cond_d
    move-object v13, v12

    .restart local v13    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_4
.end method


# virtual methods
.method getId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "01"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "plainText":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/pm/PersonaIdentificationGenerator;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
