.class public abstract Lcom/android/server/SEAMSContainer;
.super Ljava/lang/Object;
.source "SEAMSContainer.java"


# static fields
.field public static final ACTION_SECONTAINER_ADDED:Ljava/lang/String; = "android.intent.action.SECONTAINER_ADDED"

.field public static final ACTION_SECONTAINER_REMOVED:Ljava/lang/String; = "android.intent.action.SECONTAINER_REMOVED"

.field public static final BBCCONTAINER:I = 0x3

.field public static final BBC_SHARED_APPS_CATEGORY:I = 0x1f5

.field public static final FIXMO_CATEGORY_NUMBER:I = 0x6a

.field public static final KNOXCONTAINER_START_CATEGORY:I = 0x1

.field public static final MYCONTAINER:I = 0x2

.field public static final NONE:I = 0x0

.field public static final OTHER_CONTAINER_END_CATEGORY:I = 0x2bc

.field public static final OTHER_CONTAINER_START_CATEGORY:I = 0x66

.field public static final REMOVE_BBCCONTAINER_TYPE:I = 0x6

.field public static final REMOVE_MYCONTAINER_TYPE:I = 0x0

.field public static final SECURED_APPTYPE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SEAMSContainer"

.field public static final THIRDPARTYCONTAINER:I = 0x1

.field public static final TRUSTED_APPTYPE:I = 0x2

.field public static final USER_VALUE:I = 0x62

.field protected static mContext:Landroid/content/Context;

.field private static mSKLog:Lcom/android/server/SKLogger;


