.class Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;
.super Landroid/os/AsyncTask;
.source "KiesLocationReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/KiesLocationReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KiesOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mAction:I

.field private mContext:Landroid/content/Context;

.field private mEncryption:Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;

.field private mErrorCode:I

.field private mOperation:I

.field private mPath:Ljava/lang/String;

.field private mResult:I

.field private mSaveKey:Ljava/lang/String;

.field private mSecurityLevel:I

.field private mSessionTime:Ljava/lang/String;

.field private mSource:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/settings/KiesLocationReceiver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/KiesLocationReceiver;Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/settings/KiesLocationReceiver;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "operation"    # I
    .param p4, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 142
    iput-object p1, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->this$0:Lcom/samsung/android/settings/KiesLocationReceiver;

    .line 143
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 123
    iput v0, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mResult:I

    .line 124
    iput v0, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I

    .line 125
    iput v1, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mOperation:I

    .line 126
    iput v1, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mAction:I

    .line 131
    iput v1, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mSecurityLevel:I

    .line 144
    iput-object p2, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mContext:Landroid/content/Context;

    .line 145
    iput p3, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mOperation:I

    .line 146
    const-string/jumbo v0, "SESSION_KEY"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mSaveKey:Ljava/lang/String;

    .line 147
    const-string/jumbo v0, "EXPORT_SESSION_TIME"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mSessionTime:Ljava/lang/String;

    .line 148
    const-string/jumbo v0, "SECURITY_LEVEL"

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mSecurityLevel:I

    .line 149
    const-string/jumbo v0, "SAVE_PATH"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mPath:Ljava/lang/String;

    .line 150
    const-string/jumbo v0, "SOURCE"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mSource:Ljava/lang/String;

    .line 151
    const-string/jumbo v0, "ACTION"

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mAction:I

    .line 152
    new-instance v0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;-><init>(Lcom/samsung/android/settings/KiesLocationReceiver;Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;)V

    iput-object v0, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mEncryption:Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;

    .line 142
    return-void
.end method

