.class public Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;
.super Ljava/lang/Object;
.source "PersonalPageStorageManager.java"


# static fields
.field private static final MAX_UNMOUNT_TRY_COUNT:I = 0x3

.field private static final PERSONAL_PAGE_DST_PATH:Ljava/lang/String; = "/storage/Private"

.field private static final PERSONAL_PAGE_SRC_PATH:Ljava/lang/String; = "/mnt/shell/privatemode"

.field private static final PRIVATE_FS_KEY:Ljava/lang/String; = "private_fs_key"

.field private static final PRIVATE_FS_KEY_BACKUP:Ljava/lang/String; = "private_fs_key_backup"

.field private static final PRIVATE_FS_PASSWORD_MAX_LENGTH:I = 0x18

.field private static final PRIVATE_MODE_EPM_ID:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "PersonalPageStorageManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPpManager:Lcom/sec/knox/container/util/PrivatePartitionManager;

.field private mSecureProperties:Lcom/samsung/android/personalpage/service/util/SecureProperties;

.field mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mContext:Landroid/content/Context;

    .line 57
    iput-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mPpManager:Lcom/sec/knox/container/util/PrivatePartitionManager;

    .line 60
    iput-object p1, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mContext:Landroid/content/Context;

    .line 61
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "storage"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/knox/container/util/PrivatePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/PrivatePartitionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mPpManager:Lcom/sec/knox/container/util/PrivatePartitionManager;

    .line 64
    new-instance v1, Lcom/samsung/android/personalpage/service/util/SecureProperties;

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/personalpage/service/util/SecureProperties;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mSecureProperties:Lcom/samsung/android/personalpage/service/util/SecureProperties;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private generatePrivateFsKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/16 v3, 0x18

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->generateSha1Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v3, :cond_0

    .line 270
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 273
    :cond_0
    return-object v0
.end method

