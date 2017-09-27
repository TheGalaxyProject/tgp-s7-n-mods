.class Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;
.super Ljava/lang/Object;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService$SdpEngineDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EngineListHandler"
.end annotation


# static fields
.field private static final ATTR_ALIAS:Ljava/lang/String; = "alias"

.field private static final ATTR_ALIAS_IDX:I = 0x0

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_ID_IDX:I = 0x1

.field private static final ENGINE_LIST_XML:Ljava/lang/String; = "sdp_engine_list.xml"

.field private static final TAG_ENGINE:Ljava/lang/String; = "engine"

.field private static final TAG_ENGINE_LIST:Ljava/lang/String; = "engine_list"


# instance fields
.field final synthetic this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;)Landroid/util/SparseArray;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->getEngineListLocked()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->updateEngineListLocked()I

    move-result v0

    return v0
.end method

.method private constructor <init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    .prologue
    .line 1831
    iput-object p1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;-><init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)V

    return-void
.end method

.method private getEngineListLocked()Landroid/util/SparseArray;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1927
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 1928
    .local v7, "engineList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 1929
    .local v8, "engineListFile":Landroid/util/XmlMoreAtomicFile;
    const/4 v11, 0x0

    .line 1931
    .local v11, "fis":Ljava/io/FileInputStream;
    const/4 v14, 0x3

    .local v14, "retry":I
    move v15, v14

    .line 1932
    .end local v8    # "engineListFile":Landroid/util/XmlMoreAtomicFile;
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .end local v14    # "retry":I
    .local v15, "retry":I
    :goto_0
    add-int/lit8 v14, v15, -0x1

    .end local v15    # "retry":I
    .restart local v14    # "retry":I
    if-lez v15, :cond_a

    .line 1933
    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V

    .line 1935
    const/4 v12, 0x1

    .line 1937
    .local v12, "noError":Z
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->getEngineListXmlFile()Landroid/util/XmlMoreAtomicFile;

    move-result-object v8

    .line 1938
    .local v8, "engineListFile":Landroid/util/XmlMoreAtomicFile;
    invoke-virtual {v8}, Landroid/util/XmlMoreAtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v11

    .line 1940
    .local v11, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v10

    .line 1941
    .local v10, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v10}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v13

    .line 1942
    .local v13, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string/jumbo v17, "UTF-8"

    move-object/from16 v0, v17

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1944
    const-string/jumbo v3, ""

    .line 1945
    .local v3, "attrAlias":Ljava/lang/String;
    const/4 v4, -0x1

    .line 1946
    .local v4, "attrId":I
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    .line 1948
    .local v9, "eventType":I
    :goto_1
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v9, v0, :cond_7

    .line 1949
    packed-switch v9, :pswitch_data_0

    .line 1977
    :cond_0
    :goto_2
    :pswitch_0
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    goto :goto_1

    .line 1953
    :pswitch_1
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 1954
    .local v16, "tag":Ljava/lang/String;
    const-string/jumbo v17, "engine"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1955
    const-string/jumbo v17, "alias"

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v13, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1956
    const-string/jumbo v17, "id"

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v13, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 1955
    if-eqz v17, :cond_2

    .line 1957
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v13, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 1959
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v13, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 1958
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1961
    if-ltz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_3

    :cond_1
    const/4 v12, 0x0

    .line 1963
    :cond_2
    :goto_3
    if-eqz v12, :cond_4

    .line 1964
    invoke-virtual {v7, v4, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1965
    const-string/jumbo v3, ""

    .line 1966
    const/4 v4, -0x1

    goto :goto_2

    .line 1961
    :cond_3
    const/4 v12, 0x1

    goto :goto_3

    .line 1968
    :cond_4
    new-instance v17, Ljava/lang/Exception;

    const-string/jumbo v18, "Suspicious of damaged file..."

    invoke-direct/range {v17 .. v18}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1980
    .end local v3    # "attrAlias":Ljava/lang/String;
    .end local v4    # "attrId":I
    .end local v8    # "engineListFile":Landroid/util/XmlMoreAtomicFile;
    .end local v9    # "eventType":I
    .end local v10    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 1981
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->this$0:Lcom/android/server/SdpManagerService;

    move-object/from16 v17, v0

    const-string/jumbo v18, "SdpManagerService"

    .line 1982
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "EngineListHandler :: Failed to get engine list... "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1981
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v6, v2}, Lcom/android/server/SdpManagerService;->-wrap13(Lcom/android/server/SdpManagerService;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1983
    if-eqz v8, :cond_5

    .line 1984
    invoke-virtual {v8}, Landroid/util/XmlMoreAtomicFile;->processDamagedFile()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1985
    const/4 v8, 0x0

    .line 1988
    :cond_5
    if-eqz v11, :cond_6

    .line 1990
    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_6
    :goto_4
    move v15, v14

    .end local v14    # "retry":I
    .restart local v15    # "retry":I
    goto/16 :goto_0

    .line 1988
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v15    # "retry":I
    .restart local v3    # "attrAlias":Ljava/lang/String;
    .restart local v4    # "attrId":I
    .restart local v8    # "engineListFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v9    # "eventType":I
    .restart local v10    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v14    # "retry":I
    :cond_7
    if-eqz v11, :cond_8

    .line 1990
    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1979
    :cond_8
    :goto_5
    return-object v7

    .line 1991
    :catch_1
    move-exception v5

    .local v5, "e":Ljava/io/IOException;
    goto :goto_5

    .end local v3    # "attrAlias":Ljava/lang/String;
    .end local v4    # "attrId":I
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "engineListFile":Landroid/util/XmlMoreAtomicFile;
    .end local v9    # "eventType":I
    .end local v10    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 1987
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    .line 1988
    if-eqz v11, :cond_9

    .line 1990
    :try_start_4
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1987
    :cond_9
    :goto_6
    throw v17

    .line 1991
    :catch_3
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 1995
    .end local v5    # "e":Ljava/io/IOException;
    .end local v12    # "noError":Z
    :cond_a
    const/16 v17, 0x0

    return-object v17

    .line 1949
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getEngineListXmlFile()Landroid/util/XmlMoreAtomicFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1842
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->getEngineListXmlFile(I)Landroid/util/XmlMoreAtomicFile;

    move-result-object v0

    return-object v0
.end method

.method private getEngineListXmlFile(I)Landroid/util/XmlMoreAtomicFile;
    .locals 3
    .param p1, "purpose"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1847
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 1848
    const/4 p1, 0x0

    .line 1850
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/system/users/sdp_engine_list.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1851
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1852
    if-nez p1, :cond_1

    .line 1853
    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v2, "Failed to get engine list due to non-existence..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 1856
    :cond_1
    new-instance v1, Landroid/util/XmlMoreAtomicFile;

    invoke-direct {v1, v0}, Landroid/util/XmlMoreAtomicFile;-><init>(Ljava/io/File;)V

    return-object v1
.end method

.method private updateEngineListLocked()I
    .locals 15

    .prologue
    .line 1860
    const/4 v5, 0x0

    .line 1861
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 1862
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    const/4 v4, 0x0

    .line 1865
    .local v4, "engineListFile":Landroid/util/XmlMoreAtomicFile;
    const/4 v12, 0x1

    :try_start_0
    invoke-direct {p0, v12}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->getEngineListXmlFile(I)Landroid/util/XmlMoreAtomicFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1870
    .local v4, "engineListFile":Landroid/util/XmlMoreAtomicFile;
    iget-object v12, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    iget-object v12, v12, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v12}, Lcom/android/server/SdpManagerService;->-get6(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v12

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-nez v12, :cond_0

    .line 1871
    invoke-virtual {v4}, Landroid/util/XmlMoreAtomicFile;->delete()V

    .line 1872
    const/4 v12, 0x0

    return v12

    .line 1866
    .local v4, "engineListFile":Landroid/util/XmlMoreAtomicFile;
    :catch_0
    move-exception v2

    .line 1867
    .local v2, "e":Ljava/io/IOException;
    const/16 v12, -0x63

    return v12

    .line 1875
    .end local v2    # "e":Ljava/io/IOException;
    .local v4, "engineListFile":Landroid/util/XmlMoreAtomicFile;
    :cond_0
    const/4 v9, 0x1

    .line 1877
    .local v9, "noError":Z
    :try_start_1
    invoke-virtual {v4}, Landroid/util/XmlMoreAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    .line 1878
    .local v5, "fos":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1880
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    :try_start_2
    new-instance v11, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v11}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1881
    .local v11, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v12, "UTF-8"

    invoke-interface {v11, v1, v12}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1882
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v11, v13, v12}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1883
    const-string/jumbo v12, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1887
    const-string/jumbo v12, "engine_list"

    const/4 v13, 0x0

    invoke-interface {v11, v13, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1888
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v12, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    iget-object v12, v12, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v12}, Lcom/android/server/SdpManagerService;->-get6(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v12

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v10

    .local v10, "nsize":I
    :goto_0
    if-ge v6, v10, :cond_1

    .line 1889
    iget-object v12, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    iget-object v12, v12, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v12}, Lcom/android/server/SdpManagerService;->-get6(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 1890
    .local v7, "id":I
    iget-object v12, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    iget-object v12, v12, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v12}, Lcom/android/server/SdpManagerService;->-get6(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 1893
    .local v8, "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    const-string/jumbo v12, "engine"

    const/4 v13, 0x0

    invoke-interface {v11, v13, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1895
    const-string/jumbo v12, "alias"

    invoke-virtual {v8}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v11, v14, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1896
    const-string/jumbo v12, "id"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v11, v14, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1898
    const-string/jumbo v12, "engine"

    const/4 v13, 0x0

    invoke-interface {v11, v13, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1888
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1903
    .end local v7    # "id":I
    .end local v8    # "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :cond_1
    const-string/jumbo v12, "engine_list"

    const/4 v13, 0x0

    invoke-interface {v11, v13, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1904
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1905
    invoke-virtual {v4, v5}, Landroid/util/XmlMoreAtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1917
    if-eqz v1, :cond_2

    .line 1918
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_1
    move-object v0, v1

    .line 1922
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "i":I
    .end local v10    # "nsize":I
    .end local v11    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_3
    :goto_2
    if-eqz v9, :cond_6

    .line 1923
    const/4 v12, 0x0

    .line 1922
    :goto_3
    return v12

    .line 1920
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "i":I
    .restart local v10    # "nsize":I
    .restart local v11    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 1906
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "i":I
    .end local v10    # "nsize":I
    .end local v11    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    :catch_2
    move-exception v3

    .line 1907
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v3, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_4
    iget-object v12, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    iget-object v12, v12, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->this$0:Lcom/android/server/SdpManagerService;

    const-string/jumbo v13, "SdpManagerService"

    .line 1908
    const-string/jumbo v14, "Failed to update engine list..."

    .line 1907
    invoke-static {v12, v13, v3, v14}, Lcom/android/server/SdpManagerService;->-wrap13(Lcom/android/server/SdpManagerService;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1909
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1911
    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    .line 1912
    invoke-virtual {v4, v5}, Landroid/util/XmlMoreAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1914
    :cond_4
    const/4 v9, 0x0

    .line 1917
    if-eqz v0, :cond_3

    .line 1918
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 1920
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 1915
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    .line 1917
    :goto_5
    if-eqz v0, :cond_5

    .line 1918
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1915
    :cond_5
    :goto_6
    throw v12

    .line 1920
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 1923
    .end local v2    # "e":Ljava/io/IOException;
    :cond_6
    const/16 v12, -0x63

    goto :goto_3

    .line 1915
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v12

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    goto :goto_5

    .line 1906
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    :catch_5
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_4
.end method
