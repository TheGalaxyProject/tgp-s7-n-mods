.class Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;
.super Ljava/lang/Object;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService$SdpEngineDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EngineInfoXmlHandler"
.end annotation


# static fields
.field private static final ATTR_ALIAS:Ljava/lang/String; = "alias"

.field private static final ATTR_ALIAS_IDX:I = 0x0

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_FLAGS_IDX:I = 0x4

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_ID_IDX:I = 0x2

.field private static final ATTR_IS_MIGRATING:Ljava/lang/String; = "isMigrating"

.field private static final ATTR_IS_MIGRATING_IDX:I = 0x6

.field private static final ATTR_PKG_NAME:Ljava/lang/String; = "pkgName"

.field private static final ATTR_PKG_NAME_IDX:I = 0x1

.field private static final ATTR_USERID:Ljava/lang/String; = "userid"

.field private static final ATTR_USERID_IDX:I = 0x3

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_VERSION_IDX:I = 0x5

.field private static final ENGINE_XML:Ljava/lang/String; = "SdpUser"

.field private static final TAG_USER:Ljava/lang/String; = "user"


# instance fields
.field final synthetic this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .locals 1
    .param p1, "id"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .locals 1
    .param p1, "info"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->updateEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->removeEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    .prologue
    .line 2000
    iput-object p1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;-><init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)V

    return-void
.end method