# instance fields
.field protected mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field protected mPms:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    .line 84
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static declared-synchronized addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
    .locals 41
    .param p0, "macPermFile"    # Ljava/io/File;
    .param p1, "signature"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "seinfo"    # Ljava/lang/String;
    .param p4, "cat"    # Ljava/lang/String;
    .param p5, "appType"    # I
    .param p6, "agent"    # Z

    .prologue
    const-class v37, Lcom/android/server/SEAMSContainer;

    monitor-enter v37

    .line 238
    const/16 v17, 0x0

    .line 239
    .local v17, "isAddedMac":Z
    const/16 v18, 0x0

    .line 240
    .local v18, "macPermExists":Z
    const/4 v4, 0x0

    .line 241
    .local v4, "conType":I
    const/16 v35, 0x0

    .line 242
    .local v35, "userID":I
    :try_start_0
    invoke-static {}, Lcom/android/server/SEAMSContainer;->getBbcEnabled()I

    move-result v35

    .line 245
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 247
    .local v7, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v6, 0x0

    .line 249
    .local v6, "doc":Lorg/w3c/dom/Document;
    :try_start_1
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    .line 250
    .local v5, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v36

    if-eqz v36, :cond_8

    .line 254
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v36

    if-nez v36, :cond_0

    .line 255
    const/16 v36, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 256
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v6

    .line 257
    .local v6, "doc":Lorg/w3c/dom/Document;
    const/16 v18, 0x1

    .line 269
    :goto_0
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Element;->normalize()V

    .line 270
    const-string/jumbo v36, "policy"

    move-object/from16 v0, v36

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v22

    .line 271
    .local v22, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/16 v21, 0x0

    .line 272
    .local v21, "policyElement":Lorg/w3c/dom/Element;
    const/16 v36, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    .end local v21    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v21, Lorg/w3c/dom/Element;

    .line 273
    .local v21, "policyElement":Lorg/w3c/dom/Element;
    const-string/jumbo v36, "signer"

    move-object/from16 v0, v21

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v27

    .line 274
    .local v27, "signer":Lorg/w3c/dom/NodeList;
    const/16 v29, 0x0

    .line 275
    .local v29, "signerElementCur":Lorg/w3c/dom/Element;
    const/16 v28, 0x0

    .line 276
    .local v28, "signerElement":Lorg/w3c/dom/Element;
    const/4 v3, 0x0

    .line 277
    .local v3, "allowallElement":Lorg/w3c/dom/Element;
    const/16 v19, 0x0

    .line 278
    .local v19, "newElement":Lorg/w3c/dom/Element;
    const/16 v26, 0x0

    .line 281
    .local v26, "seinfoElement":Lorg/w3c/dom/Element;
    :try_start_2
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    invoke-static/range {v36 .. v36}, Lcom/android/server/SEAMSContainer;->getContainerType(I)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    .line 286
    const/16 v31, 0x0

    .line 287
    .local v31, "specialTag":Ljava/lang/String;
    const/16 v36, 0x1

    move/from16 v0, v36

    if-eq v4, v0, :cond_1

    const/16 v36, 0x2

    move/from16 v0, v36

    if-ne v4, v0, :cond_a

    .line 288
    :cond_1
    const/16 v36, 0x2

    move/from16 v0, p5

    move/from16 v1, v36

    if-eq v0, v1, :cond_2

    const/16 v36, 0x4

    move/from16 v0, p5

    move/from16 v1, v36

    if-ne v0, v1, :cond_b

    .line 289
    :cond_2
    :try_start_3
    const-string/jumbo v31, "service"

    .line 290
    .local v31, "specialTag":Ljava/lang/String;
    move-object/from16 v0, v31

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v19

    .line 291
    .local v19, "newElement":Lorg/w3c/dom/Element;
    const-string/jumbo v36, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string/jumbo v36, "seinfo"

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string/jumbo v36, "category"

    const-string/jumbo v38, "1023"

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string/jumbo v36, "allowcategory"

    const-string/jumbo v38, "0,701-1023"

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string/jumbo v36, "containerallowcategory"

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    move-object/from16 v2, p4

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .end local v19    # "newElement":Lorg/w3c/dom/Element;
    .end local v31    # "specialTag":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->findMacPermEntry(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v25

    .line 338
    .local v25, "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    const-string/jumbo v36, "signer"

    move-object/from16 v0, v36

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v28

    .line 339
    .local v28, "signerElement":Lorg/w3c/dom/Element;
    const-string/jumbo v36, "seinfo"

    move-object/from16 v0, v36

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v26

    .line 340
    .local v26, "seinfoElement":Lorg/w3c/dom/Element;
    const-string/jumbo v36, "allow-all"

    move-object/from16 v0, v36

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 341
    .local v3, "allowallElement":Lorg/w3c/dom/Element;
    if-eqz v25, :cond_4

    const/16 v36, 0x2

    move/from16 v0, v36

    if-ne v4, v0, :cond_10

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v36, v0

    const-string/jumbo v38, "default"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_10

    .line 342
    :cond_4
    const-string/jumbo v36, "signature"

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string/jumbo v36, "value"

    const-string/jumbo v38, "untrusted"

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string/jumbo v36, "category"

    const-string/jumbo v38, "1023"

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string/jumbo v36, "allowcategory"

    const-string/jumbo v38, "0,701-1023"

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    .end local v29    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_5
    :goto_2
    if-nez v17, :cond_6

    .line 427
    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 428
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 429
    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 430
    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 432
    :cond_6
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Element;->normalize()V

    .line 433
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v34

    .line 434
    .local v34, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v34 .. v34}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v33

    .line 435
    .local v33, "transformer":Ljavax/xml/transform/Transformer;
    const/16 v30, 0x0

    .line 436
    .local v30, "source":Ljavax/xml/transform/dom/DOMSource;
    if-eqz v18, :cond_1e

    .line 437
    new-instance v30, Ljavax/xml/transform/dom/DOMSource;

    .end local v30    # "source":Ljavax/xml/transform/dom/DOMSource;
    move-object/from16 v0, v30

    invoke-direct {v0, v6}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 441
    .local v30, "source":Ljavax/xml/transform/dom/DOMSource;
    :goto_3
    new-instance v23, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 442
    .local v23, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v33

    move-object/from16 v1, v30

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 443
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v36

    if-eqz v36, :cond_7

    .line 444
    const/16 v36, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 445
    :cond_7
    const/16 v36, 0x0

    monitor-exit v37

    return v36

    .line 262
    .end local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v21    # "policyElement":Lorg/w3c/dom/Element;
    .end local v22    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v23    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v25    # "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    .end local v26    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v27    # "signer":Lorg/w3c/dom/NodeList;
    .end local v28    # "signerElement":Lorg/w3c/dom/Element;
    .end local v30    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v33    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v34    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    .local v6, "doc":Lorg/w3c/dom/Document;
    :cond_8
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->createNewFile()Z

    .line 263
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v36

    if-nez v36, :cond_9

    .line 264
    const/16 v36, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 265
    :cond_9
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v6

    .line 266
    .local v6, "doc":Lorg/w3c/dom/Document;
    const-string/jumbo v36, "policy"

    move-object/from16 v0, v36

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v24

    .line 267
    .local v24, "rootElement":Lorg/w3c/dom/Element;
    move-object/from16 v0, v24

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 446
    .end local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v24    # "rootElement":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v13

    .line 447
    .local v13, "e1":Lorg/xml/sax/SAXException;
    :try_start_5
    invoke-virtual {v13}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 448
    new-instance v32, Ljava/io/StringWriter;

    invoke-direct/range {v32 .. v32}, Ljava/io/StringWriter;-><init>()V

    .line 449
    .local v32, "sw":Ljava/io/StringWriter;
    new-instance v36, Ljava/io/PrintWriter;

    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object/from16 v0, v36

    invoke-virtual {v13, v0}, Lorg/xml/sax/SAXException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 450
    invoke-virtual/range {v32 .. v32}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v14

    .line 451
    .local v14, "exceptionAsStrting":Ljava/lang/String;
    sget-object v36, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v38, "SEAMSContainer"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    .end local v13    # "e1":Lorg/xml/sax/SAXException;
    :goto_4
    sget-object v36, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v38, "SEAMSContainer"

    const-string/jumbo v39, "addEntryToMac, POLICY_FAILED is returned"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 478
    const/16 v36, -0x1

    monitor-exit v37

    return v36

    .line 282
    .end local v14    # "exceptionAsStrting":Ljava/lang/String;
    .end local v32    # "sw":Ljava/io/StringWriter;
    .local v3, "allowallElement":Lorg/w3c/dom/Element;
    .restart local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6    # "doc":Lorg/w3c/dom/Document;
    .local v19, "newElement":Lorg/w3c/dom/Element;
    .restart local v21    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v22    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .local v26, "seinfoElement":Lorg/w3c/dom/Element;
    .restart local v27    # "signer":Lorg/w3c/dom/NodeList;
    .local v28, "signerElement":Lorg/w3c/dom/Element;
    .restart local v29    # "signerElementCur":Lorg/w3c/dom/Element;
    :catch_1
    move-exception v9

    .line 283
    .local v9, "e":Ljava/lang/NumberFormatException;
    :try_start_6
    sget-object v36, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v38, "SEAMSContainer"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "category: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string/jumbo v40, " integer parse failed"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 284
    const/16 v36, -0x1

    monitor-exit v37

    return v36

    .line 287
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .local v31, "specialTag":Ljava/lang/String;
    :cond_a
    const/16 v36, 0x3

    move/from16 v0, v36

    if-eq v4, v0, :cond_1

    .line 330
    :try_start_7
    sget-object v36, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v38, "SEAMSContainer"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "addEntryToMac is not supported for containertype:"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 331
    const/16 v36, -0x1

    monitor-exit v37

    return v36

    .line 300
    :cond_b
    const/16 v36, 0x1

    move/from16 v0, p5

    move/from16 v1, v36

    if-eq v0, v1, :cond_c

    const/16 v36, 0x3

    move/from16 v0, p5

    move/from16 v1, v36

    if-ne v0, v1, :cond_e

    .line 301
    :cond_c
    :try_start_8
    const-string/jumbo v31, "service"

    .line 302
    .local v31, "specialTag":Ljava/lang/String;
    move-object/from16 v0, v31

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v19

    .line 303
    .local v19, "newElement":Lorg/w3c/dom/Element;
    const-string/jumbo v36, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string/jumbo v36, "seinfo"

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string/jumbo v36, "category"

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    move-object/from16 v2, p4

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string/jumbo v36, "1023"

    move-object/from16 v0, p4

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_d

    .line 307
    const-string/jumbo v36, "allowcategory"

    const-string/jumbo v38, "0,701-1023"

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :goto_5
    if-eqz p6, :cond_3

    .line 312
    const-string/jumbo v36, "agent"

    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 452
    .end local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v19    # "newElement":Lorg/w3c/dom/Element;
    .end local v21    # "policyElement":Lorg/w3c/dom/Element;
    .end local v22    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v26    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v27    # "signer":Lorg/w3c/dom/NodeList;
    .end local v28    # "signerElement":Lorg/w3c/dom/Element;
    .end local v29    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v31    # "specialTag":Ljava/lang/String;
    :catch_2
    move-exception v11

    .line 453
    .local v11, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_9
    invoke-virtual {v11}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 454
    new-instance v32, Ljava/io/StringWriter;

    invoke-direct/range {v32 .. v32}, Ljava/io/StringWriter;-><init>()V

    .line 455
    .restart local v32    # "sw":Ljava/io/StringWriter;
    new-instance v36, Ljava/io/PrintWriter;

    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 456
    invoke-virtual/range {v32 .. v32}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v14

    .line 457
    .restart local v14    # "exceptionAsStrting":Ljava/lang/String;
    sget-object v36, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v38, "SEAMSContainer"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_4

    .end local v7    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v11    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v14    # "exceptionAsStrting":Ljava/lang/String;
    .end local v32    # "sw":Ljava/io/StringWriter;
    :catchall_0
    move-exception v36

    monitor-exit v37

    throw v36

    .line 309
    .restart local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .restart local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6    # "doc":Lorg/w3c/dom/Document;
    .restart local v7    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v19    # "newElement":Lorg/w3c/dom/Element;
    .restart local v21    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v22    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v26    # "seinfoElement":Lorg/w3c/dom/Element;
    .restart local v27    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v28    # "signerElement":Lorg/w3c/dom/Element;
    .restart local v29    # "signerElementCur":Lorg/w3c/dom/Element;
    .restart local v31    # "specialTag":Ljava/lang/String;
    :cond_d
    :try_start_a
    const-string/jumbo v36, "allowcategory"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "0,"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Lorg/xml/sax/SAXException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_5

    .line 458
    .end local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v19    # "newElement":Lorg/w3c/dom/Element;
    .end local v21    # "policyElement":Lorg/w3c/dom/Element;
    .end local v22    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v26    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v27    # "signer":Lorg/w3c/dom/NodeList;
    .end local v28    # "signerElement":Lorg/w3c/dom/Element;
    .end local v29    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v31    # "specialTag":Ljava/lang/String;
    :catch_3
    move-exception v12

    .line 459
    .local v12, "e1":Ljavax/xml/transform/TransformerException;
    :try_start_b
    invoke-virtual {v12}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    .line 460
    new-instance v32, Ljava/io/StringWriter;

    invoke-direct/range {v32 .. v32}, Ljava/io/StringWriter;-><init>()V

    .line 461
    .restart local v32    # "sw":Ljava/io/StringWriter;
    new-instance v36, Ljava/io/PrintWriter;

    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object/from16 v0, v36

    invoke-virtual {v12, v0}, Ljavax/xml/transform/TransformerException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 462
    invoke-virtual/range {v32 .. v32}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v14

    .line 463
    .restart local v14    # "exceptionAsStrting":Ljava/lang/String;
    sget-object v36, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v38, "SEAMSContainer"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_4

    .line 313
    .end local v12    # "e1":Ljavax/xml/transform/TransformerException;
    .end local v14    # "exceptionAsStrting":Ljava/lang/String;
    .end local v32    # "sw":Ljava/io/StringWriter;
    .restart local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .restart local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6    # "doc":Lorg/w3c/dom/Document;
    .local v19, "newElement":Lorg/w3c/dom/Element;
    .restart local v21    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v22    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v26    # "seinfoElement":Lorg/w3c/dom/Element;
    .restart local v27    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v28    # "signerElement":Lorg/w3c/dom/Element;
    .restart local v29    # "signerElementCur":Lorg/w3c/dom/Element;
    .local v31, "specialTag":Ljava/lang/String;
    :cond_e
    const/16 v36, 0x5

    move/from16 v0, p5

    move/from16 v1, v36

    if-ne v0, v1, :cond_3

    .line 314
    :try_start_c
    sget-object v36, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v38, "SEAMSContainer"

    const-string/jumbo v39, "appType = SEAMSPolicy.BBC_SECURED_APPTYPE"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string/jumbo v31, "service"

    .line 316
    .local v31, "specialTag":Ljava/lang/String;
    move-object/from16 v0, v31

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v19

    .line 317
    .local v19, "newElement":Lorg/w3c/dom/Element;
    const-string/jumbo v36, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string/jumbo v36, "bbcseinfo"

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string/jumbo v36, "bbccategory"

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    move-object/from16 v2, p4

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    const/16 v38, 0x1f5

    move/from16 v0, v36

    move/from16 v1, v38

    if-ne v0, v1, :cond_f

    .line 321
    const-string/jumbo v36, "bbcallowcategory"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "0,"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, ",502-700"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :goto_6
    const-string/jumbo v36, "sdcarduserid"

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    if-eqz p6, :cond_3

    .line 327
    const-string/jumbo v36, "agent"

    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Lorg/xml/sax/SAXException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_1

    .line 464
    .end local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v19    # "newElement":Lorg/w3c/dom/Element;
    .end local v21    # "policyElement":Lorg/w3c/dom/Element;
    .end local v22    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v26    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v27    # "signer":Lorg/w3c/dom/NodeList;
    .end local v28    # "signerElement":Lorg/w3c/dom/Element;
    .end local v29    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v31    # "specialTag":Ljava/lang/String;
    :catch_4
    move-exception v10

    .line 465
    .local v10, "e1":Ljava/io/IOException;
    :try_start_d
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 466
    new-instance v32, Ljava/io/StringWriter;

    invoke-direct/range {v32 .. v32}, Ljava/io/StringWriter;-><init>()V

    .line 467
    .restart local v32    # "sw":Ljava/io/StringWriter;
    new-instance v36, Ljava/io/PrintWriter;

    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 468
    invoke-virtual/range {v32 .. v32}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v14

    .line 469
    .restart local v14    # "exceptionAsStrting":Ljava/lang/String;
    sget-object v36, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v38, "SEAMSContainer"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_4

    .line 323
    .end local v10    # "e1":Ljava/io/IOException;
    .end local v14    # "exceptionAsStrting":Ljava/lang/String;
    .end local v32    # "sw":Ljava/io/StringWriter;
    .restart local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .restart local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6    # "doc":Lorg/w3c/dom/Document;
    .restart local v19    # "newElement":Lorg/w3c/dom/Element;
    .restart local v21    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v22    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v26    # "seinfoElement":Lorg/w3c/dom/Element;
    .restart local v27    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v28    # "signerElement":Lorg/w3c/dom/Element;
    .restart local v29    # "signerElementCur":Lorg/w3c/dom/Element;
    .restart local v31    # "specialTag":Ljava/lang/String;
    :cond_f
    :try_start_e
    const-string/jumbo v36, "bbcallowcategory"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "0,501,"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Lorg/xml/sax/SAXException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_6

    .line 470
    .end local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v19    # "newElement":Lorg/w3c/dom/Element;
    .end local v21    # "policyElement":Lorg/w3c/dom/Element;
    .end local v22    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v26    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v27    # "signer":Lorg/w3c/dom/NodeList;
    .end local v28    # "signerElement":Lorg/w3c/dom/Element;
    .end local v29    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v31    # "specialTag":Ljava/lang/String;
    :catch_5
    move-exception v8

    .line 471
    .local v8, "e":Ljava/lang/Exception;
    :try_start_f
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 472
    new-instance v32, Ljava/io/StringWriter;

    invoke-direct/range {v32 .. v32}, Ljava/io/StringWriter;-><init>()V

    .line 473
    .restart local v32    # "sw":Ljava/io/StringWriter;
    new-instance v36, Ljava/io/PrintWriter;

    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 474
    invoke-virtual/range {v32 .. v32}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v14

    .line 475
    .restart local v14    # "exceptionAsStrting":Ljava/lang/String;
    sget-object v36, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v38, "SEAMSContainer"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_4

    .line 358
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v14    # "exceptionAsStrting":Ljava/lang/String;
    .end local v32    # "sw":Ljava/io/StringWriter;
    .local v3, "allowallElement":Lorg/w3c/dom/Element;
    .restart local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6    # "doc":Lorg/w3c/dom/Document;
    .restart local v21    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v22    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v25    # "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    .local v26, "seinfoElement":Lorg/w3c/dom/Element;
    .restart local v27    # "signer":Lorg/w3c/dom/NodeList;
    .local v28, "signerElement":Lorg/w3c/dom/Element;
    .restart local v29    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_10
    const/16 v36, 0x1

    move/from16 v0, v36

    if-eq v4, v0, :cond_11

    const/16 v36, 0x2

    move/from16 v0, v36

    if-ne v4, v0, :cond_12

    .line 359
    :cond_11
    :try_start_10
    const-string/jumbo v36, "signature"

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const/16 v36, 0x3

    move/from16 v0, v36

    if-ne v4, v0, :cond_14

    .line 362
    const-string/jumbo v36, "value"

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string/jumbo v36, "category"

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string/jumbo v36, "allowcategory"

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string/jumbo v36, "bbccategory"

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string/jumbo v36, "bbcallowcategory"

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->bbcallowCategory:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :goto_7
    const/16 v36, 0x2

    move/from16 v0, p5

    move/from16 v1, v36

    if-ne v0, v1, :cond_13

    .line 373
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    move-object/from16 v36, v0

    if-eqz v36, :cond_15

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/server/SEAMSContainer;->checkCategory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_15

    .line 375
    sget-object v36, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v38, "SEAMSContainer"

    const-string/jumbo v39, "addEntryToMac, same allowContainerCategory already exists for this package, return true and continue with next step"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Lorg/xml/sax/SAXException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 377
    const/16 v36, -0x9

    monitor-exit v37

    return v36

    .line 358
    :cond_12
    const/16 v36, 0x3

    move/from16 v0, v36

    if-eq v4, v0, :cond_11

    .line 384
    :cond_13
    :goto_8
    const/16 v16, 0x0

    .end local v29    # "signerElementCur":Lorg/w3c/dom/Element;
    .local v16, "i":I
    :goto_9
    :try_start_11
    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v36

    move/from16 v0, v16

    move/from16 v1, v36

    if-ge v0, v1, :cond_5

    .line 385
    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v29

    check-cast v29, Lorg/w3c/dom/Element;

    .line 386
    .local v29, "signerElementCur":Lorg/w3c/dom/Element;
    const-string/jumbo v36, "signature"

    move-object/from16 v0, v29

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_1d

    .line 387
    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/server/SEAMSContainer;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v15

    .line 388
    .local v15, "existElem":Lorg/w3c/dom/Element;
    if-eqz v15, :cond_16

    const/16 v36, 0x1

    move/from16 v0, v36

    if-ne v4, v0, :cond_16

    .line 389
    sget-object v36, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v38, "SEAMSContainer"

    const-string/jumbo v39, "addEntryToMac, ERROR_ALREADY_CONTAINER_APP is returned_1"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Lorg/xml/sax/SAXException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 390
    const/16 v36, -0x9

    monitor-exit v37

    return v36

    .line 368
    .end local v15    # "existElem":Lorg/w3c/dom/Element;
    .end local v16    # "i":I
    .local v29, "signerElementCur":Lorg/w3c/dom/Element;
    :cond_14
    :try_start_12
    const-string/jumbo v36, "value"

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string/jumbo v36, "category"

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string/jumbo v36, "allowcategory"

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 379
    :cond_15
    const-string/jumbo v36, "category"

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string/jumbo v36, "allowcategory"

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 393
    .restart local v15    # "existElem":Lorg/w3c/dom/Element;
    .restart local v16    # "i":I
    .local v29, "signerElementCur":Lorg/w3c/dom/Element;
    :cond_16
    if-eqz v15, :cond_17

    const/16 v36, 0x2

    move/from16 v0, v36

    if-ne v4, v0, :cond_17

    const/16 v36, 0x3

    move/from16 v0, p5

    move/from16 v1, v36

    if-ne v0, v1, :cond_17

    const-string/jumbo v36, "1023"

    const-string/jumbo v38, "category"

    move-object/from16 v0, v38

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_18

    .line 394
    :cond_17
    if-eqz v15, :cond_19

    const/16 v36, 0x3

    move/from16 v0, v36

    if-ne v4, v0, :cond_19

    const/16 v36, 0x5

    move/from16 v0, p5

    move/from16 v1, v36

    if-ne v0, v1, :cond_19

    .line 395
    :cond_18
    sget-object v36, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v38, "SEAMSContainer"

    const-string/jumbo v39, "addEntryToMac, ERROR_ALREADY_CONTAINER_APP is returned_2"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Lorg/xml/sax/SAXException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 396
    const/16 v36, -0x9

    monitor-exit v37

    return v36

    .line 399
    :cond_19
    if-eqz v15, :cond_1c

    const/16 v36, 0x2

    move/from16 v0, v36

    if-ne v4, v0, :cond_1c

    const/16 v36, 0x4

    move/from16 v0, p5

    move/from16 v1, v36

    if-ne v0, v1, :cond_1c

    .line 401
    :try_start_13
    const-string/jumbo v36, "containerallowcategory"

    move-object/from16 v0, v36

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    if-nez v36, :cond_1a

    .line 402
    sget-object v36, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v38, "SEAMSContainer"

    const-string/jumbo v39, "addEntryToMac, ERROR_ALREADY_CONTAINER_APP is returned_3"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Lorg/xml/sax/SAXException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_13 .. :try_end_13} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_4
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 403
    const/16 v36, -0x9

    monitor-exit v37

    return v36

    .line 406
    :cond_1a
    :try_start_14
    const-string/jumbo v36, "containerallowcategory"

    move-object/from16 v0, v36

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/server/SEAMSContainer;->checkCategory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_1b

    .line 408
    sget-object v36, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v38, "SEAMSContainer"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "addEntryToMac, Existing "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-interface {v15}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string/jumbo v40, " entry for "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string/jumbo v40, ", return true and continue with next step"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Lorg/xml/sax/SAXException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_14 .. :try_end_14} :catch_3
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_4
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 410
    const/16 v36, -0x9

    monitor-exit v37

    return v36

    .line 412
    :cond_1b
    :try_start_15
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v38, ","

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v38, "containerallowcategory"

    move-object/from16 v0, v38

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 413
    .local v20, "newValue":Ljava/lang/String;
    const-string/jumbo v36, "containerallowcategory"

    move-object/from16 v0, v36

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const/16 v17, 0x1

    goto/16 :goto_2

    .line 417
    .end local v20    # "newValue":Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 421
    const/16 v17, 0x1

    .line 422
    goto/16 :goto_2

    .line 384
    .end local v15    # "existElem":Lorg/w3c/dom/Element;
    :cond_1d
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_9

    .line 439
    .end local v16    # "i":I
    .end local v29    # "signerElementCur":Lorg/w3c/dom/Element;
    .local v30, "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v33    # "transformer":Ljavax/xml/transform/Transformer;
    .restart local v34    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :cond_1e
    new-instance v30, Ljavax/xml/transform/dom/DOMSource;

    .end local v30    # "source":Ljavax/xml/transform/dom/DOMSource;
    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_15
    .catch Lorg/xml/sax/SAXException; {:try_start_15 .. :try_end_15} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_15 .. :try_end_15} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_15 .. :try_end_15} :catch_3
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_4
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .local v30, "source":Ljavax/xml/transform/dom/DOMSource;
    goto/16 :goto_3
