.class Lcom/android/server/DirEncryptPrefs;
.super Ljava/lang/Object;
.source "DirEncryptPrefs.java"


# static fields
.field private static final CRYPT_OLD_PREFERENCES_FILE:Ljava/lang/String; = "DirEncryption.Pref"

.field private static final CRYPT_PREFERENCES_FILE:Ljava/lang/String; = "SDCardEncryption.Pref"

.field private static final LOCAL_LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "DirEncryptPrefs"

.field private static final UUID_LIST_MAX_SIZE:I = 0x32

.field private static sPreferences:Lcom/android/server/DirEncryptPrefs;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/server/DirEncryptPrefs;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method private addUUIDPrefs(IILjava/lang/String;)Z
    .locals 21
    .param p1, "isPolicy"    # I
    .param p2, "encrypt_status"    # I
    .param p3, "uuid"    # Ljava/lang/String;

    .prologue
    .line 232
    const/4 v8, 0x0

    .line 233
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v16, 0x0

    .line 234
    .local v16, "writer":Ljava/io/FileWriter;
    const/4 v6, 0x0

    .line 235
    .local v6, "f":Ljava/io/File;
    const/4 v14, 0x0

    .line 236
    .local v14, "update_list":Z
    const/4 v15, 0x0

    .line 237
    .local v15, "update_list_number":I
    const/4 v12, 0x0

    .line 239
    .local v12, "result":Z
    if-nez p3, :cond_0

    .line 240
    const-string/jumbo v18, "SD card uuid field is null"

    invoke-static/range {v18 .. v18}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    .line 241
    return v12

    .line 243
    :cond_0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "[Add UUID] : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    .line 245
    new-instance v6, Ljava/io/File;

    .end local v6    # "f":Ljava/io/File;
    const-string/jumbo v18, "/efs/sec_efs/"

    const-string/jumbo v19, "SDCardEncryption.Pref"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .local v6, "f":Ljava/io/File;
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_3

    .line 248
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 249
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "chmod 644 "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 250
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v8, v9

    .line 292
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    new-instance v17, Ljava/io/FileWriter;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    .end local v16    # "writer":Ljava/io/FileWriter;
    .local v17, "writer":Ljava/io/FileWriter;
    if-nez v17, :cond_b

    .line 294
    const/16 v18, 0x0

    .line 321
    if-eqz v17, :cond_2

    .line 323
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileWriter;->close()V

    .line 324
    const-string/jumbo v19, "add complete"

    invoke-static/range {v19 .. v19}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 295
    :cond_2
    :goto_1
    return v18

    .line 252
    .end local v17    # "writer":Ljava/io/FileWriter;
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "writer":Ljava/io/FileWriter;
    :cond_3
    :try_start_2
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 253
    .local v11, "policy":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 254
    .local v2, "before_policy":I
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/DirEncryptPrefs;->restoreUUIDPrefs(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v8

    .line 255
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v18, "policy"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 258
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v18

    if-eqz v18, :cond_1

    .line 259
    const/4 v13, 0x0

    .line 260
    .local v13, "update":Z
    const/4 v14, 0x1

    .line 261
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v8}, Lcom/android/server/DirEncryptPrefs;->checkUUIDPrefs(Ljava/lang/String;Ljava/util/List;)I

    move-result v15

    .line 262
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v15, v0, :cond_9

    .line 264
    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->unflattenFromString(ILjava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v10

    .line 266
    .local v10, "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    iget v0, v10, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    move/from16 v18, v0

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    const/4 v13, 0x1

    .line 267
    :goto_2
    if-nez p2, :cond_6

    iget v0, v10, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    const/16 v18, 0x1

    :goto_3
    or-int v13, v13, v18

    .line 268
    .local v13, "update":Z
    const/16 v18, 0x1

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    iget v0, v10, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    const/16 v18, 0x1

    :goto_4
    or-int v13, v13, v18

    .line 270
    if-eqz v13, :cond_8

    .line 271
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "SD card status is same "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v10, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    .line 272
    iget v0, v10, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    move/from16 v18, v0

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 273
    const-string/jumbo v18, "Only SD card policy update"

    invoke-static/range {v18 .. v18}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    .line 274
    invoke-direct/range {p0 .. p1}, Lcom/android/server/DirEncryptPrefs;->updateMDMPolicyPrefs(I)Z

    .line 276
    :cond_4
    const/16 v18, 0x1

    .line 277
    return v18

    .line 266
    .local v13, "update":Z
    :cond_5
    const/4 v13, 0x0

    goto :goto_2

    .line 267
    :cond_6
    const/16 v18, 0x0

    goto :goto_3

    .line 268
    .local v13, "update":Z
    :cond_7
    const/16 v18, 0x0

    goto :goto_4

    .line 279
    :cond_8
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 280
    invoke-interface {v8, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 285
    .end local v10    # "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    .end local v13    # "update":Z
    :cond_9
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v18

    const/16 v19, 0x32

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v15, v0, :cond_1

    .line 286
    const-string/jumbo v18, "delete first UUID list"

    invoke-static/range {v18 .. v18}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    .line 287
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v8, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 316
    .end local v2    # "before_policy":I
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "policy":Landroid/os/Bundle;
    :catch_0
    move-exception v3

    .line 317
    .end local v16    # "writer":Ljava/io/FileWriter;
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 321
    if-eqz v16, :cond_a

    .line 323
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileWriter;->close()V

    .line 324
    const-string/jumbo v18, "add complete"

    invoke-static/range {v18 .. v18}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 329
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :cond_a
    :goto_6
    return v12

    .line 298
    .restart local v8    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "writer":Ljava/io/FileWriter;
    :cond_b
    if-eqz v14, :cond_c

    .line 299
    :try_start_5
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 300
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "chmod 644 "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 303
    :cond_c
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "MDM "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 304
    const-string/jumbo v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 305
    if-eqz v14, :cond_d

    .line 306
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    const/4 v7, 0x0

    .local v7, "idx":I
    :goto_7
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_e

    .line 308
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 309
    const-string/jumbo v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 307
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 312
    .end local v7    # "idx":I
    :cond_d
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 313
    const-string/jumbo v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 315
    :cond_e
    const/4 v12, 0x1

    .line 321
    if-eqz v17, :cond_f

    .line 323
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileWriter;->close()V

    .line 324
    const-string/jumbo v18, "add complete"

    invoke-static/range {v18 .. v18}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    :cond_f
    :goto_8
    move-object/from16 v16, v17

    .end local v17    # "writer":Ljava/io/FileWriter;
    .local v16, "writer":Ljava/io/FileWriter;
    goto/16 :goto_6

    .line 318
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v16, "writer":Ljava/io/FileWriter;
    :catch_1
    move-exception v4

    .line 319
    .end local v16    # "writer":Ljava/io/FileWriter;
    .local v4, "e":Ljava/io/IOException;
    :goto_9
    :try_start_7
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 321
    if-eqz v16, :cond_a

    .line 323
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileWriter;->close()V

    .line 324
    const-string/jumbo v18, "add complete"

    invoke-static/range {v18 .. v18}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_6

    .line 325
    :catch_2
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    goto/16 :goto_6

    .line 320
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v18

    .line 321
    :goto_a
    if-eqz v16, :cond_10

    .line 323
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileWriter;->close()V

    .line 324
    const-string/jumbo v19, "add complete"

    invoke-static/range {v19 .. v19}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 320
    :cond_10
    :goto_b
    throw v18

    .line 325
    :catch_3
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    goto :goto_b

    .line 320
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v8    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "writer":Ljava/io/FileWriter;
    :catchall_1
    move-exception v18

    move-object/from16 v16, v17

    .end local v17    # "writer":Ljava/io/FileWriter;
    .local v16, "writer":Ljava/io/FileWriter;
    goto :goto_a

    .line 325
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    goto/16 :goto_6

    .line 316
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v8    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "writer":Ljava/io/FileWriter;
    :catch_5
    move-exception v3

    .restart local v3    # "e":Ljava/io/FileNotFoundException;
    move-object/from16 v16, v17

    .end local v17    # "writer":Ljava/io/FileWriter;
    .restart local v16    # "writer":Ljava/io/FileWriter;
    goto/16 :goto_5

    .line 318
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v16    # "writer":Ljava/io/FileWriter;
    .restart local v17    # "writer":Ljava/io/FileWriter;
    :catch_6
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    move-object/from16 v16, v17

    .end local v17    # "writer":Ljava/io/FileWriter;
    .restart local v16    # "writer":Ljava/io/FileWriter;
    goto :goto_9

    .line 325
    .end local v4    # "e":Ljava/io/IOException;
    .end local v16    # "writer":Ljava/io/FileWriter;
    .restart local v17    # "writer":Ljava/io/FileWriter;
    :catch_7
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    goto :goto_8

    .end local v5    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    goto/16 :goto_1
.end method

.method private checkUUIDPrefs(Ljava/lang/String;)I
    .locals 6
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 131
    const/4 v2, 0x0

    .line 132
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, -0x1

    .line 133
    .local v0, "idx":I
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 134
    .local v3, "policy":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 136
    .local v1, "isPolicy":I
    if-nez p1, :cond_0

    .line 137
    const-string/jumbo v4, "SD card uuid field is null"

    invoke-static {v4}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    .line 138
    return v0

    .line 141
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/server/DirEncryptPrefs;->restoreUUIDPrefs(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v2

    .line 142
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v4, "policy"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 144
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 145
    return v0

    .line 148
    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 149
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "exist list : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    .line 151
    return v0

    .line 148
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_3
    return v0
.end method

.method private checkUUIDPrefs(Ljava/lang/String;Ljava/util/List;)I
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 159
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, -0x1

    .line 160
    .local v0, "idx":I
    if-nez p1, :cond_0

    .line 161
    const-string/jumbo v1, "SD card uuid field is null"

    invoke-static {v1}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    .line 162
    return v0

    .line 165
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 166
    return v0

    .line 169
    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 170
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "exist SD card list : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    .line 172
    return v0

    .line 169
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_3
    const-string/jumbo v1, "can\'t find SD card uuid"

    invoke-static {v1}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    .line 177
    const/4 v0, -0x1

    .line 178
    return v0
.end method

.method public static declared-synchronized getPreferences(Landroid/content/Context;)Lcom/android/server/DirEncryptPrefs;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/android/server/DirEncryptPrefs;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Lcom/android/server/DirEncryptPrefs;->sPreferences:Lcom/android/server/DirEncryptPrefs;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/android/server/DirEncryptPrefs;

    invoke-direct {v0, p0}, Lcom/android/server/DirEncryptPrefs;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/DirEncryptPrefs;->sPreferences:Lcom/android/server/DirEncryptPrefs;

    .line 52
    :cond_0
    sget-object v0, Lcom/android/server/DirEncryptPrefs;->sPreferences:Lcom/android/server/DirEncryptPrefs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 36
    const-string/jumbo v0, "DirEncryptPrefs"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method

.method private static logE(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 40
    const-string/jumbo v0, "DirEncryptPrefs"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void
.end method

.method private removeUUIDPrefs(Ljava/lang/String;)Z
    .locals 18
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 381
    const/4 v8, 0x0

    .line 382
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 383
    .local v5, "f":Ljava/io/File;
    const/4 v2, 0x0

    .line 384
    .local v2, "canRemove":Z
    const/4 v12, 0x0

    .line 385
    .local v12, "result":Z
    const/4 v11, 0x0

    .line 386
    .local v11, "remove_list_number":I
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 387
    .local v10, "policy":Landroid/os/Bundle;
    const/4 v7, 0x0

    .line 388
    .local v7, "isPolicy":I
    const/4 v13, 0x0

    .line 390
    .local v13, "writer":Ljava/io/FileWriter;
    if-nez p1, :cond_0

    .line 391
    const-string/jumbo v15, "SD card uuid field is null"

    invoke-static {v15}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    .line 392
    return v12

    .line 394
    :cond_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "remove uuid : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    .line 396
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/DirEncryptPrefs;->restoreUUIDPrefs(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v8

    .line 397
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v15, "policy"

    invoke-virtual {v10, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 398
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_1

    .line 399
    return v12

    .line 402
    :cond_1
    new-instance v5, Ljava/io/File;

    .end local v5    # "f":Ljava/io/File;
    const-string/jumbo v15, "/efs/sec_efs/"

    const-string/jumbo v16, "SDCardEncryption.Pref"

    move-object/from16 v0, v16

    invoke-direct {v5, v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    .local v5, "f":Ljava/io/File;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Lcom/android/server/DirEncryptPrefs;->checkUUIDPrefs(Ljava/lang/String;Ljava/util/List;)I

    move-result v11

    .line 405
    const/4 v15, -0x1

    if-eq v11, v15, :cond_2

    .line 407
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-static {v7, v15}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->unflattenFromString(ILjava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v9

    .line 409
    .local v9, "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "remove the item : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    .line 410
    invoke-interface {v8, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 411
    const/4 v2, 0x1

    .line 413
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 414
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 418
    .end local v9    # "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    :cond_2
    if-nez v2, :cond_3

    .line 419
    const-string/jumbo v15, "can\'t find remove uuid"

    invoke-static {v15}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    .line 420
    return v12

    .line 424
    :cond_3
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 425
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "chmod 644 "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 427
    new-instance v14, Ljava/io/FileWriter;

    invoke-direct {v14, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    .end local v13    # "writer":Ljava/io/FileWriter;
    .local v14, "writer":Ljava/io/FileWriter;
    :try_start_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "MDM "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 429
    const-string/jumbo v15, "\n"

    invoke-virtual {v14, v15}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 430
    const/4 v6, 0x0

    .local v6, "idx":I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    if-ge v6, v15, :cond_4

    .line 431
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 432
    const-string/jumbo v15, "\n"

    invoke-virtual {v14, v15}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 430
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 434
    :cond_4
    const/4 v12, 0x1

    .line 440
    if-eqz v14, :cond_5

    .line 442
    :try_start_2
    invoke-virtual {v14}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    :goto_1
    move-object v13, v14

    .line 447
    .end local v6    # "idx":I
    .end local v14    # "writer":Ljava/io/FileWriter;
    :cond_6
    :goto_2
    return v12

    .line 443
    .restart local v6    # "idx":I
    .restart local v14    # "writer":Ljava/io/FileWriter;
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    goto :goto_1

    .line 437
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "idx":I
    .end local v14    # "writer":Ljava/io/FileWriter;
    .restart local v13    # "writer":Ljava/io/FileWriter;
    :catch_1
    move-exception v4

    .line 438
    .end local v13    # "writer":Ljava/io/FileWriter;
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 440
    if-eqz v13, :cond_6

    .line 442
    :try_start_4
    invoke-virtual {v13}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 443
    :catch_2
    move-exception v4

    goto :goto_2

    .line 435
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v13    # "writer":Ljava/io/FileWriter;
    :catch_3
    move-exception v3

    .line 436
    .end local v13    # "writer":Ljava/io/FileWriter;
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 440
    if-eqz v13, :cond_6

    .line 442
    :try_start_6
    invoke-virtual {v13}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 443
    :catch_4
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 439
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v15

    .line 440
    :goto_5
    if-eqz v13, :cond_7

    .line 442
    :try_start_7
    invoke-virtual {v13}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 439
    :cond_7
    :goto_6
    throw v15

    .line 443
    :catch_5
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 439
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v14    # "writer":Ljava/io/FileWriter;
    :catchall_1
    move-exception v15

    move-object v13, v14

    .end local v14    # "writer":Ljava/io/FileWriter;
    .local v13, "writer":Ljava/io/FileWriter;
    goto :goto_5

    .line 435
    .end local v13    # "writer":Ljava/io/FileWriter;
    .restart local v14    # "writer":Ljava/io/FileWriter;
    :catch_6
    move-exception v3

    .restart local v3    # "e":Ljava/io/FileNotFoundException;
    move-object v13, v14

    .end local v14    # "writer":Ljava/io/FileWriter;
    .restart local v13    # "writer":Ljava/io/FileWriter;
    goto :goto_4

    .line 437
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v13    # "writer":Ljava/io/FileWriter;
    .restart local v14    # "writer":Ljava/io/FileWriter;
    :catch_7
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    move-object v13, v14

    .end local v14    # "writer":Ljava/io/FileWriter;
    .restart local v13    # "writer":Ljava/io/FileWriter;
    goto :goto_3
.end method

.method private restoreUUIDPrefs(Landroid/os/Bundle;)Ljava/util/List;
    .locals 12
    .param p1, "policy"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 335
    .local v7, "reader":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 337
    .local v6, "read_data":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    const-string/jumbo v10, "/efs/sec_efs/"

    const-string/jumbo v11, "SDCardEncryption.Pref"

    invoke-direct {v3, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 344
    :try_start_0
    const-string/jumbo v10, "restoreUUIDPrefs"

    invoke-static {v10}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    .line 345
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v8, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 348
    .local v6, "read_data":Ljava/lang/String;
    if-nez v6, :cond_2

    .line 349
    const-string/jumbo v10, "read data is null from file"

    invoke-static {v10}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 363
    if-eqz v8, :cond_0

    .line 365
    :try_start_2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 350
    :cond_0
    :goto_0
    return-object v5

    .line 339
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v6, "read_data":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :cond_1
    const-string/jumbo v10, "Can\'t read or open pref file"

    invoke-static {v10}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    .line 340
    return-object v5

    .line 366
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v6, "read_data":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 352
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_3
    const-string/jumbo v10, "policy"

    const/4 v11, 0x4

    invoke-virtual {v6, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 355
    :goto_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 356
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 358
    .end local v6    # "read_data":Ljava/lang/String;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/NumberFormatException;
    move-object v7, v8

    .line 359
    .end local v8    # "reader":Ljava/io/BufferedReader;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 363
    if-eqz v7, :cond_3

    .line 365
    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 370
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    :goto_3
    const-string/jumbo v10, "#########################################"

    invoke-static {v10}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    .line 371
    const/4 v4, 0x0

    .local v4, "idx":I
    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_7

    .line 372
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 373
    .local v9, "test":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[List "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "] "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    .line 371
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 363
    .end local v4    # "idx":I
    .end local v9    # "test":Ljava/lang/String;
    .restart local v6    # "read_data":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :cond_4
    if-eqz v8, :cond_5

    .line 365
    :try_start_6
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_5
    :goto_5
    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v7, "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 366
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    goto :goto_5

    .line 360
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v6, "read_data":Ljava/lang/String;
    .local v7, "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v0

    .line 361
    .end local v6    # "read_data":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/IOException;
    :goto_6
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 363
    if-eqz v7, :cond_3

    .line 365
    :try_start_8
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    .line 366
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    goto :goto_3

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    :catch_5
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 362
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v10

    .line 363
    :goto_7
    if-eqz v7, :cond_6

    .line 365
    :try_start_9
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 362
    :cond_6
    :goto_8
    throw v10

    .line 366
    :catch_6
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    goto :goto_8

    .line 375
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "idx":I
    :cond_7
    const-string/jumbo v10, "#########################################"

    invoke-static {v10}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    .line 377
    return-object v5

    .line 362
    .end local v4    # "idx":I
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v10

    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v7, "reader":Ljava/io/BufferedReader;
    goto :goto_7

    .line 358
    .restart local v6    # "read_data":Ljava/lang/String;
    .local v7, "reader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v2

    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    goto :goto_2

    .line 360
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "read_data":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :catch_8
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v7, "reader":Ljava/io/BufferedReader;
    goto :goto_6
.end method

.method private updateMDMPolicyPrefs(I)Z
    .locals 14
    .param p1, "isPolicy"    # I

    .prologue
    .line 182
    const/4 v9, 0x0

    .line 183
    .local v9, "writer":Ljava/io/FileWriter;
    const/4 v4, 0x0

    .line 184
    .local v4, "f":Ljava/io/File;
    const/4 v8, 0x0

    .line 186
    .local v8, "result":Z
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 187
    .local v7, "policy":Landroid/os/Bundle;
    invoke-direct {p0, v7}, Lcom/android/server/DirEncryptPrefs;->restoreUUIDPrefs(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v6

    .line 188
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v11, "policy"

    invoke-virtual {v7, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 190
    .local v0, "before_policy":I
    if-ne p1, v0, :cond_0

    .line 191
    const-string/jumbo v11, "policy is same"

    invoke-static {v11}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    .line 192
    return v8

    .line 195
    :cond_0
    new-instance v4, Ljava/io/File;

    .end local v4    # "f":Ljava/io/File;
    const-string/jumbo v11, "/efs/sec_efs/"

    const-string/jumbo v12, "SDCardEncryption.Pref"

    invoke-direct {v4, v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 197
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 201
    :cond_1
    :try_start_0
    new-instance v10, Ljava/io/FileWriter;

    invoke-direct {v10, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    .end local v9    # "writer":Ljava/io/FileWriter;
    .local v10, "writer":Ljava/io/FileWriter;
    if-nez v10, :cond_3

    .line 184
    const/4 v11, 0x0

    .line 221
    if-eqz v10, :cond_2

    .line 223
    :try_start_1
    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 203
    :cond_2
    :goto_0
    return v11

    .line 224
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 206
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 207
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "chmod 644 "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 209
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "MDM "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 210
    const-string/jumbo v11, "\n"

    invoke-virtual {v10, v11}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 211
    const/4 v5, 0x0

    .local v5, "idx":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_4

    .line 212
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 213
    const-string/jumbo v11, "\n"

    invoke-virtual {v10, v11}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 211
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 215
    :cond_4
    const/4 v8, 0x1

    .line 221
    if-eqz v10, :cond_5

    .line 223
    :try_start_3
    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_5
    :goto_2
    move-object v9, v10

    .line 228
    .end local v5    # "idx":I
    .end local v10    # "writer":Ljava/io/FileWriter;
    :cond_6
    :goto_3
    return v8

    .line 224
    .restart local v5    # "idx":I
    .restart local v10    # "writer":Ljava/io/FileWriter;
    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 218
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "idx":I
    .end local v10    # "writer":Ljava/io/FileWriter;
    .restart local v9    # "writer":Ljava/io/FileWriter;
    :catch_2
    move-exception v2

    .line 219
    .end local v9    # "writer":Ljava/io/FileWriter;
    .local v2, "e":Ljava/io/IOException;
    :goto_4
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 221
    if-eqz v9, :cond_6

    .line 223
    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    .line 224
    :catch_3
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 216
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v9    # "writer":Ljava/io/FileWriter;
    :catch_4
    move-exception v1

    .line 217
    .end local v9    # "writer":Ljava/io/FileWriter;
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 221
    if-eqz v9, :cond_6

    .line 223
    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_3

    .line 224
    :catch_5
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 220
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 221
    :goto_6
    if-eqz v9, :cond_7

    .line 223
    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 220
    :cond_7
    :goto_7
    throw v11

    .line 224
    :catch_6
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    goto :goto_7

    .line 220
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v10    # "writer":Ljava/io/FileWriter;
    :catchall_1
    move-exception v11

    move-object v9, v10

    .end local v10    # "writer":Ljava/io/FileWriter;
    .local v9, "writer":Ljava/io/FileWriter;
    goto :goto_6

    .line 216
    .end local v9    # "writer":Ljava/io/FileWriter;
    .restart local v10    # "writer":Ljava/io/FileWriter;
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    move-object v9, v10

    .end local v10    # "writer":Ljava/io/FileWriter;
    .restart local v9    # "writer":Ljava/io/FileWriter;
    goto :goto_5

    .line 218
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v9    # "writer":Ljava/io/FileWriter;
    .restart local v10    # "writer":Ljava/io/FileWriter;
    :catch_8
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v9, v10

    .end local v10    # "writer":Ljava/io/FileWriter;
    .restart local v9    # "writer":Ljava/io/FileWriter;
    goto :goto_4
.end method


# virtual methods
.method public checkPolicyEnable()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 123
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 124
    .local v2, "policy":Landroid/os/Bundle;
    invoke-direct {p0, v2}, Lcom/android/server/DirEncryptPrefs;->restoreUUIDPrefs(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v1

    .line 125
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v4, "policy"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 127
    .local v0, "isPolicy":I
    if-ne v0, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public clearPrefs(Ljava/lang/String;)V
    .locals 6
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 63
    const-string/jumbo v4, "clearPrefs()"

    invoke-static {v4}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    .line 64
    invoke-direct {p0, p1}, Lcom/android/server/DirEncryptPrefs;->removeUUIDPrefs(Ljava/lang/String;)Z

    .line 66
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 67
    .local v3, "policy":Landroid/os/Bundle;
    invoke-direct {p0, v3}, Lcom/android/server/DirEncryptPrefs;->restoreUUIDPrefs(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v2

    .line 68
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v4, "policy"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 70
    .local v1, "isPolicy":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UUID list size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isPolicy : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    .line 72
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    if-nez v1, :cond_0

    .line 73
    new-instance v0, Ljava/io/File;

    const-string/jumbo v4, "/efs/sec_efs/"

    const-string/jumbo v5, "SDCardEncryption.Pref"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 75
    const-string/jumbo v4, "There is no list, so delete internal meta file !!!"

    invoke-static {v4}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 62
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public haveEncPrefs()Z
    .locals 3

    .prologue
    .line 56
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/efs/sec_efs/"

    const-string/jumbo v2, "SDCardEncryption.Pref"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public migrationUUIDPrefs(Ljava/lang/String;Z)I
    .locals 14
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "isPolicy"    # Z

    .prologue
    .line 451
    const/4 v9, 0x0

    .line 452
    .local v9, "reader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 453
    .local v5, "f":Ljava/io/File;
    const/4 v7, -0x1

    .line 455
    .local v7, "rc":I
    if-nez p1, :cond_0

    .line 456
    const-string/jumbo v12, "SD card uuid field for migration is null"

    invoke-static {v12}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    .line 457
    return v7

    .line 460
    :cond_0
    new-instance v5, Ljava/io/File;

    .end local v5    # "f":Ljava/io/File;
    const-string/jumbo v12, "/efs/"

    const-string/jumbo v13, "DirEncryption.Pref"

    invoke-direct {v5, v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 463
    const/4 v8, 0x0

    .line 464
    .local v8, "read_data":Ljava/lang/String;
    :try_start_0
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/FileReader;

    invoke-direct {v12, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    .local v10, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v9    # "reader":Ljava/io/BufferedReader;
    move-result-object v8

    .line 466
    .local v8, "read_data":Ljava/lang/String;
    if-nez v8, :cond_2

    .line 453
    const/4 v12, -0x1

    .line 490
    if-eqz v10, :cond_1

    .line 492
    :try_start_2
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 467
    :cond_1
    :goto_0
    return v12

    .line 493
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 470
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_3
    const-string/jumbo v12, " "

    invoke-virtual {v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 471
    .local v11, "values":[Ljava/lang/String;
    const/4 v3, 0x3

    .line 472
    .local v3, "enc":I
    const/4 v6, 0x4

    .line 473
    .local v6, "fullEnc":I
    const/4 v4, 0x7

    .line 475
    .local v4, "excludeMedia":I
    const/4 v12, 0x0

    aget-object v12, v11, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 476
    const/4 v12, 0x1

    aget-object v12, v11, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 477
    const/4 v12, 0x2

    aget-object v12, v11, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 479
    const/4 v12, 0x2

    if-ne v3, v12, :cond_3

    .line 480
    if-eqz p2, :cond_6

    const/4 v12, 0x1

    :goto_1
    const/4 v13, 0x2

    invoke-direct {p0, v12, v13, p1}, Lcom/android/server/DirEncryptPrefs;->addUUIDPrefs(IILjava/lang/String;)Z

    .line 483
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 484
    const/4 v7, 0x0

    .line 490
    if-eqz v10, :cond_4

    .line 492
    :try_start_4
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    :goto_2
    move-object v9, v10

    .line 496
    .end local v3    # "enc":I
    .end local v4    # "excludeMedia":I
    .end local v6    # "fullEnc":I
    .end local v8    # "read_data":Ljava/lang/String;
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .end local v11    # "values":[Ljava/lang/String;
    :cond_5
    :goto_3
    const-string/jumbo v12, "Migration Success [Encryption Policy File]"

    invoke-static {v12}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    .line 501
    :goto_4
    return v7

    .line 480
    .restart local v3    # "enc":I
    .restart local v4    # "excludeMedia":I
    .restart local v6    # "fullEnc":I
    .restart local v8    # "read_data":Ljava/lang/String;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "values":[Ljava/lang/String;
    :cond_6
    const/4 v12, 0x0

    goto :goto_1

    .line 493
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 487
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "enc":I
    .end local v4    # "excludeMedia":I
    .end local v6    # "fullEnc":I
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .end local v11    # "values":[Ljava/lang/String;
    .local v8, "read_data":Ljava/lang/String;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    .line 488
    .end local v8    # "read_data":Ljava/lang/String;
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/IOException;
    :goto_5
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 490
    if-eqz v9, :cond_5

    .line 492
    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    .line 493
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 485
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v8    # "read_data":Ljava/lang/String;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    .line 486
    .end local v8    # "read_data":Ljava/lang/String;
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/lang/NumberFormatException;
    :goto_6
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 490
    if-eqz v9, :cond_5

    .line 492
    :try_start_8
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_3

    .line 493
    :catch_5
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 489
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v12

    .line 490
    :goto_7
    if-eqz v9, :cond_7

    .line 492
    :try_start_9
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 489
    :cond_7
    :goto_8
    throw v12

    .line 493
    :catch_6
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    goto :goto_8

    .line 498
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :cond_8
    const-string/jumbo v12, "There is no old encryption pref file"

    invoke-static {v12}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    goto :goto_4

    .line 489
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v12

    move-object v9, v10

    .end local v10    # "reader":Ljava/io/BufferedReader;
    .local v9, "reader":Ljava/io/BufferedReader;
    goto :goto_7

    .line 485
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v2

    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    move-object v9, v10

    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    goto :goto_6

    .line 487
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :catch_8
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v9, v10

    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    goto :goto_5
.end method

.method public restorePrefs(Ljava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    .locals 8
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 83
    new-instance v2, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-direct {v2}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>()V

    .line 86
    .local v2, "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    const/4 v4, 0x0

    .line 87
    .local v4, "update_list":Z
    const/4 v5, 0x0

    .line 89
    .local v5, "update_list_number":I
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 90
    .local v3, "policy":Landroid/os/Bundle;
    invoke-direct {p0, v3}, Lcom/android/server/DirEncryptPrefs;->restoreUUIDPrefs(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v1

    .line 91
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v6, "policy"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 93
    .local v0, "isPolicy":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restorePrefs() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    .line 95
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 96
    const/4 v4, 0x1

    .line 97
    invoke-direct {p0, p1, v1}, Lcom/android/server/DirEncryptPrefs;->checkUUIDPrefs(Ljava/lang/String;Ljava/util/List;)I

    move-result v5

    .line 98
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "list number : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    .line 99
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 100
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->unflattenFromString(ILjava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v2

    .line 107
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "policy        : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    .line 108
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "current UUID  : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mCurrentUUID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    .line 109
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "encrypt state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    .line 112
    :cond_0
    return-object v2

    .line 102
    :cond_1
    iput v0, v2, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    .line 103
    const/4 v6, 0x0

    iput-object v6, v2, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mCurrentUUID:Ljava/lang/String;

    .line 104
    const/4 v6, 0x3

    iput v6, v2, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    goto :goto_0
.end method

.method public savePrefs(Lcom/samsung/android/security/SemSdCardEncryptionPolicy;)Z
    .locals 3
    .param p1, "policies"    # Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    .prologue
    .line 117
    iget v0, p1, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    iget v1, p1, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    iget-object v2, p1, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mCurrentUUID:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/DirEncryptPrefs;->addUUIDPrefs(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method