.method private getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .locals 26
    .param p1, "id"    # I

    .prologue
    .line 2092
    const/4 v2, 0x0

    .line 2093
    .local v2, "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    const/4 v14, 0x0

    .line 2094
    .local v14, "engineInfoFile":Landroid/util/XmlMoreAtomicFile;
    const/16 v17, 0x0

    .line 2096
    .local v17, "fis":Ljava/io/FileInputStream;
    const/16 v20, 0x3

    .local v20, "retry":I
    move/from16 v21, v20

    .line 2097
    .end local v2    # "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .end local v14    # "engineInfoFile":Landroid/util/XmlMoreAtomicFile;
    .end local v17    # "fis":Ljava/io/FileInputStream;
    .end local v20    # "retry":I
    .local v21, "retry":I
    :goto_0
    add-int/lit8 v20, v21, -0x1

    .end local v21    # "retry":I
    .restart local v20    # "retry":I
    if-lez v21, :cond_9

    .line 2099
    const/16 v18, 0x1

    .line 2101
    .local v18, "noError":Z
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->getEngineInfoXmlFile(I)Landroid/util/XmlMoreAtomicFile;

    move-result-object v14

    .line 2102
    .local v14, "engineInfoFile":Landroid/util/XmlMoreAtomicFile;
    invoke-virtual {v14}, Landroid/util/XmlMoreAtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v17

    .line 2104
    .local v17, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v16

    .line 2105
    .local v16, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v19

    .line 2106
    .local v19, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string/jumbo v6, "UTF-8"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2108
    const-string/jumbo v3, ""

    .line 2109
    .local v3, "attrAlias":Ljava/lang/String;
    const-string/jumbo v10, ""

    .line 2110
    .local v10, "attrPkgName":Ljava/lang/String;
    const/4 v4, -0x1

    .line 2111
    .local v4, "attrId":I
    const/4 v5, -0x1

    .line 2112
    .local v5, "attrUserId":I
    const/4 v7, -0x1

    .line 2113
    .local v7, "attrFlags":I
    const/4 v8, -0x1

    .line 2114
    .local v8, "attrVersion":I
    const/4 v9, 0x0

    .line 2116
    .local v9, "attrIsMigrating":Z
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v15

    .local v15, "eventType":I
    move-object v13, v2

    .line 2117
    .end local v9    # "attrIsMigrating":Z
    .local v13, "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :goto_1
    const/4 v6, 0x1

    if-eq v15, v6, :cond_6

    .line 2118
    packed-switch v15, :pswitch_data_0

    :pswitch_0
    move-object v2, v13

    .line 2164
    .end local v13    # "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .local v2, "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :goto_2
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    move-object v13, v2

    .end local v2    # "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .restart local v13    # "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    goto :goto_1

    :pswitch_1
    move-object v2, v13

    .line 2120
    .end local v13    # "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .restart local v2    # "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    goto :goto_2

    .line 2122
    .end local v2    # "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .restart local v13    # "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :pswitch_2
    :try_start_1
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v22

    .line 2123
    .local v22, "tag":Ljava/lang/String;
    const-string/jumbo v6, "user"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2124
    const-string/jumbo v6, "alias"

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2125
    const-string/jumbo v6, "pkgName"

    const/16 v23, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 2124
    if-eqz v6, :cond_0

    .line 2126
    const-string/jumbo v6, "id"

    const/16 v23, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 2124
    if-eqz v6, :cond_0

    .line 2127
    const-string/jumbo v6, "userid"

    const/16 v23, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 2124
    if-eqz v6, :cond_0

    .line 2128
    const-string/jumbo v6, "flags"

    const/16 v23, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 2124
    if-eqz v6, :cond_0

    .line 2129
    const-string/jumbo v6, "version"

    const/16 v23, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 2124
    if-eqz v6, :cond_0

    .line 2130
    const-string/jumbo v6, "isMigrating"

    const/16 v23, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 2124
    if-eqz v6, :cond_0

    .line 2132
    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 2133
    const/4 v6, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    .line 2135
    const/4 v6, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 2134
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2137
    const/4 v6, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 2136
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2139
    const/4 v6, 0x4

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 2138
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2141
    const/4 v6, 0x5

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 2140
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 2143
    const/4 v6, 0x6

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 2142
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 2144
    .local v9, "attrIsMigrating":Z
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 2145
    if-ltz v4, :cond_4

    if-ltz v5, :cond_4

    if-ltz v7, :cond_4

    .line 2146
    if-ltz v8, :cond_3

    const/16 v18, 0x1

    .line 2148
    .end local v9    # "attrIsMigrating":Z
    :cond_0
    :goto_3
    if-eqz v18, :cond_5

    .line 2149
    new-instance v2, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 2151
    const/4 v6, 0x1

    .line 2149
    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;-><init>(Ljava/lang/String;IIIIIZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2153
    .end local v13    # "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .restart local v2    # "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :try_start_2
    invoke-virtual {v2, v10}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setPackageName(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 2167
    .end local v2    # "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .end local v3    # "attrAlias":Ljava/lang/String;
    .end local v4    # "attrId":I
    .end local v5    # "attrUserId":I
    .end local v7    # "attrFlags":I
    .end local v8    # "attrVersion":I
    .end local v10    # "attrPkgName":Ljava/lang/String;
    .end local v14    # "engineInfoFile":Landroid/util/XmlMoreAtomicFile;
    .end local v15    # "eventType":I
    .end local v16    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v17    # "fis":Ljava/io/FileInputStream;
    .end local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v22    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 2168
    .local v12, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    iget-object v6, v6, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->this$0:Lcom/android/server/SdpManagerService;

    const-string/jumbo v23, "SdpManagerService"

    .line 2169
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "EngineInfoXmlHandler :: Failed to get engine info... "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 2168
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v6, v0, v12, v1}, Lcom/android/server/SdpManagerService;->-wrap13(Lcom/android/server/SdpManagerService;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 2170
    if-eqz v14, :cond_1

    .line 2171
    invoke-virtual {v14}, Landroid/util/XmlMoreAtomicFile;->processDamagedFile()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2172
    const/4 v14, 0x0

    .line 2175
    :cond_1
    if-eqz v17, :cond_2

    .line 2177
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_5
    move/from16 v21, v20

    .end local v20    # "retry":I
    .restart local v21    # "retry":I
    goto/16 :goto_0

    .line 2146
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v21    # "retry":I
    .restart local v3    # "attrAlias":Ljava/lang/String;
    .restart local v4    # "attrId":I
    .restart local v5    # "attrUserId":I
    .restart local v7    # "attrFlags":I
    .restart local v8    # "attrVersion":I
    .restart local v9    # "attrIsMigrating":Z
    .restart local v10    # "attrPkgName":Ljava/lang/String;
    .restart local v13    # "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .restart local v14    # "engineInfoFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v15    # "eventType":I
    .restart local v16    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v17    # "fis":Ljava/io/FileInputStream;
    .restart local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v20    # "retry":I
    .restart local v22    # "tag":Ljava/lang/String;
    :cond_3
    const/16 v18, 0x0

    goto :goto_3

    .line 2144
    :cond_4
    const/16 v18, 0x0

    goto :goto_3

    .line 2155
    .end local v9    # "attrIsMigrating":Z
    :cond_5
    :try_start_5
    new-instance v6, Ljava/lang/Exception;

    const-string/jumbo v23, "Suspicious of damaged file..."

    move-object/from16 v0, v23

    invoke-direct {v6, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2167
    .end local v22    # "tag":Ljava/lang/String;
    :catch_1
    move-exception v12

    .restart local v12    # "e":Ljava/lang/Exception;
    move-object v2, v13

    .end local v13    # "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .restart local v2    # "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    goto :goto_4

    .end local v2    # "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v13    # "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :pswitch_3
    move-object v2, v13

    .line 2160
    .end local v13    # "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .restart local v2    # "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    goto/16 :goto_2

    .line 2175
    .end local v2    # "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .restart local v13    # "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :cond_6
    if-eqz v17, :cond_7

    .line 2177
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 2166
    :cond_7
    :goto_6
    return-object v13

    .line 2178
    :catch_2
    move-exception v11

    .local v11, "e":Ljava/io/IOException;
    goto :goto_6

    .end local v3    # "attrAlias":Ljava/lang/String;
    .end local v4    # "attrId":I
    .end local v5    # "attrUserId":I
    .end local v7    # "attrFlags":I
    .end local v8    # "attrVersion":I
    .end local v10    # "attrPkgName":Ljava/lang/String;
    .end local v11    # "e":Ljava/io/IOException;
    .end local v13    # "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .end local v14    # "engineInfoFile":Landroid/util/XmlMoreAtomicFile;
    .end local v15    # "eventType":I
    .end local v16    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v17    # "fis":Ljava/io/FileInputStream;
    .end local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v11

    .restart local v11    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 2174
    .end local v11    # "e":Ljava/io/IOException;
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 2175
    :goto_7
    if-eqz v17, :cond_8

    .line 2177
    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 2174
    :cond_8
    :goto_8
    throw v6

    .line 2178
    :catch_4
    move-exception v11

    .restart local v11    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 2182
    .end local v11    # "e":Ljava/io/IOException;
    .end local v18    # "noError":Z
    :cond_9
    const/4 v6, 0x0

    return-object v6

    .line 2174
    .restart local v3    # "attrAlias":Ljava/lang/String;
    .restart local v4    # "attrId":I
    .restart local v5    # "attrUserId":I
    .restart local v7    # "attrFlags":I
    .restart local v8    # "attrVersion":I
    .restart local v10    # "attrPkgName":Ljava/lang/String;
    .restart local v13    # "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .restart local v14    # "engineInfoFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v15    # "eventType":I
    .restart local v16    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v17    # "fis":Ljava/io/FileInputStream;
    .restart local v18    # "noError":Z
    .restart local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_1
    move-exception v6

    move-object v2, v13

    .end local v13    # "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .restart local v2    # "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    goto :goto_7

    .end local v2    # "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .restart local v13    # "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .restart local v22    # "tag":Ljava/lang/String;
    :cond_a
    move-object v2, v13

    .end local v13    # "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .restart local v2    # "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    goto/16 :goto_2

    .line 2118
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getEngineInfoXmlFile(I)Landroid/util/XmlMoreAtomicFile;
    .locals 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2022
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SdpUser"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2023
    .local v1, "fileName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/data/system/users/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2024
    .local v0, "baseDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2028
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/data/system/users/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2029
    .local v2, "targetFile":Ljava/io/File;
    new-instance v3, Landroid/util/XmlMoreAtomicFile;

    invoke-direct {v3, v2}, Landroid/util/XmlMoreAtomicFile;-><init>(Ljava/io/File;)V

    return-object v3

    .line 2025
    .end local v2    # "targetFile":Ljava/io/File;
    :cond_1
    const-string/jumbo v3, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t make directory - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2026
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
.end method

.method private removeEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .prologue
    .line 2187
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->getEngineInfoXmlFile(I)Landroid/util/XmlMoreAtomicFile;

    move-result-object v1

    .line 2188
    .local v1, "engineInfoFile":Landroid/util/XmlMoreAtomicFile;
    invoke-virtual {v1}, Landroid/util/XmlMoreAtomicFile;->delete()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2185
    .end local v1    # "engineInfoFile":Landroid/util/XmlMoreAtomicFile;
    :goto_0
    return-void

    .line 2189
    :catch_0
    move-exception v0

    .line 2190
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2191
    const-string/jumbo v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "can\'t remove engine info file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .locals 13
    .param p1, "info"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .prologue
    const/16 v9, -0x63

    .line 2033
    const/4 v5, 0x0

    .line 2034
    .local v5, "engineInfoFile":Landroid/util/XmlMoreAtomicFile;
    const/4 v6, 0x0

    .line 2035
    .local v6, "fos":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 2036
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v4

    .line 2039
    .local v4, "engineId":I
    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->getEngineInfoXmlFile(I)Landroid/util/XmlMoreAtomicFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 2044
    .local v5, "engineInfoFile":Landroid/util/XmlMoreAtomicFile;
    const/4 v7, 0x1

    .line 2046
    .local v7, "noError":Z
    :try_start_1
    invoke-virtual {v5}, Landroid/util/XmlMoreAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v6

    .line 2047
    .local v6, "fos":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2049
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    :try_start_2
    new-instance v8, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v8}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2050
    .local v8, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v10, "UTF-8"

    invoke-interface {v8, v1, v10}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2051
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v8, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2052
    const-string/jumbo v10, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v11, 0x1

    invoke-interface {v8, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2056
    const-string/jumbo v10, "user"

    const/4 v11, 0x0

    invoke-interface {v8, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2058
    const-string/jumbo v10, "alias"

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v8, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2059
    const-string/jumbo v10, "pkgName"

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v8, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2060
    const-string/jumbo v10, "id"

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v8, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2061
    const-string/jumbo v10, "userid"

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v8, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2062
    const-string/jumbo v10, "flags"

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getFlag()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v8, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2063
    const-string/jumbo v10, "version"

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getVersion()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v8, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2064
    const-string/jumbo v10, "isMigrating"

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMigrating()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v8, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2068
    const-string/jumbo v10, "user"

    const/4 v11, 0x0

    invoke-interface {v8, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2069
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2070
    invoke-virtual {v5, v6}, Landroid/util/XmlMoreAtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2082
    if-eqz v1, :cond_0

    .line 2083
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_0
    :goto_0
    move-object v0, v1

    .line 2087
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_1
    :goto_1
    if-eqz v7, :cond_2

    .line 2088
    const/4 v9, 0x0

    .line 2087
    :cond_2
    return v9

    .line 2040
    .end local v7    # "noError":Z
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v5, "engineInfoFile":Landroid/util/XmlMoreAtomicFile;
    .local v6, "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 2041
    .local v2, "e":Ljava/io/IOException;
    return v9

    .line 2085
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .local v5, "engineInfoFile":Landroid/util/XmlMoreAtomicFile;
    .local v6, "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "noError":Z
    .restart local v8    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 2071
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    :catch_2
    move-exception v3

    .line 2072
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    iget-object v10, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    iget-object v10, v10, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->this$0:Lcom/android/server/SdpManagerService;

    const-string/jumbo v11, "SdpManagerService"

    .line 2073
    const-string/jumbo v12, "Failed to update engine info..."

    .line 2072
    invoke-static {v10, v11, v3, v12}, Lcom/android/server/SdpManagerService;->-wrap13(Lcom/android/server/SdpManagerService;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 2074
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 2076
    if-eqz v5, :cond_3

    if-eqz v6, :cond_3

    .line 2077
    invoke-virtual {v5, v6}, Landroid/util/XmlMoreAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2079
    :cond_3
    const/4 v7, 0x0

    .line 2082
    if-eqz v0, :cond_1

    .line 2083
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 2085
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 2080
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 2082
    :goto_3
    if-eqz v0, :cond_4

    .line 2083
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 2080
    :cond_4
    :goto_4
    throw v9

    .line 2085
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 2080
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    goto :goto_3

    .line 2071
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    :catch_5
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_2
.end method
