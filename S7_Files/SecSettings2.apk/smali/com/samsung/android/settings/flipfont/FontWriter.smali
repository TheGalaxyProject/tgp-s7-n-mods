.class public Lcom/samsung/android/settings/flipfont/FontWriter;
.super Ljava/lang/Object;
.source "FontWriter.java"


# instance fields
.field fOut:Ljava/io/FileOutputStream;

.field osw:Ljava/io/OutputStreamWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 47
    iput-object v0, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    .line 37
    return-void
.end method

.method private deleteFolder(Ljava/io/File;Ljava/lang/String;)Z
    .locals 6
    .param p1, "FontDir"    # Ljava/io/File;
    .param p2, "folderName"    # Ljava/lang/String;

    .prologue
    .line 146
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 147
    .local v3, "newDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, "tmp":[Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 150
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 151
    new-instance v1, Ljava/io/File;

    aget-object v5, v4, v2

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 152
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 150
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    .line 160
    .end local v2    # "i":I
    :goto_1
    return v0

    .line 157
    :cond_1
    const/4 v0, 0x0

    .local v0, "bRet":Z
    goto :goto_1
.end method


# virtual methods
.method public copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 18
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "destination"    # Ljava/lang/String;

    .prologue
    .line 170
    move-object/from16 v12, p2

    .line 171
    .local v12, "myInputStream":Ljava/io/InputStream;
    move-object/from16 v11, p1

    .line 172
    .local v11, "myDirectory":Ljava/io/File;
    move-object/from16 v10, p3

    .line 173
    .local v10, "myDestination":Ljava/lang/String;
    const/4 v5, 0x0

    .line 176
    .local v5, "err_filecopy":Z
    :try_start_0
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 177
    .local v3, "dest":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 178
    new-instance v15, Ljava/lang/Exception;

    const-string/jumbo v16, "Directory traversal attack!"

    invoke-direct/range {v15 .. v16}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    .end local v3    # "dest":Ljava/io/File;
    :catch_0
    move-exception v6

    .line 198
    .local v6, "ex":Ljava/lang/Exception;
    const/4 v5, 0x1

    .line 200
    :try_start_1
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 201
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 203
    .local v8, "length":J
    const-wide/16 v16, 0x0

    cmp-long v15, v8, v16

    if-nez v15, :cond_0

    .line 204
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 207
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    if-eqz p2, :cond_1

    .line 211
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    .line 214
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v15, :cond_2

    .line 215
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 222
    .end local v6    # "ex":Ljava/lang/Exception;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "length":J
    :cond_2
    :goto_0
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 223
    .restart local v7    # "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 225
    .restart local v8    # "length":J
    const-wide/16 v16, 0x0

    cmp-long v15, v8, v16

    if-nez v15, :cond_3

    .line 226
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 227
    const/4 v5, 0x1

    .line 230
    :cond_3
    return v5

    .line 180
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "length":J
    .restart local v3    # "dest":Ljava/io/File;
    :cond_4
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 181
    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 182
    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Ljava/io/File;->setWritable(ZZ)Z

    .line 183
    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 184
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 185
    new-instance v13, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v13, v15}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 186
    .local v13, "os":Ljava/io/BufferedOutputStream;
    const/16 v15, 0x400

    new-array v2, v15, [B

    .line 187
    .local v2, "b":[B
    const/4 v14, 0x0

    .line 189
    .local v14, "read":I
    :goto_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v14

    if-lez v14, :cond_7

    .line 190
    const/4 v15, 0x0

    invoke-virtual {v13, v2, v15, v14}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 208
    .end local v2    # "b":[B
    .end local v3    # "dest":Ljava/io/File;
    .end local v13    # "os":Ljava/io/BufferedOutputStream;
    .end local v14    # "read":I
    :catchall_0
    move-exception v15

    .line 210
    if-eqz p2, :cond_5

    .line 211
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    .line 214
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    move-object/from16 v16, v0

    if-eqz v16, :cond_6

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 208
    :cond_6
    :goto_2
    throw v15

    .line 193
    .restart local v2    # "b":[B
    .restart local v3    # "dest":Ljava/io/File;
    .restart local v13    # "os":Ljava/io/BufferedOutputStream;
    .restart local v14    # "read":I
    :cond_7
    :try_start_5
    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->flush()V

    .line 194
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v15}, Ljava/io/FileOutputStream;->flush()V

    .line 195
    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 210
    if-eqz p2, :cond_8

    .line 211
    :try_start_6
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    .line 214
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v15, :cond_2

    .line 215
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 217
    :catch_1
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    goto/16 :goto_0

    .end local v2    # "b":[B
    .end local v3    # "dest":Ljava/io/File;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v13    # "os":Ljava/io/BufferedOutputStream;
    .end local v14    # "read":I
    :catch_2
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_2

    .end local v4    # "e":Ljava/io/IOException;
    .restart local v6    # "ex":Ljava/lang/Exception;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v8    # "length":J
    :catch_3
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto/16 :goto_0
.end method

.method public createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fontName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/data/app_fonts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .local v1, "newFontDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 108
    invoke-virtual {v1, v6, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 109
    invoke-virtual {v1, v6, v5}, Ljava/io/File;->setWritable(ZZ)Z

    .line 110
    invoke-virtual {v1, v6, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 111
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 113
    .local v0, "fontFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 114
    invoke-virtual {v0, v6, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 115
    invoke-virtual {v0, v6, v5}, Ljava/io/File;->setWritable(ZZ)Z

    .line 116
    invoke-virtual {v0, v6, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 117
    return-object v0
.end method

.method public deleteFontDirectory(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keepfolder"    # Ljava/lang/String;

    .prologue
    .line 126
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/data/app_fonts/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .local v2, "newFontDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 131
    .local v0, "fontFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 133
    .local v4, "tmp":[Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 134
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 135
    aget-object v5, v4, v1

    invoke-virtual {v5, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 136
    aget-object v5, v4, v1

    invoke-direct {p0, v2, v5}, Lcom/samsung/android/settings/flipfont/FontWriter;->deleteFolder(Ljava/io/File;Ljava/lang/String;)Z

    .line 134
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "directory"    # Ljava/lang/String;

    .prologue
    .line 64
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/data/app_fonts/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "sFile":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "canonicalPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .local v1, "dest":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 68
    new-instance v5, Ljava/lang/Exception;

    const-string/jumbo v6, "Directory traversal attack!"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .end local v0    # "canonicalPath":Ljava/lang/String;
    .end local v1    # "dest":Ljava/io/File;
    .end local v4    # "sFile":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 80
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :try_start_2
    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v5, :cond_0

    .line 84
    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V

    .line 87
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v5, :cond_1

    .line 88
    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 97
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const-string/jumbo v5, "persist.sys.flipfontpath"

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void

    .line 70
    .restart local v0    # "canonicalPath":Ljava/lang/String;
    .restart local v1    # "dest":Ljava/io/File;
    .restart local v4    # "sFile":Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 71
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Ljava/io/File;->setReadable(ZZ)Z

    .line 72
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Ljava/io/File;->setWritable(ZZ)Z

    .line 73
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 74
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v5, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 75
    new-instance v5, Ljava/io/OutputStreamWriter;

    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v5, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    .line 76
    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 77
    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->flush()V

    .line 78
    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 83
    :try_start_4
    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v5, :cond_3

    .line 84
    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V

    .line 87
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v5, :cond_1

    .line 88
    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 90
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto :goto_0

    .line 81
    .end local v0    # "canonicalPath":Ljava/lang/String;
    .end local v1    # "dest":Ljava/io/File;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "sFile":Ljava/lang/String;
    :catchall_0
    move-exception v5

    .line 83
    :try_start_5
    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v6, :cond_4

    .line 84
    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V

    .line 87
    :cond_4
    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v6, :cond_5

    .line 88
    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 81
    :cond_5
    :goto_1
    throw v5

    .line 90
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_0
.end method