.method private generateXml(Ljava/io/File;)I
    .locals 13
    .param p1, "xml"    # Ljava/io/File;

    .prologue
    const/4 v12, 0x0

    .line 229
    const/4 v4, 0x0

    .line 231
    .local v4, "output":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v7

    .line 232
    .local v7, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    .end local v4    # "output":Ljava/io/FileOutputStream;
    .local v5, "output":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v9, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 234
    .local v6, "res":Landroid/content/ContentResolver;
    const-string/jumbo v9, "vzw_lbs"

    invoke-static {v6, v9}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v8

    .line 235
    .local v8, "vzwEnabled":Z
    const-string/jumbo v9, "KiesLocationReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "vzwEnabled == "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string/jumbo v9, "location_mode"

    const/4 v10, 0x0

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 237
    .local v0, "currentLocationMode":I
    const-string/jumbo v9, "KiesLocationReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "currentLocationMode == "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string/jumbo v9, "UTF-8"

    invoke-interface {v7, v5, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 240
    const-string/jumbo v9, "UTF-8"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 241
    const-string/jumbo v9, "VZWLocationSvc"

    const/4 v10, 0x0

    invoke-interface {v7, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 243
    const-string/jumbo v9, "vzw_location_service"

    const/4 v10, 0x0

    invoke-interface {v7, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 244
    if-eqz v8, :cond_1

    const-string/jumbo v9, "on"

    :goto_0
    invoke-interface {v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 245
    const-string/jumbo v9, "vzw_location_service"

    const/4 v10, 0x0

    invoke-interface {v7, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 247
    const-string/jumbo v9, "location_mode"

    const/4 v10, 0x0

    invoke-interface {v7, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 248
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 249
    const-string/jumbo v9, "location_mode"

    const/4 v10, 0x0

    invoke-interface {v7, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 251
    const-string/jumbo v9, "VZWLocationSvc"

    const/4 v10, 0x0

    invoke-interface {v7, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 252
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 254
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 256
    invoke-virtual {p1}, Ljava/io/File;->length()J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v10

    long-to-int v9, v10

    .line 269
    if-eqz v5, :cond_0

    .line 270
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 256
    :cond_0
    :goto_1
    return v9

    .line 244
    :cond_1
    :try_start_3
    const-string/jumbo v9, "off"
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 272
    :catch_0
    move-exception v1

    .line 273
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 264
    .end local v0    # "currentLocationMode":I
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "output":Ljava/io/FileOutputStream;
    .end local v6    # "res":Landroid/content/ContentResolver;
    .end local v7    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v8    # "vzwEnabled":Z
    .restart local v4    # "output":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 265
    .end local v4    # "output":Ljava/io/FileOutputStream;
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 266
    const/4 v9, 0x1

    iput v9, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 269
    if-eqz v4, :cond_2

    .line 270
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 277
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    :goto_3
    return v12

    .line 272
    .restart local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 273
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 261
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "output":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v3

    .line 262
    .end local v4    # "output":Ljava/io/FileOutputStream;
    .local v3, "e":Ljava/lang/IllegalStateException;
    :goto_4
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 263
    const/4 v9, 0x1

    iput v9, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 269
    if-eqz v4, :cond_2

    .line 270
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    .line 272
    :catch_4
    move-exception v1

    .line 273
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 258
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    .restart local v4    # "output":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v1

    .line 259
    .end local v4    # "output":Ljava/io/FileOutputStream;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_8
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 260
    const/4 v9, 0x2

    iput v9, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 269
    if-eqz v4, :cond_2

    .line 270
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_3

    .line 272
    :catch_6
    move-exception v1

    .line 273
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 267
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 269
    :goto_6
    if-eqz v4, :cond_3

    .line 270
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 267
    :cond_3
    :goto_7
    throw v9

    .line 272
    :catch_7
    move-exception v1

    .line 273
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 267
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "output":Ljava/io/FileOutputStream;
    .restart local v7    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5    # "output":Ljava/io/FileOutputStream;
    .local v4, "output":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 258
    .end local v4    # "output":Ljava/io/FileOutputStream;
    .restart local v5    # "output":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "output":Ljava/io/FileOutputStream;
    .restart local v4    # "output":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 261
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "output":Ljava/io/FileOutputStream;
    .restart local v5    # "output":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v3

    .restart local v3    # "e":Ljava/lang/IllegalStateException;
    move-object v4, v5

    .end local v5    # "output":Ljava/io/FileOutputStream;
    .restart local v4    # "output":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 264
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    .end local v4    # "output":Ljava/io/FileOutputStream;
    .restart local v5    # "output":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v2

    .restart local v2    # "e":Ljava/lang/IllegalArgumentException;
    move-object v4, v5

    .end local v5    # "output":Ljava/io/FileOutputStream;
    .restart local v4    # "output":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private readXml(Ljava/io/File;)I
    .locals 19
    .param p1, "xml"    # Ljava/io/File;

    .prologue
    .line 287
    const/4 v8, 0x0

    .line 288
    .local v8, "input":Ljava/io/FileInputStream;
    const/4 v14, 0x0

    .line 289
    .local v14, "totalCount":I
    const/4 v10, 0x0

    .line 290
    .local v10, "item":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 292
    .local v12, "res":Landroid/content/ContentResolver;
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    .end local v8    # "input":Ljava/io/FileInputStream;
    .local v9, "input":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v7

    .line 294
    .local v7, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v11

    .line 295
    .local v11, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string/jumbo v16, "UTF-8"

    move-object/from16 v0, v16

    invoke-interface {v11, v9, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 296
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    .line 297
    .end local v10    # "item":Ljava/lang/String;
    .local v6, "eventType":I
    :goto_0
    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v6, v0, :cond_8

    .line 298
    packed-switch v6, :pswitch_data_0

    .line 340
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    goto :goto_0

    .line 304
    :pswitch_1
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 305
    .local v10, "item":Ljava/lang/String;
    const-string/jumbo v16, "KiesLocationReceiver"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "tag == "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 349
    .end local v6    # "eventType":I
    .end local v7    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v10    # "item":Ljava/lang/String;
    .end local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    move-object v8, v9

    .line 350
    .end local v9    # "input":Ljava/io/FileInputStream;
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 351
    const/16 v16, 0x2

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 363
    if-eqz v8, :cond_1

    .line 364
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    .line 370
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    const/16 v16, 0x0

    return v16

    .line 308
    .restart local v6    # "eventType":I
    .restart local v7    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v9    # "input":Ljava/io/FileInputStream;
    .restart local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_2
    const/4 v10, 0x0

    .line 309
    .local v10, "item":Ljava/lang/String;
    goto :goto_1

    .line 311
    .end local v10    # "item":Ljava/lang/String;
    :pswitch_3
    if-eqz v10, :cond_0

    .line 314
    :try_start_4
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v15

    .line 315
    .local v15, "value":Ljava/lang/String;
    const-string/jumbo v16, "KiesLocationReceiver"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "tag value == "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v13, 0x0

    .line 317
    .local v13, "result":Z
    const-string/jumbo v16, "on"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 318
    const/4 v13, 0x1

    .line 322
    :cond_2
    :goto_4
    const-string/jumbo v16, "vzw_location_service"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 323
    const-string/jumbo v16, "KiesLocationReceiver"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Setting vzw: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const-string/jumbo v16, "vzw_lbs"

    move-object/from16 v0, v16

    invoke-static {v12, v0, v13}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 335
    :cond_3
    :goto_5
    add-int/lit8 v14, v14, 0x1

    .line 336
    goto/16 :goto_1

    .line 319
    :cond_4
    const-string/jumbo v16, "off"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 320
    const/4 v13, 0x0

    goto :goto_4

    .line 325
    :cond_5
    const-string/jumbo v16, "location_mode"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 326
    const-string/jumbo v16, "KiesLocationReceiver"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Setting location mode: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string/jumbo v16, "location_mode"

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    .line 352
    .end local v6    # "eventType":I
    .end local v7    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "result":Z
    .end local v15    # "value":Ljava/lang/String;
    :catch_1
    move-exception v4

    .local v4, "e":Ljava/lang/IllegalStateException;
    move-object v8, v9

    .line 353
    .end local v9    # "input":Ljava/io/FileInputStream;
    :goto_6
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 354
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 363
    if-eqz v8, :cond_1

    .line 364
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_3

    .line 366
    :catch_2
    move-exception v2

    .line 367
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 328
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    .restart local v6    # "eventType":I
    .restart local v7    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v9    # "input":Ljava/io/FileInputStream;
    .restart local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "result":Z
    .restart local v15    # "value":Ljava/lang/String;
    :cond_6
    :try_start_7
    const-string/jumbo v16, "standalone_gps_service"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 329
    const-string/jumbo v16, "KiesLocationReceiver"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Setting gps: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string/jumbo v16, "gps"

    move-object/from16 v0, v16

    invoke-static {v12, v0, v13}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_5

    .line 355
    .end local v6    # "eventType":I
    .end local v7    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "result":Z
    .end local v15    # "value":Ljava/lang/String;
    :catch_3
    move-exception v3

    .local v3, "e":Ljava/lang/IllegalArgumentException;
    move-object v8, v9

    .line 356
    .end local v9    # "input":Ljava/io/FileInputStream;
    :goto_7
    :try_start_8
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 357
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 363
    if-eqz v8, :cond_1

    .line 364
    :try_start_9
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_3

    .line 366
    :catch_4
    move-exception v2

    .line 367
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 331
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v6    # "eventType":I
    .restart local v7    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v9    # "input":Ljava/io/FileInputStream;
    .restart local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "result":Z
    .restart local v15    # "value":Ljava/lang/String;
    :cond_7
    :try_start_a
    const-string/jumbo v16, "google_location_service"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 332
    const-string/jumbo v16, "KiesLocationReceiver"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Setting google: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const-string/jumbo v16, "network"

    move-object/from16 v0, v16

    invoke-static {v12, v0, v13}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_5

    .line 358
    .end local v6    # "eventType":I
    .end local v7    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "result":Z
    .end local v15    # "value":Ljava/lang/String;
    :catch_5
    move-exception v5

    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v8, v9

    .line 359
    .end local v9    # "input":Ljava/io/FileInputStream;
    :goto_8
    :try_start_b
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 360
    const/16 v16, 0x3

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 363
    if-eqz v8, :cond_1

    .line 364
    :try_start_c
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_3

    .line 366
    :catch_6
    move-exception v2

    .line 367
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 343
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v6    # "eventType":I
    .restart local v7    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v9    # "input":Ljava/io/FileInputStream;
    .restart local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_8
    if-nez v14, :cond_a

    .line 344
    :try_start_d
    const-string/jumbo v16, "KiesLocationReceiver"

    const-string/jumbo v17, "failed to restore - no items"

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/16 v16, 0x3

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 346
    const/16 v16, 0x0

    .line 363
    if-eqz v9, :cond_9

    .line 364
    :try_start_e
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 346
    :cond_9
    :goto_9
    return v16

    .line 366
    :catch_7
    move-exception v2

    .line 367
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 348
    .end local v2    # "e":Ljava/io/IOException;
    :cond_a
    :try_start_f
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    .line 363
    if-eqz v9, :cond_b

    .line 364
    :try_start_10
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    .line 348
    :cond_b
    :goto_a
    return v16

    .line 366
    :catch_8
    move-exception v2

    .line 367
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 366
    .end local v6    # "eventType":I
    .end local v7    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v9    # "input":Ljava/io/FileInputStream;
    .end local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_9
    move-exception v2

    .line 367
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 361
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v16

    .line 363
    :goto_b
    if-eqz v8, :cond_c

    .line 364
    :try_start_11
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    .line 361
    :cond_c
    :goto_c
    throw v16

    .line 366
    :catch_a
    move-exception v2

    .line 367
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 361
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v9    # "input":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v16

    move-object v8, v9

    .end local v9    # "input":Ljava/io/FileInputStream;
    .local v8, "input":Ljava/io/FileInputStream;
    goto :goto_b

    .line 349
    .local v8, "input":Ljava/io/FileInputStream;
    .restart local v10    # "item":Ljava/lang/String;
    :catch_b
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_2

    .line 352
    .end local v2    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v4

    .restart local v4    # "e":Ljava/lang/IllegalStateException;
    goto/16 :goto_6

    .line 355
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    :catch_d
    move-exception v3

    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    goto/16 :goto_7

    .line 358
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_e
    move-exception v5

    .restart local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_8

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 157
    iget-object v6, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mPath:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mOperation:I

    if-nez v6, :cond_1

    .line 158
    :cond_0
    const-string/jumbo v6, "KiesLocationReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mPath="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " mOperation=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mOperation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v6, 0x3

    iput v6, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I

    .line 160
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    return-object v6

    .line 163
    :cond_1
    iget v6, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mOperation:I

    if-ne v6, v7, :cond_5

    .line 164
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "temp.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .local v5, "temp_file":Ljava/io/File;
    iget v6, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mAction:I

    if-nez v6, :cond_4

    .line 167
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mEncryption:Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;

    iget-object v7, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mSaveKey:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->-wrap2(Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;Ljava/lang/String;)V

    .line 168
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->generateXml(Ljava/io/File;)I

    move-result v4

    .line 169
    .local v4, "fileLength":I
    if-lez v4, :cond_2

    .line 170
    iget-object v6, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mEncryption:Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "location_service.xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mSecurityLevel:I

    invoke-static {v6, v5, v7, v8}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->-wrap1(Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;Ljava/io/File;Ljava/io/File;I)Ljava/io/File;

    .line 171
    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mResult:I

    .line 172
    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I

    .line 173
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 180
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 173
    return-object v6

    .line 180
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 189
    .end local v4    # "fileLength":I
    :cond_3
    :goto_0
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    return-object v6

    .line 177
    :catch_0
    move-exception v1

    .line 178
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 175
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 176
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 179
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 180
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 179
    throw v6

    .line 182
    :cond_4
    iget v6, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mAction:I

    if-ne v6, v8, :cond_3

    .line 183
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "location_service.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    .local v3, "encryptedFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 185
    const-string/jumbo v6, "KiesLocationReceiver"

    const-string/jumbo v7, "operation cancelled, delete the encrypted file"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 193
    .end local v3    # "encryptedFile":Ljava/io/File;
    .end local v5    # "temp_file":Ljava/io/File;
    :cond_5
    iget v6, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mOperation:I

    if-ne v6, v8, :cond_7

    .line 194
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "temp.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    .restart local v5    # "temp_file":Ljava/io/File;
    :try_start_3
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "location_service.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    .local v2, "encrypt":Ljava/io/File;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 204
    iget-object v6, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mEncryption:Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;

    iget-object v7, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mSaveKey:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->-wrap2(Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;Ljava/lang/String;)V

    .line 205
    iget-object v6, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mEncryption:Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;

    iget v7, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mSecurityLevel:I

    invoke-static {v6, v2, v5, v7}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->-wrap0(Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;Ljava/io/File;Ljava/io/File;I)Ljava/io/File;

    .line 206
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->readXml(Ljava/io/File;)I

    move-result v4

    .line 207
    .restart local v4    # "fileLength":I
    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mResult:I

    .line 208
    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I

    .line 209
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v6

    .line 215
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 209
    return-object v6

    .line 198
    .end local v4    # "fileLength":I
    :cond_6
    :try_start_4
    const-string/jumbo v6, "KiesLocationReceiver"

    const-string/jumbo v7, "Encrypted file does not exist"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v6, 0x1

    iput v6, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mResult:I

    .line 200
    const/4 v6, 0x1

    iput v6, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I

    .line 201
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v6

    .line 215
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 201
    return-object v6

    .line 212
    .end local v2    # "encrypt":Ljava/io/File;
    :catch_2
    move-exception v1

    .line 213
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 215
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 217
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    return-object v6

    .line 210
    :catch_3
    move-exception v0

    .line 211
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 215
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 214
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    .line 215
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 214
    throw v6

    .line 219
    .end local v5    # "temp_file":Ljava/io/File;
    :cond_7
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    return-object v6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 156
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "fileLength"    # Ljava/lang/Integer;

    .prologue
    .line 375
    iget v1, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mOperation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 376
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.intent.action.RESPONSE_BACKUP_LOCATIONSERVICEVZW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 377
    .local v0, "response":Landroid/content/Intent;
    const-string/jumbo v1, "EXPORT_SESSION_TIME"

    iget-object v2, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mSessionTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    :goto_0
    const-string/jumbo v1, "RESULT"

    iget v2, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mResult:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 382
    const-string/jumbo v1, "ERR_CODE"

    iget v2, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 383
    const-string/jumbo v1, "REQ_SIZE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 384
    const-string/jumbo v1, "SOURCE"

    iget-object v2, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    const-string/jumbo v1, "REBOOT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 387
    iget-object v1, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.wssnps.permission.COM_WSSNPS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 373
    return-void

    .line 379
    .end local v0    # "response":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.intent.action.RESPONSE_RESTORE_LOCATIONSERVICEVZW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "response":Landroid/content/Intent;
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "fileLength"    # Ljava/lang/Object;

    .prologue
    .line 373
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "fileLength":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