.method private generateSha1Hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 277
    const/4 v5, 0x0

    .line 280
    .local v5, "hash":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v8, "SHA-1"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 281
    .local v2, "digest":Ljava/security/MessageDigest;
    const-string/jumbo v8, "UTF-8"

    invoke-virtual {p1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 282
    .local v1, "bytes":[B
    array-length v8, v1

    const/4 v9, 0x0

    invoke-virtual {v2, v1, v9, v8}, Ljava/security/MessageDigest;->update([BII)V

    .line 283
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 284
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .local v6, "sb":Ljava/lang/StringBuilder;
    array-length v8, v1

    :goto_0
    if-ge v7, v8, :cond_0

    aget-byte v0, v1, v7

    .line 286
    .local v0, "b":B
    const-string/jumbo v9, "%02X"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 288
    .end local v0    # "b":B
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 295
    .end local v1    # "bytes":[B
    .end local v2    # "digest":Ljava/security/MessageDigest;
    .end local v5    # "hash":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-object v5

    .line 291
    .restart local v5    # "hash":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 292
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 289
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v4

    .line 290
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1
.end method

.method private getPrivateFsKey()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 231
    const/4 v0, 0x0

    .line 233
    .local v0, "fskey":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "pref_pm_first_mount"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mSecureProperties:Lcom/samsung/android/personalpage/service/util/SecureProperties;

    const-string/jumbo v2, "private_fs_key"

    invoke-virtual {v1, v2}, Lcom/samsung/android/personalpage/service/util/SecureProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "fskey":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 236
    const-string/jumbo v1, "PersonalPageStorageManager"

    const-string/jumbo v2, "getPrivateFsKey: Failed to get key value from SecureProperties"

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_0
    :goto_0
    const-string/jumbo v1, "PersonalPageStorageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPrivateFsKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-object v0

    .line 240
    .local v0, "fskey":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mSecureProperties:Lcom/samsung/android/personalpage/service/util/SecureProperties;

    const-string/jumbo v2, "private_fs_key"

    invoke-virtual {v1, v2}, Lcom/samsung/android/personalpage/service/util/SecureProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "fskey":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 242
    invoke-direct {p0, p0}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->generatePrivateFsKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_2

    .line 244
    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->setPrivateFsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    const-string/jumbo v1, "PersonalPageStorageManager"

    const-string/jumbo v2, "getPrivateFsKey: Failed to set PrivateFsKey, so return null"

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-object v4

    .line 249
    :cond_2
    const-string/jumbo v1, "PersonalPageStorageManager"

    const-string/jumbo v2, "getPrivateFsKey: Failed to generate password"

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getPrivateFsKeyBackup()Ljava/lang/String;
    .locals 3

    .prologue
    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, "fskey":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mSecureProperties:Lcom/samsung/android/personalpage/service/util/SecureProperties;

    const-string/jumbo v2, "private_fs_key_backup"

    invoke-virtual {v1, v2}, Lcom/samsung/android/personalpage/service/util/SecureProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "fskey":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 261
    const-string/jumbo v1, "PersonalPageStorageManager"

    const-string/jumbo v2, "getPrivateFsKeyBackup: Failed to get key value from SecureProperties"

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_0
    return-object v0
.end method

.method private loadPrivateVolume()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 299
    const/4 v1, 0x0

    .line 300
    .local v1, "result":Z
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-static {v3, v6}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 302
    .local v2, "volumes":[Landroid/os/storage/StorageVolume;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 303
    const-string/jumbo v3, "PersonalPageStorageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loadPrivateVolume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "/storage/Private"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 305
    const-string/jumbo v3, "PersonalPageStorageManager"

    const-string/jumbo v4, "loadPrivateVolume: already loaded"

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return v7

    .line 302
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v3, :cond_2

    .line 311
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->addPrivateVolume()V

    .line 317
    return v7

    .line 313
    :cond_2
    const-string/jumbo v3, "PersonalPageStorageManager"

    const-string/jumbo v4, "loadPrivateVolume: mStorageManager null!!"

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return v6
.end method

.method private mount()Z
    .locals 7

    .prologue
    const/16 v6, 0x3e8

    const/4 v5, 0x0

    .line 96
    const/4 v1, 0x0

    .line 97
    .local v1, "result":Z
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mPpManager:Lcom/sec/knox/container/util/PrivatePartitionManager;

    if-eqz v2, :cond_1

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->getPrivateFsKey()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "password":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 100
    const-string/jumbo v2, "PersonalPageStorageManager"

    const-string/jumbo v3, "Password is null"

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return v5

    .line 103
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mPpManager:Lcom/sec/knox/container/util/PrivatePartitionManager;

    const-string/jumbo v3, "/mnt/shell/privatemode"

    const-string/jumbo v4, "/storage/Private"

    invoke-virtual {v2, v6, v3, v4, v0}, Lcom/sec/knox/container/util/PrivatePartitionManager;->mountPrivateMode(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 104
    .local v1, "result":Z
    if-eqz v1, :cond_2

    .line 105
    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->setPrivateFsKeyBackup(Ljava/lang/String;)Z

    .line 119
    .end local v0    # "password":Ljava/lang/String;
    .end local v1    # "result":Z
    :cond_1
    :goto_0
    return v1

    .line 108
    .restart local v0    # "password":Ljava/lang/String;
    .restart local v1    # "result":Z
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->getPrivateFsKeyBackup()Ljava/lang/String;

    move-result-object v0

    .line 109
    if-nez v0, :cond_3

    .line 110
    const-string/jumbo v2, "PersonalPageStorageManager"

    const-string/jumbo v3, "Backup Password is null"

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return v5

    .line 113
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mPpManager:Lcom/sec/knox/container/util/PrivatePartitionManager;

    const-string/jumbo v3, "/mnt/shell/privatemode"

    const-string/jumbo v4, "/storage/Private"

    invoke-virtual {v2, v6, v3, v4, v0}, Lcom/sec/knox/container/util/PrivatePartitionManager;->mountPrivateMode(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 114
    if-eqz v1, :cond_1

    .line 115
    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->setPrivateFsKey(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private mountNormal(Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;)Z
    .locals 8
    .param p1, "mPmManagerService"    # Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

    .prologue
    const/16 v7, 0x3e8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 163
    const/4 v1, 0x0

    .line 164
    .local v1, "result":Z
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mPpManager:Lcom/sec/knox/container/util/PrivatePartitionManager;

    if-eqz v2, :cond_1

    .line 165
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->getPrivateFsKey()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "password":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 167
    const-string/jumbo v2, "PersonalPageStorageManager"

    const-string/jumbo v3, "mountNormal : Password is null"

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return v5

    .line 170
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mPpManager:Lcom/sec/knox/container/util/PrivatePartitionManager;

    const-string/jumbo v3, "/mnt/shell/privatemode"

    const-string/jumbo v4, "/storage/Private"

    invoke-virtual {v2, v7, v3, v4, v0}, Lcom/sec/knox/container/util/PrivatePartitionManager;->mountPrivateMode(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 171
    .local v1, "result":Z
    if-eqz v1, :cond_2

    .line 172
    check-cast p1, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    .end local p1    # "mPmManagerService":Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;
    invoke-virtual {p1, v6}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->notifyEventToClient(I)V

    .line 173
    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->setPrivateFsKeyBackup(Ljava/lang/String;)Z

    .line 188
    .end local v0    # "password":Ljava/lang/String;
    .end local v1    # "result":Z
    :cond_1
    :goto_0
    return v1

    .line 176
    .restart local v0    # "password":Ljava/lang/String;
    .restart local v1    # "result":Z
    .restart local p1    # "mPmManagerService":Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->getPrivateFsKeyBackup()Ljava/lang/String;

    move-result-object v0

    .line 177
    if-nez v0, :cond_3

    .line 178
    const-string/jumbo v2, "PersonalPageStorageManager"

    const-string/jumbo v3, "mountNormal : Backup Password is null"

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return v5

    .line 181
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mPpManager:Lcom/sec/knox/container/util/PrivatePartitionManager;

    const-string/jumbo v3, "/mnt/shell/privatemode"

    const-string/jumbo v4, "/storage/Private"

    invoke-virtual {v2, v7, v3, v4, v0}, Lcom/sec/knox/container/util/PrivatePartitionManager;->mountPrivateMode(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 182
    if-eqz v1, :cond_1

    .line 183
    check-cast p1, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    .end local p1    # "mPmManagerService":Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;
    invoke-virtual {p1, v6}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->notifyEventToClient(I)V

    .line 184
    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->setPrivateFsKey(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private setPrivateFsKey(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pwd"    # Ljava/lang/String;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mSecureProperties:Lcom/samsung/android/personalpage/service/util/SecureProperties;

    const-string/jumbo v1, "private_fs_key"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/personalpage/service/util/SecureProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setPrivateFsKeyBackup(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pwd"    # Ljava/lang/String;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mSecureProperties:Lcom/samsung/android/personalpage/service/util/SecureProperties;

    const-string/jumbo v1, "private_fs_key_backup"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/personalpage/service/util/SecureProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private unmount()Z
    .locals 5

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "result":Z
    const/4 v1, 0x0

    .line 125
    .local v1, "retry":I
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mPpManager:Lcom/sec/knox/container/util/PrivatePartitionManager;

    if-eqz v2, :cond_0

    .line 126
    .end local v0    # "result":Z
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mPpManager:Lcom/sec/knox/container/util/PrivatePartitionManager;

    const-string/jumbo v3, "/storage/Private"

    const/16 v4, 0x3e8

    invoke-virtual {v2, v4, v3}, Lcom/sec/knox/container/util/PrivatePartitionManager;->unmountPrivateMode(ILjava/lang/String;)Z

    move-result v0

    .line 128
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 135
    .end local v0    # "result":Z
    :cond_0
    return v0

    .line 131
    .restart local v0    # "result":Z
    :cond_1
    const-string/jumbo v2, "PersonalPageStorageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to unmount, retry cnt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public changeNormalPrivateModeStorage(ZLcom/samsung/android/privatemode/IPrivateModeManager$Stub;)Z
    .locals 4
    .param p1, "mPersonalPageMode"    # Z
    .param p2, "mPmManagerService"    # Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, "result":Z
    const-string/jumbo v1, "PersonalPageStorageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "changeNormalPrivateModeStorage[BEGIN]: Mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v1, :cond_2

    .line 143
    if-eqz p1, :cond_1

    .line 144
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->loadPrivateVolume()Z

    .line 145
    invoke-direct {p0, p2}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mountNormal(Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;)Z

    move-result v0

    .line 146
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 147
    const-string/jumbo v1, "PersonalPageStorageManager"

    const-string/jumbo v2, "changeNormalPrivateModeStorage mount failed"

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->unloadPrivateVolume()Z

    .line 158
    .end local v0    # "result":Z
    :cond_0
    :goto_0
    const-string/jumbo v1, "PersonalPageStorageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "changeNormalPrivateModeStorage[FINISH]: Result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return v0

    .line 152
    .local v0, "result":Z
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->unmount()Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0

    .line 155
    .local v0, "result":Z
    :cond_2
    const-string/jumbo v1, "PersonalPageStorageManager"

    const-string/jumbo v2, "changeNormalPrivateModeStorage Critical Error, storageManager null!!!"

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public changePrivateModeStorage(Z)Z
    .locals 4
    .param p1, "mPersonalPageMode"    # Z

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "result":Z
    const-string/jumbo v1, "PersonalPageStorageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "changePrivateModeStorage[BEGIN]: Mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v1, :cond_2

    .line 76
    if-eqz p1, :cond_1

    .line 77
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->loadPrivateVolume()Z

    .line 78
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mount()Z

    move-result v0

    .line 79
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 80
    const-string/jumbo v1, "PersonalPageStorageManager"

    const-string/jumbo v2, "changePrivateModeStorage mount failed"

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->unloadPrivateVolume()Z

    .line 91
    .end local v0    # "result":Z
    :cond_0
    :goto_0
    const-string/jumbo v1, "PersonalPageStorageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "changePrivateModeStorage[FINISH]: Result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return v0

    .line 85
    .local v0, "result":Z
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->unmount()Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0

    .line 88
    .local v0, "result":Z
    :cond_2
    const-string/jumbo v1, "PersonalPageStorageManager"

    const-string/jumbo v2, "changePrivateModeStorage Critical Error, storageManager null!!!"

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPersonalPageModeChanged(Z)V
    .locals 6
    .param p1, "mPersonalPageMode"    # Z

    .prologue
    .line 193
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v3, :cond_4

    .line 194
    if-eqz p1, :cond_1

    .line 195
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mStorageManager:Landroid/os/storage/StorageManager;

    const-string/jumbo v4, "/storage/Private"

    const-string/jumbo v5, "mounted"

    invoke-virtual {v3, v4, v5}, Landroid/os/storage/StorageManager;->setVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mStorageManager:Landroid/os/storage/StorageManager;

    const-string/jumbo v4, "/storage/Private"

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->getVolume(Ljava/lang/String;)Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 201
    .local v2, "volume":Landroid/os/storage/StorageVolume;
    if-eqz v2, :cond_3

    .line 202
    new-instance v0, Landroid/content/Intent;

    if-eqz p1, :cond_2

    const-string/jumbo v3, "android.intent.action.MEDIA_MOUNTED"

    :goto_1
    const-string/jumbo v4, "file:///storage/Private"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 203
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.os.storage.extra.STORAGE_VOLUME"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 204
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 206
    if-nez p1, :cond_0

    .line 207
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MEDIA_EJECT"

    const-string/jumbo v4, "file:///storage/Private"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 208
    .local v1, "intentForEject":Landroid/content/Intent;
    const-string/jumbo v3, "android.os.storage.extra.STORAGE_VOLUME"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 209
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 210
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->unloadPrivateVolume()Z

    .line 191
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentForEject":Landroid/content/Intent;
    .end local v2    # "volume":Landroid/os/storage/StorageVolume;
    :cond_0
    :goto_2
    return-void

    .line 198
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mStorageManager:Landroid/os/storage/StorageManager;

    const-string/jumbo v4, "/storage/Private"

    const-string/jumbo v5, "unmounted"

    invoke-virtual {v3, v4, v5}, Landroid/os/storage/StorageManager;->setVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    .restart local v2    # "volume":Landroid/os/storage/StorageVolume;
    :cond_2
    const-string/jumbo v3, "android.intent.action.MEDIA_UNMOUNTED"

    goto :goto_1

    .line 214
    :cond_3
    const-string/jumbo v3, "PersonalPageStorageManager"

    const-string/jumbo v4, "onPersonalPageModeChanged: Private Volume is not exist"

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 218
    .end local v2    # "volume":Landroid/os/storage/StorageVolume;
    :cond_4
    const-string/jumbo v3, "PersonalPageStorageManager"

    const-string/jumbo v4, "onPersonalPageModeChanged: StorageManage is null"

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected unloadPrivateVolume()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 321
    const/4 v1, 0x0

    .line 322
    .local v1, "result":Z
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-static {v3, v6}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 324
    .local v2, "volumes":[Landroid/os/storage/StorageVolume;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 325
    const-string/jumbo v3, "PersonalPageStorageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unloadPrivateVolume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "/storage/Private"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 327
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v3, :cond_1

    .line 328
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->removePrivateVolume()V

    .line 324
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    :cond_1
    const-string/jumbo v3, "PersonalPageStorageManager"

    const-string/jumbo v4, "unloadPrivateVolume: mStorageManager null!!"

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    return v6

    .line 335
    :cond_2
    const/4 v3, 0x1

    return v3
.end method