.end method

.method private static checkCategory(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "existingContAllowCat"    # Ljava/lang/String;
    .param p1, "newCat"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1290
    const-string/jumbo v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1291
    .local v0, "allowCats":[Ljava/lang/String;
    array-length v4, v0

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v0, v2

    .line 1292
    .local v1, "item":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1293
    const/4 v2, 0x1

    return v2

    .line 1291
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1296
    .end local v1    # "item":Ljava/lang/String;
    :cond_1
    return v3
.end method

.method public static checkCategoryRange(Ljava/lang/String;III)I
    .locals 12
    .param p0, "existingContAllowCat"    # Ljava/lang/String;
    .param p1, "startRange"    # I
    .param p2, "endRange"    # I
    .param p3, "appType"    # I

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x2

    const/16 v9, 0x6a

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 1307
    const-string/jumbo v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1309
    .local v0, "allowCats":[Ljava/lang/String;
    :try_start_0
    array-length v6, v0

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_7

    aget-object v2, v0, v4

    .line 1310
    .local v2, "item":Ljava/lang/String;
    const-string/jumbo v7, "-"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1311
    const-string/jumbo v7, "-"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1312
    .local v3, "range":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-lt v7, p1, :cond_2

    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-gt v7, p2, :cond_2

    .line 1315
    :cond_0
    :goto_1
    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne v9, v7, :cond_4

    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne v9, v7, :cond_4

    if-eq p3, v10, :cond_1

    if-ne p3, v11, :cond_4

    .line 1309
    .end local v3    # "range":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1313
    .restart local v3    # "range":[Ljava/lang/String;
    :cond_2
    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-lt v7, p1, :cond_3

    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-le v7, p2, :cond_0

    .line 1314
    :cond_3
    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ge v7, p1, :cond_1

    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-le v7, p2, :cond_1

    goto :goto_1

    .line 1319
    :cond_4
    sget-object v4, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v5, "SEAMSContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Found other container category:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in contAllowCat is :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    return v8

    .line 1323
    .end local v3    # "range":[Ljava/lang/String;
    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-lt v7, p1, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-gt v7, p2, :cond_1

    .line 1324
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v9, :cond_6

    if-eq p3, v10, :cond_1

    if-eq p3, v11, :cond_1

    .line 1328
    :cond_6
    sget-object v4, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v5, "SEAMSContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Found other container category:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in contAllowCat:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1329
    return v8

    .line 1333
    .end local v2    # "item":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1334
    .local v1, "e":Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v5, "SEAMSContainer"

    const-string/jumbo v6, "NumberFormatException in checkCategoryRange"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    const/4 v4, -0x1

    return v4

    .line 1337
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    sget-object v4, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "SEAMSContainer"

    const-string/jumbo v7, "checkCategoryRange, FALSE is returned"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    return v5
.end method

.method private static checkContainerIDEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;I)Lorg/w3c/dom/Element;
    .locals 6
    .param p0, "curElem"    # Lorg/w3c/dom/Element;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cat"    # Ljava/lang/String;
    .param p3, "appType"    # I

    .prologue
    const/4 v5, 0x0

    .line 1229
    if-nez p0, :cond_0

    .line 1231
    sget-object v2, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMSContainer"

    const-string/jumbo v4, "checkContainerIDEntryExists: curElem is null"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    return-object v5

    .line 1235
    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 1236
    .local v0, "currTrustedPackageElem":Lorg/w3c/dom/Element;
    const/4 v1, 0x0

    .line 1238
    .local v1, "returnElem":Lorg/w3c/dom/Element;
    if-eqz p3, :cond_1

    const/4 v2, 0x6

    if-ne p3, v2, :cond_7

    .line 1239
    :cond_1
    :goto_0
    if-eqz v0, :cond_5

    .line 1240
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "seinfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "name"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "category"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "bbccategory"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_2
    const-string/jumbo v2, "agent"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "agent"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    const-string/jumbo v2, "seinfo"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "generic_mdm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1244
    :cond_4
    move-object v1, v0

    .line 1262
    .end local v1    # "returnElem":Lorg/w3c/dom/Element;
    :cond_5
    :goto_1
    return-object v1

    .line 1247
    .restart local v1    # "returnElem":Lorg/w3c/dom/Element;
    :cond_6
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    .end local v0    # "currTrustedPackageElem":Lorg/w3c/dom/Element;
    check-cast v0, Lorg/w3c/dom/Element;

    .restart local v0    # "currTrustedPackageElem":Lorg/w3c/dom/Element;
    goto :goto_0

    .line 1251
    :cond_7
    :goto_2
    if-eqz v0, :cond_5

    .line 1252
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "seinfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "name"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string/jumbo v2, "category"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "bbccategory"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    const-string/jumbo v2, "agent"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1259
    :cond_9
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    .end local v0    # "currTrustedPackageElem":Lorg/w3c/dom/Element;
    check-cast v0, Lorg/w3c/dom/Element;

    .restart local v0    # "currTrustedPackageElem":Lorg/w3c/dom/Element;
    goto :goto_2

    .line 1252
    :cond_a
    const-string/jumbo v2, "seinfo"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "generic_mdm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1256
    move-object v1, v0

    .line 1257
    .local v1, "returnElem":Lorg/w3c/dom/Element;
    goto :goto_1
.end method

.method private static checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 6
    .param p0, "curElem"    # Lorg/w3c/dom/Element;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1201
    if-nez p0, :cond_0

    .line 1203
    sget-object v2, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMSContainer"

    const-string/jumbo v4, "checkTrustedEntryExists: curElem is null"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    return-object v5

    .line 1208
    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 1209
    .local v0, "currTrustedPackageElem":Lorg/w3c/dom/Element;
    const/4 v1, 0x0

    .line 1211
    .local v1, "returnElem":Lorg/w3c/dom/Element;
    :goto_0
    if-eqz v0, :cond_3

    .line 1212
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "seinfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "name"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "agent"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1219
    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    .end local v0    # "currTrustedPackageElem":Lorg/w3c/dom/Element;
    check-cast v0, Lorg/w3c/dom/Element;

    .restart local v0    # "currTrustedPackageElem":Lorg/w3c/dom/Element;
    goto :goto_0

    .line 1212
    :cond_2
    const-string/jumbo v2, "seinfo"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "generic_mdm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1216
    move-object v1, v0

    .line 1221
    .end local v1    # "returnElem":Lorg/w3c/dom/Element;
    :cond_3
    return-object v1
.end method

.method protected static getBbcEnabled()I
    .locals 4

    .prologue
    .line 1400
    const/4 v1, 0x0

    .line 1401
    .local v1, "userId":I
    sget-object v2, Lcom/android/server/SEAMSContainer;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    .line 1402
    .local v0, "persona":Lcom/samsung/android/knox/SemPersonaManager;
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getBbcEnabled()I

    move-result v1

    .line 1404
    return v1
.end method

.method private static getContainerType(I)I
    .locals 2
    .param p0, "cat"    # I

    .prologue
    const/16 v1, 0x1f4

    .line 1188
    const/16 v0, 0xc7

    if-le p0, v0, :cond_1

    if-gt p0, v1, :cond_1

    .line 1189
    :cond_0
    const/4 v0, 0x2

    return v0

    .line 1188
    :cond_1
    const/16 v0, 0x3ff

    if-eq p0, v0, :cond_0

    .line 1190
    if-le p0, v1, :cond_2

    const/16 v0, 0x2bc

    if-ge p0, v0, :cond_2

    .line 1191
    const/4 v0, 0x3

    return v0

    .line 1193
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method protected static declared-synchronized getSignatureEntryFromMac(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .param p0, "macPermFile"    # Ljava/io/File;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const-class v16, Lcom/android/server/SEAMSContainer;

    monitor-enter v16

    .line 889
    const/4 v11, 0x0

    .line 892
    .local v11, "seinfoElem":Lorg/w3c/dom/Element;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 894
    .local v4, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_1
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 895
    .local v2, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v3, 0x0

    .line 897
    .local v3, "doc":Lorg/w3c/dom/Document;
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 902
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 909
    .local v3, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Element;->normalize()V

    .line 910
    const-string/jumbo v15, "policy"

    invoke-interface {v3, v15}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 911
    .local v9, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    .line 912
    .local v8, "policyElement":Lorg/w3c/dom/Element;
    const/4 v15, 0x0

    invoke-interface {v9, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .end local v8    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v8, Lorg/w3c/dom/Element;

    .line 913
    .local v8, "policyElement":Lorg/w3c/dom/Element;
    const-string/jumbo v15, "signer"

    invoke-interface {v8, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 914
    .local v13, "signer":Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    .line 915
    .local v14, "signerElementCur":Lorg/w3c/dom/Element;
    const/4 v10, 0x0

    .line 922
    .local v10, "removeElem":Lorg/w3c/dom/Element;
    const/4 v6, 0x0

    .end local v14    # "signerElementCur":Lorg/w3c/dom/Element;
    .local v6, "i":I
    :goto_0
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    if-ge v6, v15, :cond_3

    .line 923
    invoke-interface {v13, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    .line 924
    .local v14, "signerElementCur":Lorg/w3c/dom/Element;
    invoke-interface {v14}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 926
    .local v7, "packageElem":Lorg/w3c/dom/Element;
    :goto_1
    if-eqz v7, :cond_2

    .line 927
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v17, "seinfo"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    const-string/jumbo v15, "name"

    invoke-interface {v7, v15}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 928
    const-string/jumbo v15, "signature"

    invoke-interface {v14, v15}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    .local v12, "signature":Ljava/lang/String;
    monitor-exit v16

    .line 929
    return-object v12

    .line 905
    .end local v6    # "i":I
    .end local v7    # "packageElem":Lorg/w3c/dom/Element;
    .end local v8    # "policyElement":Lorg/w3c/dom/Element;
    .end local v9    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v10    # "removeElem":Lorg/w3c/dom/Element;
    .end local v12    # "signature":Ljava/lang/String;
    .end local v13    # "signer":Lorg/w3c/dom/NodeList;
    .end local v14    # "signerElementCur":Lorg/w3c/dom/Element;
    .local v3, "doc":Lorg/w3c/dom/Document;
    :cond_0
    :try_start_2
    sget-object v15, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v17, "SEAMSContainer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "getSignatureEntryFromMac, "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " does not exist, creating file"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 907
    const/4 v15, 0x0

    monitor-exit v16

    return-object v15

    .line 931
    .local v3, "doc":Lorg/w3c/dom/Document;
    .restart local v6    # "i":I
    .restart local v7    # "packageElem":Lorg/w3c/dom/Element;
    .restart local v8    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v9    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v10    # "removeElem":Lorg/w3c/dom/Element;
    .restart local v13    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v14    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_1
    :try_start_3
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v7

    .end local v7    # "packageElem":Lorg/w3c/dom/Element;
    check-cast v7, Lorg/w3c/dom/Element;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .restart local v7    # "packageElem":Lorg/w3c/dom/Element;
    goto :goto_1

    .line 922
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 934
    .end local v2    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "i":I
    .end local v7    # "packageElem":Lorg/w3c/dom/Element;
    .end local v8    # "policyElement":Lorg/w3c/dom/Element;
    .end local v9    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v10    # "removeElem":Lorg/w3c/dom/Element;
    .end local v13    # "signer":Lorg/w3c/dom/NodeList;
    .end local v14    # "signerElementCur":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v5

    .line 935
    .local v5, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 888
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v15, 0x0

    monitor-exit v16

    .line 938
    return-object v15

    .end local v4    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catchall_0
    move-exception v15

    monitor-exit v16

    throw v15
.end method

.method public static getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 756
    const/4 v6, 0x0

    .line 757
    .local v6, "userId":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 759
    if-nez p0, :cond_0

    .line 761
    sget-object v7, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMSContainer"

    const-string/jumbo v9, "getSignatureFromPackage: packageName is null"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    return-object v11

    .line 765
    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 766
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    const/4 v2, 0x0

    .line 768
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    const/16 v7, 0x40

    :try_start_0
    invoke-interface {v3, p0, v7, v6}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 769
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_2

    .line 770
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 771
    .local v4, "s":[Landroid/content/pm/Signature;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 772
    .local v5, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v4

    if-ge v1, v7, :cond_1

    .line 773
    aget-object v7, v4, v1

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 775
    :cond_1
    return-object v5

    .line 777
    .end local v1    # "i":I
    .end local v4    # "s":[Landroid/content/pm/Signature;
    .end local v5    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    sget-object v7, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMSContainer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getSignatureFromPackage("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ") null is returned, check bbcuser."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    invoke-static {}, Lcom/android/server/SEAMSContainer;->getBbcEnabled()I

    move-result v6

    .line 779
    const/16 v7, 0x40

    invoke-interface {v3, p0, v7, v6}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 780
    if-eqz v2, :cond_4

    .line 781
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 782
    .restart local v4    # "s":[Landroid/content/pm/Signature;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 783
    .restart local v5    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v7, v4

    if-ge v1, v7, :cond_3

    .line 784
    aget-object v7, v4, v1

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 786
    :cond_3
    return-object v5

    .line 788
    .end local v1    # "i":I
    .end local v4    # "s":[Landroid/content/pm/Signature;
    .end local v5    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    sget-object v7, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMSContainer"

    const-string/jumbo v9, "getSignatureFromPackage: null is returned"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    return-object v11

    .line 792
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 793
    .local v0, "e1":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 794
    return-object v11
.end method

.method public static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 115
    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    move-object v1, p0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    return-object v1
.end method

.method protected static declared-synchronized isContainerEmpty(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 25
    .param p0, "macPermFile"    # Ljava/io/File;
    .param p1, "agentPackageName"    # Ljava/lang/String;
    .param p2, "agentSignature"    # Ljava/lang/String;
    .param p3, "propertyValue"    # I

    .prologue
    const-class v21, Lcom/android/server/SEAMSContainer;

    monitor-enter v21

    .line 1111
    const/16 v16, 0x0

    .line 1112
    .local v16, "seinfoElem":Lorg/w3c/dom/Element;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 1114
    .local v7, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_1
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    .line 1115
    .local v5, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v6, 0x0

    .line 1116
    .local v6, "doc":Lorg/w3c/dom/Document;
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1120
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v6

    .line 1127
    .local v6, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Element;->normalize()V

    .line 1128
    const-string/jumbo v20, "policy"

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 1129
    .local v14, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/4 v13, 0x0

    .line 1130
    .local v13, "policyElement":Lorg/w3c/dom/Element;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v14, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    .end local v13    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v13, Lorg/w3c/dom/Element;

    .line 1131
    .local v13, "policyElement":Lorg/w3c/dom/Element;
    const-string/jumbo v20, "signer"

    move-object/from16 v0, v20

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    .line 1132
    .local v18, "signer":Lorg/w3c/dom/NodeList;
    const/16 v19, 0x0

    .line 1133
    .local v19, "signerElementCur":Lorg/w3c/dom/Element;
    const/4 v15, 0x0

    .line 1140
    .local v15, "removeElem":Lorg/w3c/dom/Element;
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 1141
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    .end local v19    # "signerElementCur":Lorg/w3c/dom/Element;
    check-cast v19, Lorg/w3c/dom/Element;

    .line 1142
    .local v19, "signerElementCur":Lorg/w3c/dom/Element;
    const-string/jumbo v20, "signature"

    invoke-interface/range {v19 .. v20}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 1143
    const-string/jumbo v20, "service"

    invoke-interface/range {v19 .. v20}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 1146
    .local v17, "servicePackageList":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    const/16 v22, 0x2

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    const/16 v20, 0x1

    move/from16 v0, p3

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 1147
    :cond_0
    sget-object v20, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v22, "SEAMSContainer"

    const-string/jumbo v23, "service entry different than expected"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1148
    const/16 v20, 0x0

    monitor-exit v21

    return v20

    .line 1123
    .end local v13    # "policyElement":Lorg/w3c/dom/Element;
    .end local v14    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v15    # "removeElem":Lorg/w3c/dom/Element;
    .end local v17    # "servicePackageList":Lorg/w3c/dom/NodeList;
    .end local v18    # "signer":Lorg/w3c/dom/NodeList;
    .end local v19    # "signerElementCur":Lorg/w3c/dom/Element;
    .local v6, "doc":Lorg/w3c/dom/Document;
    :cond_1
    :try_start_2
    sget-object v20, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v22, "SEAMSContainer"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "isContainerEmpty, "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " does not exist, return failed "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1125
    const/16 v20, -0x1

    monitor-exit v21

    return v20

    .line 1150
    .local v6, "doc":Lorg/w3c/dom/Document;
    .restart local v13    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v14    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v15    # "removeElem":Lorg/w3c/dom/Element;
    .restart local v17    # "servicePackageList":Lorg/w3c/dom/NodeList;
    .restart local v18    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v19    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_2
    const/4 v4, 0x0

    .line 1151
    .local v4, "currElem":Lorg/w3c/dom/Element;
    const/4 v3, 0x0

    .line 1152
    .local v3, "cnt":I
    const/4 v12, 0x0

    .end local v4    # "currElem":Lorg/w3c/dom/Element;
    .local v12, "i":I
    :goto_0
    :try_start_3
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    move/from16 v0, v20

    if-ge v12, v0, :cond_4

    .line 1153
    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 1157
    .local v4, "currElem":Lorg/w3c/dom/Element;
    const-string/jumbo v20, "name"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v20

    if-eqz v20, :cond_3

    .line 1161
    add-int/lit8 v3, v3, 0x1

    .line 1152
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1164
    .end local v4    # "currElem":Lorg/w3c/dom/Element;
    :cond_4
    const/16 v20, 0x2

    move/from16 v0, v20

    if-eq v3, v0, :cond_5

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_8

    const/16 v20, 0x1

    move/from16 v0, p3

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 1165
    :cond_5
    const/16 v20, 0x1

    monitor-exit v21

    return v20

    .line 1167
    .end local v3    # "cnt":I
    .end local v12    # "i":I
    .end local v17    # "servicePackageList":Lorg/w3c/dom/NodeList;
    :cond_6
    :try_start_4
    sget-object v20, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v22, "SEAMSContainer"

    const-string/jumbo v23, "Container has signature mis-match with agent"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1168
    const/16 v20, -0x1

    monitor-exit v21

    return v20

    .line 1171
    .local v19, "signerElementCur":Lorg/w3c/dom/Element;
    :cond_7
    :try_start_5
    sget-object v20, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v22, "SEAMSContainer"

    const-string/jumbo v23, "Container non-empty"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1172
    const/16 v20, 0x0

    monitor-exit v21

    return v20

    .line 1180
    .end local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v13    # "policyElement":Lorg/w3c/dom/Element;
    .end local v14    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v15    # "removeElem":Lorg/w3c/dom/Element;
    .end local v18    # "signer":Lorg/w3c/dom/NodeList;
    .end local v19    # "signerElementCur":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v8

    .line 1181
    .local v8, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 1183
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_1
    sget-object v20, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v22, "SEAMSContainer"

    const-string/jumbo v23, "isContainerEmpty, POLICY_FAILED is returned"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1184
    const/16 v20, -0x1

    monitor-exit v21

    return v20

    .line 1178
    :catch_1
    move-exception v9

    .line 1179
    .local v9, "e1":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .end local v7    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v9    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v20

    monitor-exit v21

    throw v20

    .line 1176
    .restart local v7    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_2
    move-exception v10

    .line 1177
    .local v10, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_8
    invoke-virtual {v10}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_1

    .line 1174
    .end local v10    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_3
    move-exception v11

    .line 1175
    .local v11, "e1":Lorg/xml/sax/SAXException;
    invoke-virtual {v11}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1
.end method

.method private static removeCategory(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "existContainerAllowCat"    # Ljava/lang/String;
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 1347
    const/4 v2, 0x0

    .line 1348
    .local v2, "returnCat":Ljava/lang/String;
    const-string/jumbo v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1349
    .local v3, "srcCategories":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1350
    .local v1, "matchFound":Z
    const/4 v4, 0x0

    array-length v5, v3

    .end local v2    # "returnCat":Ljava/lang/String;
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v3, v4

    .line 1351
    .local v0, "item":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1352
    const/4 v1, 0x1

    .line 1350
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1354
    :cond_0
    if-nez v2, :cond_1

    .line 1355
    move-object v2, v0

    .local v2, "returnCat":Ljava/lang/String;
    goto :goto_1

    .line 1357
    .end local v2    # "returnCat":Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "returnCat":Ljava/lang/String;
    goto :goto_1

    .line 1361
    .end local v0    # "item":Ljava/lang/String;
    .end local v2    # "returnCat":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    .line 1365
    return-object v2

    .line 1367
    :cond_3
    sget-object v4, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v5, "SEAMSContainer"

    const-string/jumbo v6, "removeCategory, null is returned"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    return-object v8
.end method

.method protected static declared-synchronized removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 33
    .param p0, "macPermFile"    # Ljava/io/File;
    .param p1, "signature"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "cat"    # Ljava/lang/String;
    .param p4, "appType"    # I

    .prologue
    const-class v29, Lcom/android/server/SEAMSContainer;

    monitor-enter v29

    .line 955
    const/4 v15, 0x0

    .line 956
    .local v15, "isRemoveSuccess":Z
    const/16 v21, 0x0

    .line 959
    .local v21, "seinfoElem":Lorg/w3c/dom/Element;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 961
    .local v7, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_1
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 962
    .local v5, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v6, 0x0

    .line 963
    .local v6, "doc":Lorg/w3c/dom/Document;
    const/4 v4, 0x0

    .line 965
    .local v4, "conType":I
    :try_start_2
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    invoke-static/range {v28 .. v28}, Lcom/android/server/SEAMSContainer;->getContainerType(I)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    .line 970
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v28

    if-eqz v28, :cond_7

    .line 974
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v28

    if-nez v28, :cond_0

    .line 975
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 976
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v6

    .line 983
    .local v6, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Element;->normalize()V

    .line 984
    const-string/jumbo v28, "policy"

    move-object/from16 v0, v28

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    .line 985
    .local v18, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/16 v17, 0x0

    .line 986
    .local v17, "policyElement":Lorg/w3c/dom/Element;
    const/16 v28, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    .end local v17    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v17, Lorg/w3c/dom/Element;

    .line 987
    .local v17, "policyElement":Lorg/w3c/dom/Element;
    const-string/jumbo v28, "signer"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v23

    .line 988
    .local v23, "signer":Lorg/w3c/dom/NodeList;
    const/16 v24, 0x0

    .line 989
    .local v24, "signerElementCur":Lorg/w3c/dom/Element;
    const/16 v19, 0x0

    .line 996
    .local v19, "removeElem":Lorg/w3c/dom/Element;
    const/4 v14, 0x0

    .end local v19    # "removeElem":Lorg/w3c/dom/Element;
    .end local v24    # "signerElementCur":Lorg/w3c/dom/Element;
    .local v14, "i":I
    :goto_0
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v28

    move/from16 v0, v28

    if-ge v14, v0, :cond_4

    .line 997
    move-object/from16 v0, v23

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    check-cast v24, Lorg/w3c/dom/Element;

    .line 998
    .local v24, "signerElementCur":Lorg/w3c/dom/Element;
    const-string/jumbo v28, "signature"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_13

    .line 1002
    const/16 v28, 0x2

    move/from16 v0, v28

    if-ne v4, v0, :cond_8

    const/16 v28, 0x3

    move/from16 v0, p4

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    if-nez p4, :cond_8

    .line 1004
    :cond_1
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/SEAMSContainer;->checkContainerIDEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v19

    .line 1012
    .local v19, "removeElem":Lorg/w3c/dom/Element;
    :goto_1
    if-eqz v19, :cond_d

    .line 1013
    const/16 v28, 0x1

    move/from16 v0, p4

    move/from16 v1, v28

    if-eq v0, v1, :cond_2

    .line 1014
    const/16 v28, 0x3

    move/from16 v0, p4

    move/from16 v1, v28

    if-ne v0, v1, :cond_c

    .line 1018
    :cond_2
    const-string/jumbo v28, "category"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_3

    const-string/jumbo v28, "bbccategory"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_f

    .line 1022
    :cond_3
    move-object/from16 v0, v23

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1023
    const/4 v15, 0x1

    .line 1069
    .end local v19    # "removeElem":Lorg/w3c/dom/Element;
    .end local v24    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_4
    :goto_2
    if-eqz v15, :cond_14

    .line 1070
    const-string/jumbo v28, "service"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v22

    .line 1071
    .local v22, "servicePackageList":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v28

    if-nez v28, :cond_5

    .line 1072
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1077
    :cond_5
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Element;->normalize()V

    .line 1078
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v27

    .line 1079
    .local v27, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v27 .. v27}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v26

    .line 1080
    .local v26, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v25, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v25

    invoke-direct {v0, v6}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 1081
    .local v25, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v20, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 1082
    .local v20, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 1089
    .end local v20    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v22    # "servicePackageList":Lorg/w3c/dom/NodeList;
    .end local v25    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v26    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v27    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :goto_3
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v28

    if-eqz v28, :cond_6

    .line 1090
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v4    # "conType":I
    .end local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v14    # "i":I
    .end local v17    # "policyElement":Lorg/w3c/dom/Element;
    .end local v18    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v23    # "signer":Lorg/w3c/dom/NodeList;
    :cond_6
    :goto_4
    monitor-exit v29

    .line 1102
    return v15

    .line 966
    .restart local v4    # "conType":I
    .restart local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .local v6, "doc":Lorg/w3c/dom/Document;
    :catch_0
    move-exception v9

    .line 967
    .local v9, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    sget-object v28, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v30, "SEAMSContainer"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "category: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " integer parse failed"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 968
    const/16 v28, 0x0

    monitor-exit v29

    return v28

    .line 979
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    :try_start_5
    sget-object v28, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v30, "SEAMSContainer"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "removeEntryFromMac, "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " does not exist, creating file"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 981
    const/16 v28, 0x0

    monitor-exit v29

    return v28

    .line 1003
    .local v6, "doc":Lorg/w3c/dom/Document;
    .restart local v14    # "i":I
    .restart local v17    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v18    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v23    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v24    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_8
    const/16 v28, 0x3

    move/from16 v0, v28

    if-ne v4, v0, :cond_9

    const/16 v28, 0x5

    move/from16 v0, p4

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    const/16 v28, 0x6

    move/from16 v0, p4

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    .line 1006
    :cond_9
    if-eqz p4, :cond_a

    const/16 v28, 0x6

    move/from16 v0, p4

    move/from16 v1, v28

    if-ne v0, v1, :cond_b

    .line 1007
    :cond_a
    :try_start_6
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/SEAMSContainer;->checkContainerIDEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v19

    .restart local v19    # "removeElem":Lorg/w3c/dom/Element;
    goto/16 :goto_1

    .line 1009
    .end local v19    # "removeElem":Lorg/w3c/dom/Element;
    :cond_b
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/server/SEAMSContainer;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v19

    .restart local v19    # "removeElem":Lorg/w3c/dom/Element;
    goto/16 :goto_1

    .line 1015
    :cond_c
    const/16 v28, 0x5

    move/from16 v0, p4

    move/from16 v1, v28

    if-eq v0, v1, :cond_2

    .line 1016
    if-eqz p4, :cond_2

    .line 1017
    const/16 v28, 0x6

    move/from16 v0, p4

    move/from16 v1, v28

    if-eq v0, v1, :cond_2

    .line 1031
    :cond_d
    if-eqz v19, :cond_12

    const/16 v28, 0x4

    move/from16 v0, p4

    move/from16 v1, v28

    if-eq v0, v1, :cond_e

    const/16 v28, 0x2

    move/from16 v0, p4

    move/from16 v1, v28

    if-ne v0, v1, :cond_12

    .line 1032
    :cond_e
    const/16 v28, 0x2

    move/from16 v0, v28

    if-ne v4, v0, :cond_11

    const/16 v28, 0x4

    move/from16 v0, p4

    move/from16 v1, v28

    if-ne v0, v1, :cond_11

    .line 1033
    const-string/jumbo v28, "containerallowcategory"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_10

    .line 1037
    move-object/from16 v0, v23

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1038
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 1027
    :cond_f
    sget-object v28, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v30, "SEAMSContainer"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "removeEntryFromMac, no match found for"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1029
    const/16 v28, 0x0

    monitor-exit v29

    return v28

    .line 1044
    :cond_10
    :try_start_7
    const-string/jumbo v28, "containerallowcategory"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/server/SEAMSContainer;->removeCategory(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1045
    .local v16, "newVal":Ljava/lang/String;
    if-eqz v16, :cond_13

    .line 1046
    const-string/jumbo v28, "containerallowcategory"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    const/4 v15, 0x1

    .line 1048
    goto/16 :goto_2

    .line 1051
    .end local v16    # "newVal":Ljava/lang/String;
    :cond_11
    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v4, v0, :cond_13

    .line 1055
    move-object/from16 v0, v23

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1056
    const/4 v15, 0x1

    .line 1057
    goto/16 :goto_2

    .line 1061
    :cond_12
    sget-object v28, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v30, "SEAMSContainer"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Signature matches but no entry for "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljavax/xml/transform/TransformerException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1063
    const/16 v28, 0x0

    monitor-exit v29

    return v28

    .line 996
    .end local v19    # "removeElem":Lorg/w3c/dom/Element;
    :cond_13
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 1087
    .end local v24    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_14
    :try_start_8
    sget-object v28, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v30, "SEAMSContainer"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, " removeEntryFromMac, No match for packageName:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, ". Please check again"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_3

    .line 1091
    .end local v4    # "conType":I
    .end local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v14    # "i":I
    .end local v17    # "policyElement":Lorg/w3c/dom/Element;
    .end local v18    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v23    # "signer":Lorg/w3c/dom/NodeList;
    :catch_1
    move-exception v13

    .line 1092
    .local v13, "e1":Lorg/xml/sax/SAXException;
    :try_start_9
    invoke-virtual {v13}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_4

    .end local v7    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v13    # "e1":Lorg/xml/sax/SAXException;
    :catchall_0
    move-exception v28

    monitor-exit v29

    throw v28

    .line 1099
    .restart local v7    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_2
    move-exception v8

    .line 1100
    .local v8, "e":Ljava/lang/Exception;
    :try_start_a
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 1097
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v10

    .line 1098
    .local v10, "e1":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 1095
    .end local v10    # "e1":Ljava/io/IOException;
    :catch_4
    move-exception v12

    .line 1096
    .local v12, "e1":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v12}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto/16 :goto_4

    .line 1093
    .end local v12    # "e1":Ljavax/xml/transform/TransformerException;
    :catch_5
    move-exception v11

    .line 1094
    .local v11, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v11}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_4
.end method

.method protected static declared-synchronized updateEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)I
    .locals 42
    .param p0, "macPermFile"    # Ljava/io/File;
    .param p1, "signature"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "seinfo"    # Ljava/lang/String;
    .param p4, "cat"    # Ljava/lang/String;
    .param p5, "allowCategory"    # Ljava/lang/String;
    .param p6, "appType"    # I
    .param p7, "agent"    # Z
    .param p8, "removeFlag"    # Z

    .prologue
    const-class v36, Lcom/android/server/SEAMSContainer;

    monitor-enter v36

    .line 495
    const/4 v15, 0x0

    .line 496
    .local v15, "isAddedMac":Z
    const/16 v16, 0x0

    .line 497
    .local v16, "macPermExists":Z
    const/16 v34, 0x0

    .line 498
    .local v34, "userID":I
    :try_start_0
    invoke-static {}, Lcom/android/server/SEAMSContainer;->getBbcEnabled()I

    move-result v34

    .line 501
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 503
    .local v6, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v5, 0x0

    .line 505
    .local v5, "doc":Lorg/w3c/dom/Document;
    :try_start_1
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    .line 506
    .local v4, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v35

    if-eqz v35, :cond_3

    .line 510
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v35

    if-nez v35, :cond_0

    .line 511
    const/16 v35, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 512
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v5

    .line 513
    .local v5, "doc":Lorg/w3c/dom/Document;
    const/16 v16, 0x1

    .line 525
    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Element;->normalize()V

    .line 526
    const-string/jumbo v35, "policy"

    move-object/from16 v0, v35

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v20

    .line 527
    .local v20, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/16 v19, 0x0

    .line 528
    .local v19, "policyElement":Lorg/w3c/dom/Element;
    const/16 v35, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    .end local v19    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v19, Lorg/w3c/dom/Element;

    .line 529
    .local v19, "policyElement":Lorg/w3c/dom/Element;
    const-string/jumbo v35, "signer"

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v25

    .line 530
    .local v25, "signer":Lorg/w3c/dom/NodeList;
    const/16 v27, 0x0

    .line 531
    .local v27, "signerElementCur":Lorg/w3c/dom/Element;
    const/16 v26, 0x0

    .line 532
    .local v26, "signerElement":Lorg/w3c/dom/Element;
    const/4 v3, 0x0

    .line 533
    .local v3, "allowallElement":Lorg/w3c/dom/Element;
    const/16 v17, 0x0

    .line 534
    .local v17, "newElement":Lorg/w3c/dom/Element;
    const/16 v24, 0x0

    .line 536
    .local v24, "seinfoElement":Lorg/w3c/dom/Element;
    const/16 v29, 0x0

    .line 537
    .local v29, "specialTag":Ljava/lang/String;
    const/16 v35, 0x5

    move/from16 v0, p6

    move/from16 v1, v35

    if-ne v0, v1, :cond_6

    .line 538
    const-string/jumbo v29, "service"

    .line 539
    .local v29, "specialTag":Ljava/lang/String;
    move-object/from16 v0, v29

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v17

    .line 540
    .local v17, "newElement":Lorg/w3c/dom/Element;
    const-string/jumbo v35, "name"

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string/jumbo v35, "bbcseinfo"

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string/jumbo v35, "bbccategory"

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move-object/from16 v2, p4

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string/jumbo v35, "0"

    move-object/from16 v0, p5

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_5

    .line 544
    const-string/jumbo v35, "bbcallowcategory"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "0,"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, ",502-700"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    :goto_1
    const-string/jumbo v35, "sdcarduserid"

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    if-eqz p7, :cond_1

    .line 550
    const-string/jumbo v35, "agent"

    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    :cond_1
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->findMacPermEntry(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v23

    .line 560
    .local v23, "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    const-string/jumbo v35, "signer"

    move-object/from16 v0, v35

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v26

    .line 561
    .local v26, "signerElement":Lorg/w3c/dom/Element;
    const-string/jumbo v35, "seinfo"

    move-object/from16 v0, v35

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v24

    .line 562
    .local v24, "seinfoElement":Lorg/w3c/dom/Element;
    const-string/jumbo v35, "allow-all"

    move-object/from16 v0, v35

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 564
    .local v3, "allowallElement":Lorg/w3c/dom/Element;
    const-string/jumbo v35, "signature"

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string/jumbo v35, "value"

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const-string/jumbo v35, "category"

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string/jumbo v35, "allowcategory"

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const-string/jumbo v35, "bbccategory"

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const-string/jumbo v35, "bbcallowcategory"

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->bbcallowCategory:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const/4 v14, 0x0

    .end local v27    # "signerElementCur":Lorg/w3c/dom/Element;
    .local v14, "i":I
    :goto_2
    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v35

    move/from16 v0, v35

    if-ge v14, v0, :cond_a

    .line 575
    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v27

    check-cast v27, Lorg/w3c/dom/Element;

    .line 576
    .local v27, "signerElementCur":Lorg/w3c/dom/Element;
    const-string/jumbo v35, "signature"

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_e

    .line 577
    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/server/SEAMSContainer;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v12

    .line 578
    .local v12, "existElem":Lorg/w3c/dom/Element;
    if-eqz v12, :cond_d

    .line 580
    const-string/jumbo v18, ""

    .line 581
    .local v18, "newValue":Ljava/lang/String;
    const/16 v31, 0x0

    .line 582
    .local v31, "tmpValue":[Ljava/lang/String;
    const-string/jumbo v35, "bbcallowcategory"

    move-object/from16 v0, v35

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 583
    .local v13, "existValue":Ljava/lang/String;
    if-eqz p8, :cond_8

    .line 584
    sget-object v35, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v37, "SEAMSContainer"

    const-string/jumbo v38, "updateEntryToMac, removeFlag is true"

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string/jumbo v35, "[,]"

    move-object/from16 v0, v35

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 586
    .local v31, "tmpValue":[Ljava/lang/String;
    const/16 v35, 0x0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v37, v0

    :goto_3
    move/from16 v0, v35

    move/from16 v1, v37

    if-ge v0, v1, :cond_9

    aget-object v30, v31, v35

    .line 587
    .local v30, "tmpAllowCategory":Ljava/lang/String;
    sget-object v38, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v39, "SEAMSContainer"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "updateEntryToMac, removeFlag is true tmpAllowCategory = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, ",allowCategory = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string/jumbo v38, "0"

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_2

    move-object/from16 v0, v30

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 589
    :cond_2
    sget-object v38, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v39, "SEAMSContainer"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "updateEntryToMac, removeFlag is true skip tmpAllowCategory = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, ",allowCategory = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    :goto_4
    add-int/lit8 v35, v35, 0x1

    goto :goto_3

    .line 518
    .end local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v12    # "existElem":Lorg/w3c/dom/Element;
    .end local v13    # "existValue":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v17    # "newElement":Lorg/w3c/dom/Element;
    .end local v18    # "newValue":Ljava/lang/String;
    .end local v19    # "policyElement":Lorg/w3c/dom/Element;
    .end local v20    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v23    # "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    .end local v24    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v25    # "signer":Lorg/w3c/dom/NodeList;
    .end local v26    # "signerElement":Lorg/w3c/dom/Element;
    .end local v27    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v29    # "specialTag":Ljava/lang/String;
    .end local v30    # "tmpAllowCategory":Ljava/lang/String;
    .end local v31    # "tmpValue":[Ljava/lang/String;
    .local v5, "doc":Lorg/w3c/dom/Document;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->createNewFile()Z

    .line 519
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v35

    if-nez v35, :cond_4

    .line 520
    const/16 v35, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 521
    :cond_4
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v5

    .line 522
    .local v5, "doc":Lorg/w3c/dom/Document;
    const-string/jumbo v35, "policy"

    move-object/from16 v0, v35

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v22

    .line 523
    .local v22, "rootElement":Lorg/w3c/dom/Element;
    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 635
    .end local v4    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v5    # "doc":Lorg/w3c/dom/Document;
    .end local v22    # "rootElement":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v11

    .line 636
    .local v11, "e1":Lorg/xml/sax/SAXException;
    :try_start_2
    invoke-virtual {v11}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 646
    .end local v11    # "e1":Lorg/xml/sax/SAXException;
    :goto_5
    sget-object v35, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v37, "SEAMSContainer"

    const-string/jumbo v38, "updateEntryToMac, POLICY_FAILED is returned"

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 647
    const/16 v35, -0x1

    monitor-exit v36

    return v35

    .line 546
    .local v3, "allowallElement":Lorg/w3c/dom/Element;
    .restart local v4    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v5    # "doc":Lorg/w3c/dom/Document;
    .restart local v17    # "newElement":Lorg/w3c/dom/Element;
    .restart local v19    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v20    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .local v24, "seinfoElement":Lorg/w3c/dom/Element;
    .restart local v25    # "signer":Lorg/w3c/dom/NodeList;
    .local v26, "signerElement":Lorg/w3c/dom/Element;
    .local v27, "signerElementCur":Lorg/w3c/dom/Element;
    .restart local v29    # "specialTag":Ljava/lang/String;
    :cond_5
    :try_start_3
    const-string/jumbo v35, "bbcallowcategory"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "0,"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, ","

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 637
    .end local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v4    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v5    # "doc":Lorg/w3c/dom/Document;
    .end local v17    # "newElement":Lorg/w3c/dom/Element;
    .end local v19    # "policyElement":Lorg/w3c/dom/Element;
    .end local v20    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v24    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v25    # "signer":Lorg/w3c/dom/NodeList;
    .end local v26    # "signerElement":Lorg/w3c/dom/Element;
    .end local v27    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v29    # "specialTag":Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 638
    .local v9, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_4
    invoke-virtual {v9}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    .end local v6    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v9    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :catchall_0
    move-exception v35

    monitor-exit v36

    throw v35

    .line 552
    .restart local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .restart local v4    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v5    # "doc":Lorg/w3c/dom/Document;
    .restart local v6    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .local v17, "newElement":Lorg/w3c/dom/Element;
    .restart local v19    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v20    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v24    # "seinfoElement":Lorg/w3c/dom/Element;
    .restart local v25    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v26    # "signerElement":Lorg/w3c/dom/Element;
    .restart local v27    # "signerElementCur":Lorg/w3c/dom/Element;
    .local v29, "specialTag":Ljava/lang/String;
    :cond_6
    :try_start_5
    sget-object v35, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v37, "SEAMSContainer"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "updateEntryToMac is not supported for apptype:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 553
    const/16 v35, -0x1

    monitor-exit v36

    return v35

    .line 593
    .local v3, "allowallElement":Lorg/w3c/dom/Element;
    .restart local v12    # "existElem":Lorg/w3c/dom/Element;
    .restart local v13    # "existValue":Ljava/lang/String;
    .restart local v14    # "i":I
    .local v17, "newElement":Lorg/w3c/dom/Element;
    .restart local v18    # "newValue":Ljava/lang/String;
    .restart local v23    # "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    .local v24, "seinfoElement":Lorg/w3c/dom/Element;
    .local v26, "signerElement":Lorg/w3c/dom/Element;
    .local v27, "signerElementCur":Lorg/w3c/dom/Element;
    .local v29, "specialTag":Ljava/lang/String;
    .restart local v30    # "tmpAllowCategory":Ljava/lang/String;
    .restart local v31    # "tmpValue":[Ljava/lang/String;
    :cond_7
    :try_start_6
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, ","

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 594
    sget-object v38, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v39, "SEAMSContainer"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "updateEntryToMac, removeFlag is true newValue = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_4

    .line 639
    .end local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v4    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v5    # "doc":Lorg/w3c/dom/Document;
    .end local v12    # "existElem":Lorg/w3c/dom/Element;
    .end local v13    # "existValue":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v17    # "newElement":Lorg/w3c/dom/Element;
    .end local v18    # "newValue":Ljava/lang/String;
    .end local v19    # "policyElement":Lorg/w3c/dom/Element;
    .end local v20    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v23    # "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    .end local v24    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v25    # "signer":Lorg/w3c/dom/NodeList;
    .end local v26    # "signerElement":Lorg/w3c/dom/Element;
    .end local v27    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v29    # "specialTag":Ljava/lang/String;
    .end local v30    # "tmpAllowCategory":Ljava/lang/String;
    .end local v31    # "tmpValue":[Ljava/lang/String;
    :catch_2
    move-exception v10

    .line 640
    .local v10, "e1":Ljavax/xml/transform/TransformerException;
    :try_start_7
    invoke-virtual {v10}, Ljavax/xml/transform/TransformerException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_5

    .line 598
    .end local v10    # "e1":Ljavax/xml/transform/TransformerException;
    .restart local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .restart local v4    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v5    # "doc":Lorg/w3c/dom/Document;
    .restart local v12    # "existElem":Lorg/w3c/dom/Element;
    .restart local v13    # "existValue":Ljava/lang/String;
    .restart local v14    # "i":I
    .restart local v17    # "newElement":Lorg/w3c/dom/Element;
    .restart local v18    # "newValue":Ljava/lang/String;
    .restart local v19    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v20    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v23    # "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v24    # "seinfoElement":Lorg/w3c/dom/Element;
    .restart local v25    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v26    # "signerElement":Lorg/w3c/dom/Element;
    .restart local v27    # "signerElementCur":Lorg/w3c/dom/Element;
    .restart local v29    # "specialTag":Ljava/lang/String;
    .local v31, "tmpValue":[Ljava/lang/String;
    :cond_8
    :try_start_8
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v37, ","

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 599
    sget-object v35, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v37, "SEAMSContainer"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "updateEntryToMac, removeFlag is false newValue = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    .end local v31    # "tmpValue":[Ljava/lang/String;
    :cond_9
    const-string/jumbo v35, "bbcallowcategory"

    move-object/from16 v0, v35

    move-object/from16 v1, v18

    invoke-interface {v12, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const/4 v15, 0x1

    .line 615
    .end local v12    # "existElem":Lorg/w3c/dom/Element;
    .end local v13    # "existValue":Ljava/lang/String;
    .end local v18    # "newValue":Ljava/lang/String;
    .end local v27    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_a
    :goto_6
    if-nez v15, :cond_b

    .line 616
    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 617
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 618
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 619
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 621
    :cond_b
    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Element;->normalize()V

    .line 622
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v33

    .line 623
    .local v33, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v33 .. v33}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v32

    .line 624
    .local v32, "transformer":Ljavax/xml/transform/Transformer;
    const/16 v28, 0x0

    .line 625
    .local v28, "source":Ljavax/xml/transform/dom/DOMSource;
    if-eqz v16, :cond_f

    .line 626
    new-instance v28, Ljavax/xml/transform/dom/DOMSource;

    .end local v28    # "source":Ljavax/xml/transform/dom/DOMSource;
    move-object/from16 v0, v28

    invoke-direct {v0, v5}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 630
    .local v28, "source":Ljavax/xml/transform/dom/DOMSource;
    :goto_7
    new-instance v21, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 631
    .local v21, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v32

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 632
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v35

    if-eqz v35, :cond_c

    .line 633
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z
    :try_end_8
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 634
    :cond_c
    const/16 v35, 0x0

    monitor-exit v36

    return v35

    .line 606
    .end local v21    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v28    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v32    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v33    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    .restart local v12    # "existElem":Lorg/w3c/dom/Element;
    .restart local v27    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_d
    :try_start_9
    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 610
    const/4 v15, 0x1

    .line 611
    goto :goto_6

    .line 574
    .end local v12    # "existElem":Lorg/w3c/dom/Element;
    :cond_e
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 628
    .end local v27    # "signerElementCur":Lorg/w3c/dom/Element;
    .local v28, "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v32    # "transformer":Ljavax/xml/transform/Transformer;
    .restart local v33    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :cond_f
    new-instance v28, Ljavax/xml/transform/dom/DOMSource;

    .end local v28    # "source":Ljavax/xml/transform/dom/DOMSource;
    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_9
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .local v28, "source":Ljavax/xml/transform/dom/DOMSource;
    goto :goto_7

    .line 643
    .end local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v4    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v5    # "doc":Lorg/w3c/dom/Document;
    .end local v14    # "i":I
    .end local v17    # "newElement":Lorg/w3c/dom/Element;
    .end local v19    # "policyElement":Lorg/w3c/dom/Element;
    .end local v20    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v23    # "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    .end local v24    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v25    # "signer":Lorg/w3c/dom/NodeList;
    .end local v26    # "signerElement":Lorg/w3c/dom/Element;
    .end local v28    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v29    # "specialTag":Ljava/lang/String;
    .end local v32    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v33    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :catch_3
    move-exception v7

    .line 644
    .local v7, "e":Ljava/lang/Exception;
    :try_start_a
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 641
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v8

    .line 642
    .local v8, "e1":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_5
.end method


# virtual methods
.method public activateDomain(IZ)I
    .locals 1
    .param p1, "uid"    # I
    .param p2, "isBundleActivation"    # Z

    .prologue
    .line 126
    const/4 v0, -0x1

    return v0
.end method

.method public addAgentEntryAfterFotaAndReload()I
    .locals 1

    .prologue
    .line 151
    const/4 v0, -0x1

    return v0
.end method

.method public addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;
    .param p3, "containerID"    # I
    .param p4, "appType"    # I

    .prologue
    .line 131
    const/4 v0, -0x1

    return v0
.end method

.method protected declared-synchronized addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 19
    .param p1, "contextFileName"    # Ljava/lang/String;
    .param p2, "userType"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "seinfo"    # Ljava/lang/String;
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "fileType"    # Ljava/lang/String;
    .param p7, "category"    # I

    .prologue
    monitor-enter p0

    .line 654
    const/4 v9, 0x0

    .line 655
    .local v9, "br":Ljava/io/BufferedReader;
    const/16 v16, 0x0

    .line 658
    .local v16, "pw":Ljava/io/PrintWriter;
    :try_start_0
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 659
    .local v14, "inFile":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 660
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " does not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-virtual {v14}, Ljava/io/File;->createNewFile()Z

    .line 663
    invoke-virtual {v14}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_0

    .line 664
    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 667
    :cond_0
    new-instance v18, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 668
    .local v18, "tempFile":Ljava/io/File;
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    .local v10, "br":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v17, Ljava/io/PrintWriter;

    .end local v9    # "br":Ljava/io/BufferedReader;
    new-instance v1, Ljava/io/FileWriter;

    move-object/from16 v0, v18

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 671
    .local v17, "pw":Ljava/io/PrintWriter;
    const/4 v15, 0x0

    .local v15, "line":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 672
    :try_start_2
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/SEAMSContainer;->getSEAppContextLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .end local v16    # "pw":Ljava/io/PrintWriter;
    move-result-object v8

    .line 677
    .end local v15    # "line":Ljava/lang/String;
    .local v8, "addedLine":Ljava/lang/String;
    :goto_0
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .local v15, "line":Ljava/lang/String;
    if-eqz v15, :cond_3

    .line 678
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 679
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 680
    invoke-virtual/range {v17 .. v17}, Ljava/io/PrintWriter;->flush()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 706
    .end local v8    # "addedLine":Ljava/lang/String;
    .end local v15    # "line":Ljava/lang/String;
    :catch_0
    move-exception v12

    .local v12, "ex":Ljava/io/FileNotFoundException;
    move-object/from16 v16, v17

    .end local v17    # "pw":Ljava/io/PrintWriter;
    .local v16, "pw":Ljava/io/PrintWriter;
    move-object v9, v10

    .line 707
    .end local v10    # "br":Ljava/io/BufferedReader;
    .end local v14    # "inFile":Ljava/io/File;
    .end local v16    # "pw":Ljava/io/PrintWriter;
    .end local v18    # "tempFile":Ljava/io/File;
    :goto_1
    :try_start_3
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remove Seapp_context, Could not delete file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 708
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 682
    .end local v12    # "ex":Ljava/io/FileNotFoundException;
    .restart local v8    # "addedLine":Ljava/lang/String;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v14    # "inFile":Ljava/io/File;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v17    # "pw":Ljava/io/PrintWriter;
    .restart local v18    # "tempFile":Ljava/io/File;
    :cond_1
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/io/PrintWriter;->close()V

    .line 683
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 684
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_2

    .line 685
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not delete the file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 687
    :cond_2
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 691
    :cond_3
    :try_start_5
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 692
    invoke-virtual/range {v17 .. v17}, Ljava/io/PrintWriter;->flush()V

    .line 694
    invoke-virtual/range {v17 .. v17}, Ljava/io/PrintWriter;->close()V

    .line 695
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 697
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_4

    .line 698
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remove Seapp_context, Could not delete file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 699
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 701
    :cond_4
    :try_start_6
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 702
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remove Seapp_context, Could not rename file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 703
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 709
    .end local v8    # "addedLine":Ljava/lang/String;
    .end local v10    # "br":Ljava/io/BufferedReader;
    .end local v14    # "inFile":Ljava/io/File;
    .end local v15    # "line":Ljava/lang/String;
    .end local v17    # "pw":Ljava/io/PrintWriter;
    .end local v18    # "tempFile":Ljava/io/File;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .local v16, "pw":Ljava/io/PrintWriter;
    :catch_1
    move-exception v13

    .line 710
    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v16    # "pw":Ljava/io/PrintWriter;
    .local v13, "ex":Ljava/io/IOException;
    :goto_2
    :try_start_7
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remove Seapp_context, file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Other Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 713
    if-eqz v9, :cond_5

    .line 714
    :try_start_8
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 715
    const/4 v9, 0x0

    .line 717
    :cond_5
    if-eqz v16, :cond_6

    .line 718
    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 719
    const/16 v16, 0x0

    .line 724
    :cond_6
    :goto_3
    :try_start_9
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMSContainer"

    const-string/jumbo v3, "addSEAppContext, POLICY_FAILED is returned"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 725
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 721
    :catch_2
    move-exception v11

    .line 722
    .local v11, "e":Ljava/io/IOException;
    :try_start_a
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMSContainer"

    const-string/jumbo v3, "Couldn\'t close BufferedReader or PrintWriter"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    .end local v11    # "e":Ljava/io/IOException;
    .end local v13    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    :goto_4
    monitor-exit p0

    throw v1

    .line 729
    .restart local v8    # "addedLine":Ljava/lang/String;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v14    # "inFile":Ljava/io/File;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v17    # "pw":Ljava/io/PrintWriter;
    .restart local v18    # "tempFile":Ljava/io/File;
    :cond_7
    if-eqz v10, :cond_9

    .line 730
    :try_start_b
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 731
    const/4 v9, 0x0

    .line 733
    .end local v10    # "br":Ljava/io/BufferedReader;
    :goto_5
    if-eqz v17, :cond_8

    .line 734
    :try_start_c
    invoke-virtual/range {v17 .. v17}, Ljava/io/PrintWriter;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 735
    const/16 v16, 0x0

    .line 740
    .end local v17    # "pw":Ljava/io/PrintWriter;
    :goto_6
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 737
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v17    # "pw":Ljava/io/PrintWriter;
    :catch_3
    move-exception v11

    .restart local v11    # "e":Ljava/io/IOException;
    move-object v9, v10

    .line 738
    .end local v10    # "br":Ljava/io/BufferedReader;
    :goto_7
    :try_start_d
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMSContainer"

    const-string/jumbo v3, "Couldn\'t close BufferedReader or PrintWriter"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-object/from16 v16, v17

    .end local v17    # "pw":Ljava/io/PrintWriter;
    .local v16, "pw":Ljava/io/PrintWriter;
    goto :goto_6

    .end local v8    # "addedLine":Ljava/lang/String;
    .end local v11    # "e":Ljava/io/IOException;
    .end local v15    # "line":Ljava/lang/String;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .local v16, "pw":Ljava/io/PrintWriter;
    :catchall_1
    move-exception v1

    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .local v9, "br":Ljava/io/BufferedReader;
    goto :goto_4

    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v17    # "pw":Ljava/io/PrintWriter;
    :catchall_2
    move-exception v1

    move-object/from16 v16, v17

    .end local v17    # "pw":Ljava/io/PrintWriter;
    .local v16, "pw":Ljava/io/PrintWriter;
    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v8    # "addedLine":Ljava/lang/String;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v17    # "pw":Ljava/io/PrintWriter;
    :catchall_3
    move-exception v1

    move-object/from16 v16, v17

    .end local v17    # "pw":Ljava/io/PrintWriter;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    goto :goto_4

    .line 737
    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v17    # "pw":Ljava/io/PrintWriter;
    :catch_4
    move-exception v11

    .restart local v11    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 706
    .end local v8    # "addedLine":Ljava/lang/String;
    .end local v11    # "e":Ljava/io/IOException;
    .end local v14    # "inFile":Ljava/io/File;
    .end local v15    # "line":Ljava/lang/String;
    .end local v17    # "pw":Ljava/io/PrintWriter;
    .end local v18    # "tempFile":Ljava/io/File;
    .local v9, "br":Ljava/io/BufferedReader;
    .local v16, "pw":Ljava/io/PrintWriter;
    :catch_5
    move-exception v12

    .restart local v12    # "ex":Ljava/io/FileNotFoundException;
    goto/16 :goto_1

    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v12    # "ex":Ljava/io/FileNotFoundException;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v14    # "inFile":Ljava/io/File;
    .restart local v18    # "tempFile":Ljava/io/File;
    :catch_6
    move-exception v12

    .restart local v12    # "ex":Ljava/io/FileNotFoundException;
    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .local v9, "br":Ljava/io/BufferedReader;
    goto/16 :goto_1

    .line 709
    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v12    # "ex":Ljava/io/FileNotFoundException;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    :catch_7
    move-exception v13

    .restart local v13    # "ex":Ljava/io/IOException;
    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_2

    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v13    # "ex":Ljava/io/IOException;
    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v17    # "pw":Ljava/io/PrintWriter;
    :catch_8
    move-exception v13

    .restart local v13    # "ex":Ljava/io/IOException;
    move-object/from16 v16, v17

    .end local v17    # "pw":Ljava/io/PrintWriter;
    .local v16, "pw":Ljava/io/PrintWriter;
    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_2

    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v13    # "ex":Ljava/io/IOException;
    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v8    # "addedLine":Ljava/lang/String;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v17    # "pw":Ljava/io/PrintWriter;
    :cond_8
    move-object/from16 v16, v17

    .end local v17    # "pw":Ljava/io/PrintWriter;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    goto :goto_6

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v17    # "pw":Ljava/io/PrintWriter;
    :cond_9
    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    goto :goto_5
.end method

.method public changeAppDomain(Ljava/lang/String;ILjava/lang/String;Z)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appType"    # I
    .param p3, "seinfo"    # Ljava/lang/String;
    .param p4, "removeFlag"    # Z

    .prologue
    .line 1441
    const/4 v0, -0x1

    return v0
.end method

.method public createSEContainer(II)I
    .locals 1
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 143
    const/4 v0, -0x1

    return v0
.end method

.method public deActivateDomain(I)I
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 135
    const/4 v0, -0x1

    return v0
.end method

.method protected deleteSEContainerClipboardTableEntry(II)I
    .locals 12
    .param p1, "containerID"    # I
    .param p2, "mode"    # I

    .prologue
    .line 1409
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1410
    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v8, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1412
    const/4 v8, 0x2

    new-array v5, v8, [Ljava/lang/String;

    const-string/jumbo v8, "containerID"

    const/4 v9, 0x0

    aput-object v8, v5, v9

    const-string/jumbo v8, "mode"

    const/4 v9, 0x1

    aput-object v8, v5, v9

    .line 1413
    .local v5, "sColumns":[Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1414
    .local v0, "contId":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 1415
    .local v7, "status":Ljava/lang/String;
    const/4 v8, 0x2

    new-array v6, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v0, v6, v8

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 1417
    .local v6, "sValues":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 1421
    .local v4, "ret":Z
    :try_start_0
    iget-object v8, p0, Lcom/android/server/SEAMSContainer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "SeamsClipboardTable"

    const-string/jumbo v10, "mode"

    invoke-virtual {v8, v9, v10, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v1

    .line 1423
    .local v1, "cvOld":Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 1424
    :cond_0
    sget-object v8, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v9, "SEAMSContainer"

    const-string/jumbo v10, "cvOld null or size 0"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    sget-object v8, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v9, "SEAMSContainer"

    const-string/jumbo v10, "no entry in database to delete"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    const/4 v8, -0x1

    return v8

    .line 1429
    :cond_1
    sget-object v8, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v9, "SEAMSContainer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Checking if entry already exists:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    iget-object v8, p0, Lcom/android/server/SEAMSContainer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "SeamsClipboardTable"

    invoke-virtual {v8, v9, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    .line 1432
    .local v4, "ret":Z
    sget-object v8, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v9, "SEAMSContainer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateSEContainerClipboardTable: ret = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1433
    if-eqz v4, :cond_2

    const/4 v8, 0x0

    :goto_0
    return v8

    :cond_2
    const/4 v8, -0x1

    goto :goto_0

    .line 1434
    .end local v1    # "cvOld":Landroid/content/ContentValues;
    .end local v4    # "ret":Z
    :catch_0
    move-exception v3

    .line 1435
    .local v3, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v9, "SEAMSContainer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateSEContainerClipboardTable Exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    const/4 v8, -0x1

    return v8
.end method

.method public getActivationStatus()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, -0x1

    return v0
.end method

.method protected getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 1373
    const/4 v1, 0x0

    .line 1377
    .local v1, "mdmID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1378
    .local v3, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1379
    .local v2, "pid":I
    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    .end local v1    # "mdmID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 1380
    .local v1, "mdmID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    sget-object v4, Lcom/android/server/SEAMSContainer;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v3}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 1381
    iget-object v4, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 1383
    sget-object v4, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v5, "SEAMSContainer"

    const-string/jumbo v6, "MDMID package name is null"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    return-object v7

    .line 1387
    :cond_0
    iget-object v4, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/SEAMSContainer;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1388
    .local v0, "mdmCerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 1390
    :cond_1
    sget-object v4, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v5, "SEAMSContainer"

    const-string/jumbo v6, "MDMID certs are null"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    return-object v7

    .line 1394
    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    .line 1396
    return-object v1
.end method

.method public getPackageNamesFromSEContainer(II)[Ljava/lang/String;
    .locals 1
    .param p1, "containerID"    # I
    .param p2, "appType"    # I

    .prologue
    .line 170
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSEAppContextLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "userType"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "seinfo"    # Ljava/lang/String;
    .param p4, "domain"    # Ljava/lang/String;
    .param p5, "fileType"    # Ljava/lang/String;
    .param p6, "category"    # I

    .prologue
    .line 745
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSEContainerIDs()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appType"    # I

    .prologue
    .line 180
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignatureFromMac(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 188
    const/4 v0, 0x0

    return-object v0
.end method

.method public isProcessRunning(Ljava/lang/String;)Z
    .locals 7
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 1269
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1270
    .local v2, "origId":J
    sget-object v5, Lcom/android/server/SEAMSContainer;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1271
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 1272
    .local v4, "procInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1274
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 1275
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1276
    const/4 v5, 0x1

    return v5

    .line 1274
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1279
    :cond_1
    const/4 v5, 0x0

    return v5
.end method

.method public loadContainerSetting(Ljava/lang/String;IZ)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "containerID"    # I
    .param p3, "appNotInstalled"    # Z

    .prologue
    .line 195
    const/4 v0, -0x1

    .line 196
    .local v0, "ret":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    :cond_0
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMSContainer"

    const-string/jumbo v3, "loadContainerSetting, packageName is null or empty"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return v0

    .line 203
    :cond_1
    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService;

    iput-object v1, p0, Lcom/android/server/SEAMSContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 205
    iget-object v1, p0, Lcom/android/server/SEAMSContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->updateAppInfoForPackage(Ljava/lang/String;IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 209
    const/4 v0, 0x0

    .line 211
    :cond_2
    return v0
.end method

.method public removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;
    .param p3, "containerID"    # I
    .param p4, "appType"    # I

    .prologue
    .line 215
    const/4 v0, -0x1

    return v0
.end method

.method protected declared-synchronized removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 20
    .param p1, "contextFileName"    # Ljava/lang/String;
    .param p2, "userType"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "seinfo"    # Ljava/lang/String;
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "fileType"    # Ljava/lang/String;
    .param p7, "category"    # I

    .prologue
    monitor-enter p0

    .line 802
    const/4 v8, 0x0

    .line 803
    .local v8, "br":Ljava/io/BufferedReader;
    const/16 v16, 0x0

    .line 806
    .local v16, "pw":Ljava/io/PrintWriter;
    const/4 v10, 0x0

    .line 807
    .local v10, "count":I
    :try_start_0
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 809
    .local v14, "inFile":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_0

    .line 810
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "Parameter is not an existing file"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 811
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 814
    :cond_0
    :try_start_1
    new-instance v19, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 816
    .local v19, "tempFile":Ljava/io/File;
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 817
    .local v9, "br":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v17, Ljava/io/PrintWriter;

    .end local v8    # "br":Ljava/io/BufferedReader;
    new-instance v1, Ljava/io/FileWriter;

    move-object/from16 v0, v19

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 819
    .local v17, "pw":Ljava/io/PrintWriter;
    const/4 v15, 0x0

    .local v15, "line":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 820
    :try_start_3
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/SEAMSContainer;->getSEAppContextLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .end local v16    # "pw":Ljava/io/PrintWriter;
    move-result-object v18

    .line 821
    .end local v15    # "line":Ljava/lang/String;
    .local v18, "removeLine":Ljava/lang/String;
    :goto_0
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .local v15, "line":Ljava/lang/String;
    if-eqz v15, :cond_2

    .line 822
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 823
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 824
    invoke-virtual/range {v17 .. v17}, Ljava/io/PrintWriter;->flush()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    .line 847
    .end local v15    # "line":Ljava/lang/String;
    .end local v18    # "removeLine":Ljava/lang/String;
    :catch_0
    move-exception v12

    .local v12, "ex":Ljava/io/FileNotFoundException;
    move-object/from16 v16, v17

    .end local v17    # "pw":Ljava/io/PrintWriter;
    .local v16, "pw":Ljava/io/PrintWriter;
    move-object v8, v9

    .line 848
    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v14    # "inFile":Ljava/io/File;
    .end local v16    # "pw":Ljava/io/PrintWriter;
    .end local v19    # "tempFile":Ljava/io/File;
    :goto_1
    :try_start_4
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeSeapp_context, Could not delete file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 849
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 826
    .end local v12    # "ex":Ljava/io/FileNotFoundException;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .restart local v14    # "inFile":Ljava/io/File;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v17    # "pw":Ljava/io/PrintWriter;
    .restart local v18    # "removeLine":Ljava/lang/String;
    .restart local v19    # "tempFile":Ljava/io/File;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 829
    :cond_2
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/io/PrintWriter;->close()V

    .line 830
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 831
    if-nez v10, :cond_4

    .line 832
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_3

    .line 833
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeSeapp_context, Could not delete file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 869
    :cond_3
    if-eqz v9, :cond_9

    .line 870
    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 871
    const/4 v8, 0x0

    .line 873
    .end local v9    # "br":Ljava/io/BufferedReader;
    :goto_2
    if-eqz v17, :cond_8

    .line 874
    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/PrintWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 875
    const/16 v16, 0x0

    .line 880
    .end local v17    # "pw":Ljava/io/PrintWriter;
    :goto_3
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 838
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .restart local v17    # "pw":Ljava/io/PrintWriter;
    :cond_4
    :try_start_8
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_5

    .line 839
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeSeapp_context, Could not delete file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 840
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 842
    :cond_5
    :try_start_9
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 843
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeSeapp_context, Could not rename file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 844
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 850
    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v14    # "inFile":Ljava/io/File;
    .end local v15    # "line":Ljava/lang/String;
    .end local v17    # "pw":Ljava/io/PrintWriter;
    .end local v18    # "removeLine":Ljava/lang/String;
    .end local v19    # "tempFile":Ljava/io/File;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    .local v16, "pw":Ljava/io/PrintWriter;
    :catch_1
    move-exception v13

    .line 851
    .end local v8    # "br":Ljava/io/BufferedReader;
    .end local v16    # "pw":Ljava/io/PrintWriter;
    .local v13, "ex":Ljava/io/IOException;
    :goto_4
    :try_start_a
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeSeapp_context, file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Other Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 854
    if-eqz v8, :cond_6

    .line 855
    :try_start_b
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 856
    const/4 v8, 0x0

    .line 858
    :cond_6
    if-eqz v16, :cond_7

    .line 859
    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 860
    const/16 v16, 0x0

    .line 865
    :cond_7
    :goto_5
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 862
    :catch_2
    move-exception v11

    .line 863
    .local v11, "e":Ljava/io/IOException;
    :try_start_c
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMSContainer"

    const-string/jumbo v3, "Couldn\'t close BufferedReader or PrintWriter"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_5

    .end local v11    # "e":Ljava/io/IOException;
    .end local v13    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    :goto_6
    monitor-exit p0

    throw v1

    .line 877
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .restart local v14    # "inFile":Ljava/io/File;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v17    # "pw":Ljava/io/PrintWriter;
    .restart local v18    # "removeLine":Ljava/lang/String;
    .restart local v19    # "tempFile":Ljava/io/File;
    :catch_3
    move-exception v11

    .restart local v11    # "e":Ljava/io/IOException;
    move-object v8, v9

    .line 878
    .end local v9    # "br":Ljava/io/BufferedReader;
    :goto_7
    :try_start_d
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMSContainer"

    const-string/jumbo v3, "Couldn\'t close BufferedReader or PrintWriter"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-object/from16 v16, v17

    .end local v17    # "pw":Ljava/io/PrintWriter;
    .local v16, "pw":Ljava/io/PrintWriter;
    goto/16 :goto_3

    .end local v11    # "e":Ljava/io/IOException;
    .end local v15    # "line":Ljava/lang/String;
    .end local v18    # "removeLine":Ljava/lang/String;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .local v16, "pw":Ljava/io/PrintWriter;
    :catchall_1
    move-exception v1

    move-object v8, v9

    .end local v9    # "br":Ljava/io/BufferedReader;
    .local v8, "br":Ljava/io/BufferedReader;
    goto :goto_6

    .end local v8    # "br":Ljava/io/BufferedReader;
    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .restart local v17    # "pw":Ljava/io/PrintWriter;
    :catchall_2
    move-exception v1

    move-object/from16 v16, v17

    .end local v17    # "pw":Ljava/io/PrintWriter;
    .local v16, "pw":Ljava/io/PrintWriter;
    move-object v8, v9

    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    goto :goto_6

    .end local v8    # "br":Ljava/io/BufferedReader;
    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v17    # "pw":Ljava/io/PrintWriter;
    .restart local v18    # "removeLine":Ljava/lang/String;
    :catchall_3
    move-exception v1

    move-object/from16 v16, v17

    .end local v17    # "pw":Ljava/io/PrintWriter;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    goto :goto_6

    .line 877
    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v17    # "pw":Ljava/io/PrintWriter;
    :catch_4
    move-exception v11

    .restart local v11    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 847
    .end local v11    # "e":Ljava/io/IOException;
    .end local v14    # "inFile":Ljava/io/File;
    .end local v15    # "line":Ljava/lang/String;
    .end local v17    # "pw":Ljava/io/PrintWriter;
    .end local v18    # "removeLine":Ljava/lang/String;
    .end local v19    # "tempFile":Ljava/io/File;
    .local v8, "br":Ljava/io/BufferedReader;
    .local v16, "pw":Ljava/io/PrintWriter;
    :catch_5
    move-exception v12

    .restart local v12    # "ex":Ljava/io/FileNotFoundException;
    goto/16 :goto_1

    .end local v8    # "br":Ljava/io/BufferedReader;
    .end local v12    # "ex":Ljava/io/FileNotFoundException;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .restart local v14    # "inFile":Ljava/io/File;
    .restart local v19    # "tempFile":Ljava/io/File;
    :catch_6
    move-exception v12

    .restart local v12    # "ex":Ljava/io/FileNotFoundException;
    move-object v8, v9

    .end local v9    # "br":Ljava/io/BufferedReader;
    .local v8, "br":Ljava/io/BufferedReader;
    goto/16 :goto_1

    .line 850
    .end local v8    # "br":Ljava/io/BufferedReader;
    .end local v12    # "ex":Ljava/io/FileNotFoundException;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    :catch_7
    move-exception v13

    .restart local v13    # "ex":Ljava/io/IOException;
    move-object v8, v9

    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .end local v8    # "br":Ljava/io/BufferedReader;
    .end local v13    # "ex":Ljava/io/IOException;
    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .restart local v17    # "pw":Ljava/io/PrintWriter;
    :catch_8
    move-exception v13

    .restart local v13    # "ex":Ljava/io/IOException;
    move-object/from16 v16, v17

    .end local v17    # "pw":Ljava/io/PrintWriter;
    .local v16, "pw":Ljava/io/PrintWriter;
    move-object v8, v9

    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .end local v8    # "br":Ljava/io/BufferedReader;
    .end local v13    # "ex":Ljava/io/IOException;
    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v17    # "pw":Ljava/io/PrintWriter;
    .restart local v18    # "removeLine":Ljava/lang/String;
    :cond_8
    move-object/from16 v16, v17

    .end local v17    # "pw":Ljava/io/PrintWriter;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    goto/16 :goto_3

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .restart local v17    # "pw":Ljava/io/PrintWriter;
    :cond_9
    move-object v8, v9

    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_2
.end method

.method public removeSEContainer(III)I
    .locals 1
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "containerID"    # I

    .prologue
    .line 147
    const/4 v0, -0x1

    return v0
.end method

.method public restartApp(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 219
    const/4 v0, -0x1

    return v0
.end method

.method public updateAppToContainer(Ljava/lang/String;[Ljava/lang/String;IIIZ)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;
    .param p3, "containerID"    # I
    .param p4, "allowcategory"    # I
    .param p5, "appType"    # I
    .param p6, "removeFlag"    # Z

    .prologue
    .line 160
    const/4 v0, -0x1

    return v0
.end method

.method public updateSeappContextsAndReload()I
    .locals 1

    .prologue
    .line 155
    const/4 v0, -0x1

    return v0
.end method
