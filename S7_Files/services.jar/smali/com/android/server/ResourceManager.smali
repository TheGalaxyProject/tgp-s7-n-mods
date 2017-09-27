.class public Lcom/android/server/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# static fields
.field private static BT_TYPE:I = 0x0

.field private static SDCARD_TYPE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BTSdcard"

.field private static WHITELIST_MAC_PERM:Ljava/lang/String;

.field private static WHITELIST_SEANDROID_FOLDER:Ljava/lang/String;

.field private static instance:Lcom/android/server/ResourceManager;

.field private static mSKLog:Lcom/android/server/SKLogger;


# instance fields
.field private mPms:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-string/jumbo v0, "/data/security/whitelist"

    sput-object v0, Lcom/android/server/ResourceManager;->WHITELIST_SEANDROID_FOLDER:Ljava/lang/String;

    .line 83
    const-string/jumbo v0, "/data/security/whitelist/mac_permissions.xml"

    sput-object v0, Lcom/android/server/ResourceManager;->WHITELIST_MAC_PERM:Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    sput v0, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    .line 85
    const/4 v0, 0x1

    sput v0, Lcom/android/server/ResourceManager;->BT_TYPE:I

    .line 86
    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ResourceManager;->instance:Lcom/android/server/ResourceManager;

    .line 79
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static declared-synchronized addBlacklistEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;I)I
    .locals 41
    .param p0, "macPermFile"    # Ljava/io/File;
    .param p1, "signature"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p5, "resourceType"    # I

    .prologue
    const-class v39, Lcom/android/server/ResourceManager;

    monitor-enter v39

    .line 987
    :try_start_0
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 988
    .local v29, "seinfo":Ljava/lang/String;
    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 989
    .local v6, "category":Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .line 990
    .local v5, "allowcategory":Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    .line 991
    .local v3, "allowContainerCategory":Ljava/lang/String;
    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move/from16 v38, v0

    and-int/lit8 v38, v38, 0x4

    const/16 v40, 0x4

    move/from16 v0, v38

    move/from16 v1, v40

    if-ne v0, v1, :cond_a

    const/16 v38, 0x1

    :goto_0
    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v21

    .line 992
    .local v21, "issdcardsbaapp":Ljava/lang/String;
    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move/from16 v38, v0

    and-int/lit8 v38, v38, 0x8

    const/16 v40, 0x8

    move/from16 v0, v38

    move/from16 v1, v40

    if-ne v0, v1, :cond_b

    const/16 v38, 0x1

    :goto_1
    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v20

    .line 993
    .local v20, "isbluetoothsbaapp":Ljava/lang/String;
    const/16 v19, 0x0

    .line 994
    .local v19, "isAddedMac":Z
    const/16 v22, 0x0

    .line 996
    .local v22, "macPermExists":Z
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 997
    .local v9, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v8, 0x0

    .line 999
    .local v8, "doc":Lorg/w3c/dom/Document;
    :try_start_1
    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    .line 1000
    .local v7, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v38

    if-eqz v38, :cond_c

    .line 1004
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v38

    if-nez v38, :cond_0

    .line 1005
    const/16 v38, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 1007
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v8

    .line 1008
    .local v8, "doc":Lorg/w3c/dom/Document;
    const/16 v22, 0x1

    .line 1024
    :goto_2
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Element;->normalize()V

    .line 1025
    const-string/jumbo v38, "policy"

    move-object/from16 v0, v38

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v26

    .line 1026
    .local v26, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/16 v25, 0x0

    .line 1027
    .local v25, "policyElement":Lorg/w3c/dom/Element;
    const/16 v38, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v25

    .end local v25    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v25, Lorg/w3c/dom/Element;

    .line 1028
    .local v25, "policyElement":Lorg/w3c/dom/Element;
    const-string/jumbo v38, "signer"

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v31

    .line 1029
    .local v31, "signer":Lorg/w3c/dom/NodeList;
    const/16 v33, 0x0

    .line 1030
    .local v33, "signerElementCur":Lorg/w3c/dom/Element;
    const/16 v32, 0x0

    .line 1031
    .local v32, "signerElement":Lorg/w3c/dom/Element;
    const/4 v4, 0x0

    .line 1032
    .local v4, "allowallElement":Lorg/w3c/dom/Element;
    const/16 v23, 0x0

    .line 1033
    .local v23, "newElement":Lorg/w3c/dom/Element;
    const/16 v30, 0x0

    .line 1034
    .local v30, "seinfoElement":Lorg/w3c/dom/Element;
    const/16 v35, 0x0

    .line 1035
    .local v35, "specialTag":Ljava/lang/String;
    const-string/jumbo v35, "service"

    .line 1036
    .local v35, "specialTag":Ljava/lang/String;
    move-object/from16 v0, v35

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v23

    .line 1037
    .local v23, "newElement":Lorg/w3c/dom/Element;
    const-string/jumbo v38, "name"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    const-string/jumbo v38, "seinfo"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    if-eqz v6, :cond_1

    .line 1040
    const-string/jumbo v38, "category"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-interface {v0, v1, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    :cond_1
    if-eqz v5, :cond_2

    .line 1043
    const-string/jumbo v38, "allowcategory"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-interface {v0, v1, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    :cond_2
    if-eqz v3, :cond_3

    .line 1046
    const-string/jumbo v38, "containerallowcategory"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-interface {v0, v1, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    :cond_3
    if-eqz v21, :cond_4

    .line 1049
    const-string/jumbo v38, "issdcardsbaapp"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    :cond_4
    if-eqz v20, :cond_5

    .line 1052
    const-string/jumbo v38, "isbluetoothsbaapp"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    :cond_5
    sget v38, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v38

    if-ne v0, v1, :cond_6

    .line 1055
    const-string/jumbo v38, "sdcarduseridBL"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    :cond_6
    sget v38, Lcom/android/server/ResourceManager;->BT_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v38

    if-ne v0, v1, :cond_7

    .line 1061
    const-string/jumbo v38, "bluetoothuseridBL"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    :cond_7
    const-string/jumbo v38, "signer"

    move-object/from16 v0, v38

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v32

    .line 1071
    .local v32, "signerElement":Lorg/w3c/dom/Element;
    const-string/jumbo v38, "seinfo"

    move-object/from16 v0, v38

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v30

    .line 1072
    .local v30, "seinfoElement":Lorg/w3c/dom/Element;
    const-string/jumbo v38, "allow-all"

    move-object/from16 v0, v38

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 1073
    .local v4, "allowallElement":Lorg/w3c/dom/Element;
    const-string/jumbo v38, "signature"

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    const-string/jumbo v38, "value"

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    if-eqz v6, :cond_8

    .line 1076
    const-string/jumbo v38, "category"

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-interface {v0, v1, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    :cond_8
    if-eqz v5, :cond_9

    .line 1079
    const-string/jumbo v38, "allowcategory"

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-interface {v0, v1, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    :cond_9
    const/16 v18, 0x0

    .end local v33    # "signerElementCur":Lorg/w3c/dom/Element;
    .local v18, "i":I
    :goto_3
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v38

    move/from16 v0, v18

    move/from16 v1, v38

    if-ge v0, v1, :cond_10

    .line 1083
    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v33

    check-cast v33, Lorg/w3c/dom/Element;

    .line 1084
    .local v33, "signerElementCur":Lorg/w3c/dom/Element;
    const-string/jumbo v38, "signature"

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_19

    .line 1085
    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v16

    .line 1086
    .local v16, "existElem":Lorg/w3c/dom/Element;
    if-eqz v16, :cond_18

    .line 1090
    sget v38, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v38

    if-ne v0, v1, :cond_14

    .line 1092
    const-string/jumbo v38, "sdcarduseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkUser(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v38

    if-eqz v38, :cond_e

    .line 1096
    const/16 v38, 0x0

    monitor-exit v39

    return v38

    .line 991
    .end local v4    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v8    # "doc":Lorg/w3c/dom/Document;
    .end local v9    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v16    # "existElem":Lorg/w3c/dom/Element;
    .end local v18    # "i":I
    .end local v19    # "isAddedMac":Z
    .end local v20    # "isbluetoothsbaapp":Ljava/lang/String;
    .end local v21    # "issdcardsbaapp":Ljava/lang/String;
    .end local v22    # "macPermExists":Z
    .end local v23    # "newElement":Lorg/w3c/dom/Element;
    .end local v25    # "policyElement":Lorg/w3c/dom/Element;
    .end local v26    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v30    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v31    # "signer":Lorg/w3c/dom/NodeList;
    .end local v32    # "signerElement":Lorg/w3c/dom/Element;
    .end local v33    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v35    # "specialTag":Ljava/lang/String;
    :cond_a
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 992
    .restart local v21    # "issdcardsbaapp":Ljava/lang/String;
    :cond_b
    const/16 v38, 0x0

    goto/16 :goto_1

    .line 1014
    .restart local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .local v8, "doc":Lorg/w3c/dom/Document;
    .restart local v9    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v19    # "isAddedMac":Z
    .restart local v20    # "isbluetoothsbaapp":Ljava/lang/String;
    .restart local v22    # "macPermExists":Z
    :cond_c
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v17

    .line 1018
    :goto_4
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v38

    if-nez v38, :cond_d

    .line 1019
    const/16 v38, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 1020
    :cond_d
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v8

    .line 1021
    .local v8, "doc":Lorg/w3c/dom/Document;
    const-string/jumbo v38, "policy"

    move-object/from16 v0, v38

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v28

    .line 1022
    .local v28, "rootElement":Lorg/w3c/dom/Element;
    move-object/from16 v0, v28

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 1156
    .end local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v8    # "doc":Lorg/w3c/dom/Document;
    .end local v28    # "rootElement":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v15

    .line 1157
    .local v15, "e1":Lorg/xml/sax/SAXException;
    :try_start_4
    invoke-virtual {v15}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1167
    .end local v15    # "e1":Lorg/xml/sax/SAXException;
    :goto_5
    const/16 v38, -0x1

    monitor-exit v39

    return v38

    .line 1015
    .restart local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .local v8, "doc":Lorg/w3c/dom/Document;
    :catch_1
    move-exception v10

    .line 1016
    .local v10, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 1158
    .end local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v8    # "doc":Lorg/w3c/dom/Document;
    .end local v10    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v13

    .line 1159
    .local v13, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_6
    invoke-virtual {v13}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    .end local v3    # "allowContainerCategory":Ljava/lang/String;
    .end local v5    # "allowcategory":Ljava/lang/String;
    .end local v6    # "category":Ljava/lang/String;
    .end local v9    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v13    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v19    # "isAddedMac":Z
    .end local v20    # "isbluetoothsbaapp":Ljava/lang/String;
    .end local v21    # "issdcardsbaapp":Ljava/lang/String;
    .end local v22    # "macPermExists":Z
    .end local v29    # "seinfo":Ljava/lang/String;
    :catchall_0
    move-exception v38

    monitor-exit v39

    throw v38

    .line 1098
    .restart local v3    # "allowContainerCategory":Ljava/lang/String;
    .restart local v4    # "allowallElement":Lorg/w3c/dom/Element;
    .restart local v5    # "allowcategory":Ljava/lang/String;
    .restart local v6    # "category":Ljava/lang/String;
    .restart local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .local v8, "doc":Lorg/w3c/dom/Document;
    .restart local v9    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v16    # "existElem":Lorg/w3c/dom/Element;
    .restart local v18    # "i":I
    .restart local v19    # "isAddedMac":Z
    .restart local v20    # "isbluetoothsbaapp":Ljava/lang/String;
    .restart local v21    # "issdcardsbaapp":Ljava/lang/String;
    .restart local v22    # "macPermExists":Z
    .restart local v23    # "newElement":Lorg/w3c/dom/Element;
    .restart local v25    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v26    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v29    # "seinfo":Ljava/lang/String;
    .restart local v30    # "seinfoElement":Lorg/w3c/dom/Element;
    .restart local v31    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v32    # "signerElement":Lorg/w3c/dom/Element;
    .restart local v33    # "signerElementCur":Lorg/w3c/dom/Element;
    .restart local v35    # "specialTag":Ljava/lang/String;
    :cond_e
    const/16 v24, 0x0

    .line 1099
    .local v24, "newValue":Ljava/lang/String;
    :try_start_7
    const-string/jumbo v38, "sdcarduseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    if-eqz v38, :cond_f

    const-string/jumbo v38, "sdcarduseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    const-string/jumbo v40, ""

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_13

    .line 1102
    :cond_f
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    .line 1104
    .local v24, "newValue":Ljava/lang/String;
    :goto_6
    const-string/jumbo v38, "sdcarduseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    const/16 v19, 0x1

    .line 1135
    .end local v16    # "existElem":Lorg/w3c/dom/Element;
    .end local v24    # "newValue":Ljava/lang/String;
    .end local v33    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_10
    :goto_7
    if-nez v19, :cond_11

    .line 1136
    move-object/from16 v0, v32

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1137
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1138
    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1139
    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1141
    :cond_11
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Element;->normalize()V

    .line 1142
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v37

    .line 1143
    .local v37, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v37 .. v37}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v36

    .line 1144
    .local v36, "transformer":Ljavax/xml/transform/Transformer;
    const/16 v34, 0x0

    .line 1145
    .local v34, "source":Ljavax/xml/transform/dom/DOMSource;
    if-eqz v22, :cond_1a

    .line 1146
    new-instance v34, Ljavax/xml/transform/dom/DOMSource;

    .end local v34    # "source":Ljavax/xml/transform/dom/DOMSource;
    move-object/from16 v0, v34

    invoke-direct {v0, v8}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 1150
    .local v34, "source":Ljavax/xml/transform/dom/DOMSource;
    :goto_8
    new-instance v27, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 1151
    .local v27, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v36

    move-object/from16 v1, v34

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 1152
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v38

    if-eqz v38, :cond_12

    .line 1153
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z
    :try_end_7
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1155
    :cond_12
    const/16 v38, 0x0

    monitor-exit v39

    return v38

    .line 1100
    .end local v27    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v34    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v36    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v37    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    .restart local v16    # "existElem":Lorg/w3c/dom/Element;
    .local v24, "newValue":Ljava/lang/String;
    .restart local v33    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_13
    :try_start_8
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v40, ","

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v40, "sdcarduseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .local v24, "newValue":Ljava/lang/String;
    goto/16 :goto_6

    .line 1108
    .end local v24    # "newValue":Ljava/lang/String;
    :cond_14
    sget v38, Lcom/android/server/ResourceManager;->BT_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v38

    if-ne v0, v1, :cond_18

    .line 1110
    const-string/jumbo v38, "bluetoothuseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkUser(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_8
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v38

    if-eqz v38, :cond_15

    .line 1114
    const/16 v38, 0x0

    monitor-exit v39

    return v38

    .line 1116
    :cond_15
    const/16 v24, 0x0

    .line 1117
    .local v24, "newValue":Ljava/lang/String;
    :try_start_9
    const-string/jumbo v38, "bluetoothuseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    if-eqz v38, :cond_16

    const-string/jumbo v38, "bluetoothuseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    const-string/jumbo v40, ""

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_17

    .line 1120
    :cond_16
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    .line 1122
    .local v24, "newValue":Ljava/lang/String;
    :goto_9
    const-string/jumbo v38, "bluetoothuseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    const/16 v19, 0x1

    .line 1124
    goto/16 :goto_7

    .line 1118
    .local v24, "newValue":Ljava/lang/String;
    :cond_17
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v40, ","

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v40, "bluetoothuseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .local v24, "newValue":Ljava/lang/String;
    goto :goto_9

    .line 1127
    .end local v24    # "newValue":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1131
    const/16 v19, 0x1

    .line 1132
    goto/16 :goto_7

    .line 1082
    .end local v16    # "existElem":Lorg/w3c/dom/Element;
    :cond_19
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 1148
    .end local v33    # "signerElementCur":Lorg/w3c/dom/Element;
    .local v34, "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v36    # "transformer":Ljavax/xml/transform/Transformer;
    .restart local v37    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :cond_1a
    new-instance v34, Ljavax/xml/transform/dom/DOMSource;

    .end local v34    # "source":Ljavax/xml/transform/dom/DOMSource;
    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_9
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .local v34, "source":Ljavax/xml/transform/dom/DOMSource;
    goto/16 :goto_8

    .line 1164
    .end local v4    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v8    # "doc":Lorg/w3c/dom/Document;
    .end local v18    # "i":I
    .end local v23    # "newElement":Lorg/w3c/dom/Element;
    .end local v25    # "policyElement":Lorg/w3c/dom/Element;
    .end local v26    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v30    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v31    # "signer":Lorg/w3c/dom/NodeList;
    .end local v32    # "signerElement":Lorg/w3c/dom/Element;
    .end local v34    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v35    # "specialTag":Ljava/lang/String;
    .end local v36    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v37    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :catch_3
    move-exception v11

    .line 1165
    .local v11, "e":Ljava/lang/Exception;
    :try_start_a
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 1162
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v12

    .line 1163
    .local v12, "e1":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 1160
    .end local v12    # "e1":Ljava/io/IOException;
    :catch_5
    move-exception v14

    .line 1161
    .local v14, "e1":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v14}, Ljavax/xml/transform/TransformerException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_5
.end method

.method protected static declared-synchronized addWhitelistEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;I)I
    .locals 41
    .param p0, "macPermFile"    # Ljava/io/File;
    .param p1, "signature"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p5, "resourceType"    # I

    .prologue
    const-class v39, Lcom/android/server/ResourceManager;

    monitor-enter v39

    .line 337
    :try_start_0
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 338
    .local v29, "seinfo":Ljava/lang/String;
    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 339
    .local v6, "category":Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .line 340
    .local v5, "allowcategory":Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    .line 341
    .local v3, "allowContainerCategory":Ljava/lang/String;
    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move/from16 v38, v0

    and-int/lit8 v38, v38, 0x4

    const/16 v40, 0x4

    move/from16 v0, v38

    move/from16 v1, v40

    if-ne v0, v1, :cond_a

    const/16 v38, 0x1

    :goto_0
    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v21

    .line 342
    .local v21, "issdcardsbaapp":Ljava/lang/String;
    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move/from16 v38, v0

    and-int/lit8 v38, v38, 0x8

    const/16 v40, 0x8

    move/from16 v0, v38

    move/from16 v1, v40

    if-ne v0, v1, :cond_b

    const/16 v38, 0x1

    :goto_1
    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v20

    .line 343
    .local v20, "isbluetoothsbaapp":Ljava/lang/String;
    const/16 v19, 0x0

    .line 344
    .local v19, "isAddedMac":Z
    const/16 v22, 0x0

    .line 346
    .local v22, "macPermExists":Z
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 347
    .local v9, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v8, 0x0

    .line 349
    .local v8, "doc":Lorg/w3c/dom/Document;
    :try_start_1
    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    .line 350
    .local v7, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v38

    if-eqz v38, :cond_c

    .line 354
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v38

    if-nez v38, :cond_0

    .line 355
    const/16 v38, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 357
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v8

    .line 358
    .local v8, "doc":Lorg/w3c/dom/Document;
    const/16 v22, 0x1

    .line 374
    :goto_2
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Element;->normalize()V

    .line 375
    const-string/jumbo v38, "policy"

    move-object/from16 v0, v38

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v26

    .line 376
    .local v26, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/16 v25, 0x0

    .line 377
    .local v25, "policyElement":Lorg/w3c/dom/Element;
    const/16 v38, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v25

    .end local v25    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v25, Lorg/w3c/dom/Element;

    .line 378
    .local v25, "policyElement":Lorg/w3c/dom/Element;
    const-string/jumbo v38, "signer"

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v31

    .line 379
    .local v31, "signer":Lorg/w3c/dom/NodeList;
    const/16 v33, 0x0

    .line 380
    .local v33, "signerElementCur":Lorg/w3c/dom/Element;
    const/16 v32, 0x0

    .line 381
    .local v32, "signerElement":Lorg/w3c/dom/Element;
    const/4 v4, 0x0

    .line 382
    .local v4, "allowallElement":Lorg/w3c/dom/Element;
    const/16 v23, 0x0

    .line 383
    .local v23, "newElement":Lorg/w3c/dom/Element;
    const/16 v30, 0x0

    .line 384
    .local v30, "seinfoElement":Lorg/w3c/dom/Element;
    const/16 v35, 0x0

    .line 385
    .local v35, "specialTag":Ljava/lang/String;
    const-string/jumbo v35, "service"

    .line 386
    .local v35, "specialTag":Ljava/lang/String;
    move-object/from16 v0, v35

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v23

    .line 387
    .local v23, "newElement":Lorg/w3c/dom/Element;
    const-string/jumbo v38, "name"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const-string/jumbo v38, "seinfo"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    if-eqz v6, :cond_1

    .line 390
    const-string/jumbo v38, "category"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-interface {v0, v1, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_1
    if-eqz v5, :cond_2

    .line 393
    const-string/jumbo v38, "allowcategory"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-interface {v0, v1, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_2
    if-eqz v3, :cond_3

    .line 396
    const-string/jumbo v38, "containerallowcategory"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-interface {v0, v1, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :cond_3
    if-eqz v21, :cond_4

    .line 399
    const-string/jumbo v38, "issdcardsbaapp"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :cond_4
    if-eqz v20, :cond_5

    .line 402
    const-string/jumbo v38, "isbluetoothsbaapp"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_5
    sget v38, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v38

    if-ne v0, v1, :cond_6

    .line 405
    const-string/jumbo v38, "sdcarduserid"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :cond_6
    sget v38, Lcom/android/server/ResourceManager;->BT_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v38

    if-ne v0, v1, :cond_7

    .line 411
    const-string/jumbo v38, "bluetoothuserid"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :cond_7
    const-string/jumbo v38, "signer"

    move-object/from16 v0, v38

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v32

    .line 421
    .local v32, "signerElement":Lorg/w3c/dom/Element;
    const-string/jumbo v38, "seinfo"

    move-object/from16 v0, v38

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v30

    .line 422
    .local v30, "seinfoElement":Lorg/w3c/dom/Element;
    const-string/jumbo v38, "allow-all"

    move-object/from16 v0, v38

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 423
    .local v4, "allowallElement":Lorg/w3c/dom/Element;
    const-string/jumbo v38, "signature"

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string/jumbo v38, "value"

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    if-eqz v6, :cond_8

    .line 426
    const-string/jumbo v38, "category"

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-interface {v0, v1, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_8
    if-eqz v5, :cond_9

    .line 429
    const-string/jumbo v38, "allowcategory"

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-interface {v0, v1, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_9
    const/16 v18, 0x0

    .end local v33    # "signerElementCur":Lorg/w3c/dom/Element;
    .local v18, "i":I
    :goto_3
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v38

    move/from16 v0, v18

    move/from16 v1, v38

    if-ge v0, v1, :cond_10

    .line 433
    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v33

    check-cast v33, Lorg/w3c/dom/Element;

    .line 434
    .local v33, "signerElementCur":Lorg/w3c/dom/Element;
    const-string/jumbo v38, "signature"

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_19

    .line 435
    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v16

    .line 436
    .local v16, "existElem":Lorg/w3c/dom/Element;
    if-eqz v16, :cond_18

    .line 440
    sget v38, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v38

    if-ne v0, v1, :cond_14

    .line 442
    const-string/jumbo v38, "sdcarduserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkUser(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v38

    if-eqz v38, :cond_e

    .line 446
    const/16 v38, 0x0

    monitor-exit v39

    return v38

    .line 341
    .end local v4    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v8    # "doc":Lorg/w3c/dom/Document;
    .end local v9    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v16    # "existElem":Lorg/w3c/dom/Element;
    .end local v18    # "i":I
    .end local v19    # "isAddedMac":Z
    .end local v20    # "isbluetoothsbaapp":Ljava/lang/String;
    .end local v21    # "issdcardsbaapp":Ljava/lang/String;
    .end local v22    # "macPermExists":Z
    .end local v23    # "newElement":Lorg/w3c/dom/Element;
    .end local v25    # "policyElement":Lorg/w3c/dom/Element;
    .end local v26    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v30    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v31    # "signer":Lorg/w3c/dom/NodeList;
    .end local v32    # "signerElement":Lorg/w3c/dom/Element;
    .end local v33    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v35    # "specialTag":Ljava/lang/String;
    :cond_a
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 342
    .restart local v21    # "issdcardsbaapp":Ljava/lang/String;
    :cond_b
    const/16 v38, 0x0

    goto/16 :goto_1

    .line 364
    .restart local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .local v8, "doc":Lorg/w3c/dom/Document;
    .restart local v9    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v19    # "isAddedMac":Z
    .restart local v20    # "isbluetoothsbaapp":Ljava/lang/String;
    .restart local v22    # "macPermExists":Z
    :cond_c
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v17

    .line 368
    :goto_4
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v38

    if-nez v38, :cond_d

    .line 369
    const/16 v38, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 370
    :cond_d
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v8

    .line 371
    .local v8, "doc":Lorg/w3c/dom/Document;
    const-string/jumbo v38, "policy"

    move-object/from16 v0, v38

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v28

    .line 372
    .local v28, "rootElement":Lorg/w3c/dom/Element;
    move-object/from16 v0, v28

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 506
    .end local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v8    # "doc":Lorg/w3c/dom/Document;
    .end local v28    # "rootElement":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v15

    .line 507
    .local v15, "e1":Lorg/xml/sax/SAXException;
    :try_start_4
    invoke-virtual {v15}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 517
    .end local v15    # "e1":Lorg/xml/sax/SAXException;
    :goto_5
    const/16 v38, -0x1

    monitor-exit v39

    return v38

    .line 365
    .restart local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .local v8, "doc":Lorg/w3c/dom/Document;
    :catch_1
    move-exception v10

    .line 366
    .local v10, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 508
    .end local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v8    # "doc":Lorg/w3c/dom/Document;
    .end local v10    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v13

    .line 509
    .local v13, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_6
    invoke-virtual {v13}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    .end local v3    # "allowContainerCategory":Ljava/lang/String;
    .end local v5    # "allowcategory":Ljava/lang/String;
    .end local v6    # "category":Ljava/lang/String;
    .end local v9    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v13    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v19    # "isAddedMac":Z
    .end local v20    # "isbluetoothsbaapp":Ljava/lang/String;
    .end local v21    # "issdcardsbaapp":Ljava/lang/String;
    .end local v22    # "macPermExists":Z
    .end local v29    # "seinfo":Ljava/lang/String;
    :catchall_0
    move-exception v38

    monitor-exit v39

    throw v38

    .line 448
    .restart local v3    # "allowContainerCategory":Ljava/lang/String;
    .restart local v4    # "allowallElement":Lorg/w3c/dom/Element;
    .restart local v5    # "allowcategory":Ljava/lang/String;
    .restart local v6    # "category":Ljava/lang/String;
    .restart local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .local v8, "doc":Lorg/w3c/dom/Document;
    .restart local v9    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v16    # "existElem":Lorg/w3c/dom/Element;
    .restart local v18    # "i":I
    .restart local v19    # "isAddedMac":Z
    .restart local v20    # "isbluetoothsbaapp":Ljava/lang/String;
    .restart local v21    # "issdcardsbaapp":Ljava/lang/String;
    .restart local v22    # "macPermExists":Z
    .restart local v23    # "newElement":Lorg/w3c/dom/Element;
    .restart local v25    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v26    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v29    # "seinfo":Ljava/lang/String;
    .restart local v30    # "seinfoElement":Lorg/w3c/dom/Element;
    .restart local v31    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v32    # "signerElement":Lorg/w3c/dom/Element;
    .restart local v33    # "signerElementCur":Lorg/w3c/dom/Element;
    .restart local v35    # "specialTag":Ljava/lang/String;
    :cond_e
    const/16 v24, 0x0

    .line 449
    .local v24, "newValue":Ljava/lang/String;
    :try_start_7
    const-string/jumbo v38, "sdcarduserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    if-eqz v38, :cond_f

    const-string/jumbo v38, "sdcarduserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    const-string/jumbo v40, ""

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_13

    .line 452
    :cond_f
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    .line 454
    .local v24, "newValue":Ljava/lang/String;
    :goto_6
    const-string/jumbo v38, "sdcarduserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const/16 v19, 0x1

    .line 485
    .end local v16    # "existElem":Lorg/w3c/dom/Element;
    .end local v24    # "newValue":Ljava/lang/String;
    .end local v33    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_10
    :goto_7
    if-nez v19, :cond_11

    .line 486
    move-object/from16 v0, v32

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 487
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 488
    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 489
    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 491
    :cond_11
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Element;->normalize()V

    .line 492
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v37

    .line 493
    .local v37, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v37 .. v37}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v36

    .line 494
    .local v36, "transformer":Ljavax/xml/transform/Transformer;
    const/16 v34, 0x0

    .line 495
    .local v34, "source":Ljavax/xml/transform/dom/DOMSource;
    if-eqz v22, :cond_1a

    .line 496
    new-instance v34, Ljavax/xml/transform/dom/DOMSource;

    .end local v34    # "source":Ljavax/xml/transform/dom/DOMSource;
    move-object/from16 v0, v34

    invoke-direct {v0, v8}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 500
    .local v34, "source":Ljavax/xml/transform/dom/DOMSource;
    :goto_8
    new-instance v27, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 501
    .local v27, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v36

    move-object/from16 v1, v34

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 502
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v38

    if-eqz v38, :cond_12

    .line 503
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z
    :try_end_7
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 505
    :cond_12
    const/16 v38, 0x0

    monitor-exit v39

    return v38

    .line 450
    .end local v27    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v34    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v36    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v37    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    .restart local v16    # "existElem":Lorg/w3c/dom/Element;
    .local v24, "newValue":Ljava/lang/String;
    .restart local v33    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_13
    :try_start_8
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v40, ","

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v40, "sdcarduserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .local v24, "newValue":Ljava/lang/String;
    goto/16 :goto_6

    .line 458
    .end local v24    # "newValue":Ljava/lang/String;
    :cond_14
    sget v38, Lcom/android/server/ResourceManager;->BT_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v38

    if-ne v0, v1, :cond_18

    .line 460
    const-string/jumbo v38, "bluetoothuserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkUser(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_8
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v38

    if-eqz v38, :cond_15

    .line 464
    const/16 v38, 0x0

    monitor-exit v39

    return v38

    .line 466
    :cond_15
    const/16 v24, 0x0

    .line 467
    .local v24, "newValue":Ljava/lang/String;
    :try_start_9
    const-string/jumbo v38, "bluetoothuserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    if-eqz v38, :cond_16

    const-string/jumbo v38, "bluetoothuserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    const-string/jumbo v40, ""

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_17

    .line 470
    :cond_16
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    .line 472
    .local v24, "newValue":Ljava/lang/String;
    :goto_9
    const-string/jumbo v38, "bluetoothuserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const/16 v19, 0x1

    .line 474
    goto/16 :goto_7

    .line 468
    .local v24, "newValue":Ljava/lang/String;
    :cond_17
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v40, ","

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v40, "bluetoothuserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .local v24, "newValue":Ljava/lang/String;
    goto :goto_9

    .line 477
    .end local v24    # "newValue":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 481
    const/16 v19, 0x1

    .line 482
    goto/16 :goto_7

    .line 432
    .end local v16    # "existElem":Lorg/w3c/dom/Element;
    :cond_19
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 498
    .end local v33    # "signerElementCur":Lorg/w3c/dom/Element;
    .local v34, "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v36    # "transformer":Ljavax/xml/transform/Transformer;
    .restart local v37    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :cond_1a
    new-instance v34, Ljavax/xml/transform/dom/DOMSource;

    .end local v34    # "source":Ljavax/xml/transform/dom/DOMSource;
    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_9
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .local v34, "source":Ljavax/xml/transform/dom/DOMSource;
    goto/16 :goto_8

    .line 514
    .end local v4    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v8    # "doc":Lorg/w3c/dom/Document;
    .end local v18    # "i":I
    .end local v23    # "newElement":Lorg/w3c/dom/Element;
    .end local v25    # "policyElement":Lorg/w3c/dom/Element;
    .end local v26    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v30    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v31    # "signer":Lorg/w3c/dom/NodeList;
    .end local v32    # "signerElement":Lorg/w3c/dom/Element;
    .end local v34    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v35    # "specialTag":Ljava/lang/String;
    .end local v36    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v37    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :catch_3
    move-exception v11

    .line 515
    .local v11, "e":Ljava/lang/Exception;
    :try_start_a
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 512
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v12

    .line 513
    .local v12, "e1":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 510
    .end local v12    # "e1":Ljava/io/IOException;
    :catch_5
    move-exception v14

    .line 511
    .local v14, "e1":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v14}, Ljavax/xml/transform/TransformerException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_5
.end method

.method private static checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 4
    .param p0, "curElem"    # Lorg/w3c/dom/Element;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 777
    if-nez p0, :cond_0

    .line 781
    return-object v2

    .line 784
    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 785
    .local v0, "currTrustedPackageElem":Lorg/w3c/dom/Element;
    const/4 v1, 0x0

    .line 787
    .local v1, "returnElem":Lorg/w3c/dom/Element;
    :goto_0
    if-eqz v0, :cond_1

    .line 788
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "seinfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "name"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 792
    move-object v1, v0

    .line 797
    .end local v1    # "returnElem":Lorg/w3c/dom/Element;
    :cond_1
    return-object v1

    .line 795
    .restart local v1    # "returnElem":Lorg/w3c/dom/Element;
    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    .end local v0    # "currTrustedPackageElem":Lorg/w3c/dom/Element;
    check-cast v0, Lorg/w3c/dom/Element;

    .restart local v0    # "currTrustedPackageElem":Lorg/w3c/dom/Element;
    goto :goto_0
.end method

.method private static checkUser(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "existUsers"    # Ljava/lang/String;
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 706
    const-string/jumbo v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 707
    .local v0, "allowUsers":[Ljava/lang/String;
    array-length v4, v0

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v0, v2

    .line 708
    .local v1, "item":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 709
    const/4 v2, 0x1

    return v2

    .line 707
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 712
    .end local v1    # "item":Ljava/lang/String;
    :cond_1
    return v3
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/ResourceManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/android/server/ResourceManager;

    monitor-enter v1

    .line 100
    :try_start_0
    sget-object v0, Lcom/android/server/ResourceManager;->instance:Lcom/android/server/ResourceManager;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/android/server/ResourceManager;

    invoke-direct {v0, p0}, Lcom/android/server/ResourceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/ResourceManager;->instance:Lcom/android/server/ResourceManager;

    .line 103
    :cond_0
    sget-object v0, Lcom/android/server/ResourceManager;->instance:Lcom/android/server/ResourceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 8
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 750
    if-nez p0, :cond_0

    .line 754
    return-object v7

    .line 756
    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 757
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    const/4 v2, 0x0

    .line 759
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    const/16 v6, 0x40

    :try_start_0
    invoke-interface {v3, p0, v6, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 760
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_2

    .line 761
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 762
    .local v4, "s":[Landroid/content/pm/Signature;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 763
    .local v5, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_1

    .line 764
    aget-object v6, v4, v1

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 766
    :cond_1
    return-object v5

    .line 768
    .end local v1    # "i":I
    .end local v4    # "s":[Landroid/content/pm/Signature;
    .end local v5    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    return-object v7

    .line 770
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 771
    .local v0, "e1":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 772
    return-object v7
.end method

.method private static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 742
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

    .line 743
    :catch_0
    move-exception v0

    .line 744
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 746
    return-object v1
.end method

.method private static hashset_to_str_array(Ljava/util/HashSet;)[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 688
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 692
    :cond_0
    return-object v6

    .line 694
    :cond_1
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/String;

    .line 695
    .local v0, "array":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 696
    .local v1, "i":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 697
    .local v3, "s":Ljava/lang/String;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aput-object v3, v0, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 699
    .end local v3    # "s":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method private loadContainerSetting(Ljava/lang/String;IZ)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "containerID"    # I
    .param p3, "appNotInstalled"    # Z

    .prologue
    .line 804
    const/4 v0, -0x1

    .line 805
    .local v0, "ret":I
    if-nez p1, :cond_0

    .line 806
    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "BTSdcard"

    const-string/jumbo v3, "loadContainerSetting, packageName is null"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    return v0

    .line 812
    :cond_0
    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService;

    iput-object v1, p0, Lcom/android/server/ResourceManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 814
    iget-object v1, p0, Lcom/android/server/ResourceManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->updateAppInfoForPackage(Ljava/lang/String;IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 818
    const/4 v0, 0x0

    .line 820
    :cond_1
    return v0
.end method

.method protected static declared-synchronized removeBlacklistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z
    .locals 30
    .param p0, "macPermFile"    # Ljava/io/File;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "resourceType"    # I

    .prologue
    const-class v26, Lcom/android/server/ResourceManager;

    monitor-enter v26

    .line 1176
    const/4 v12, 0x0

    .line 1177
    .local v12, "isRemoveSuccess":Z
    const/16 v18, 0x0

    .line 1179
    .local v18, "seinfoElem":Lorg/w3c/dom/Element;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 1181
    .local v5, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_1
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 1182
    .local v3, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v4, 0x0

    .line 1183
    .local v4, "doc":Lorg/w3c/dom/Document;
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_5

    .line 1187
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v25

    if-nez v25, :cond_0

    .line 1188
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 1190
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 1197
    .local v4, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Element;->normalize()V

    .line 1198
    const-string/jumbo v25, "policy"

    move-object/from16 v0, v25

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 1199
    .local v15, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    .line 1200
    .local v14, "policyElement":Lorg/w3c/dom/Element;
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-interface {v15, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    .end local v14    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v14, Lorg/w3c/dom/Element;

    .line 1201
    .local v14, "policyElement":Lorg/w3c/dom/Element;
    const-string/jumbo v25, "signer"

    move-object/from16 v0, v25

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v20

    .line 1202
    .local v20, "signer":Lorg/w3c/dom/NodeList;
    const/16 v21, 0x0

    .line 1203
    .local v21, "signerElementCur":Lorg/w3c/dom/Element;
    const/16 v16, 0x0

    .line 1210
    .local v16, "removeElem":Lorg/w3c/dom/Element;
    const/4 v11, 0x0

    .end local v16    # "removeElem":Lorg/w3c/dom/Element;
    .end local v21    # "signerElementCur":Lorg/w3c/dom/Element;
    .local v11, "i":I
    :goto_0
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v25

    move/from16 v0, v25

    if-ge v11, v0, :cond_2

    .line 1211
    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    check-cast v21, Lorg/w3c/dom/Element;

    .line 1213
    .local v21, "signerElementCur":Lorg/w3c/dom/Element;
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v16

    .line 1214
    .local v16, "removeElem":Lorg/w3c/dom/Element;
    if-eqz v16, :cond_c

    .line 1216
    sget v25, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    move/from16 v0, p3

    move/from16 v1, v25

    if-ne v0, v1, :cond_8

    .line 1217
    const-string/jumbo v25, "sdcarduseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_7

    .line 1221
    const-string/jumbo v25, "sdcarduseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 1225
    const-string/jumbo v25, "sdcarduseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V

    .line 1226
    const/4 v12, 0x1

    .line 1227
    const-string/jumbo v25, "bluetoothuseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_1

    const-string/jumbo v25, "bluetoothuseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v27, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 1228
    :cond_1
    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1295
    .end local v16    # "removeElem":Lorg/w3c/dom/Element;
    .end local v21    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_2
    :goto_1
    if-eqz v12, :cond_d

    .line 1296
    const-string/jumbo v25, "service"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v19

    .line 1297
    .local v19, "servicePackageList":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v25

    if-nez v25, :cond_3

    .line 1298
    move-object/from16 v0, v21

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1303
    :cond_3
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Element;->normalize()V

    .line 1304
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v24

    .line 1305
    .local v24, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v24 .. v24}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v23

    .line 1306
    .local v23, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v22, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 1307
    .local v22, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v17, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 1308
    .local v17, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 1315
    .end local v17    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v19    # "servicePackageList":Lorg/w3c/dom/NodeList;
    .end local v22    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v23    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v24    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v25

    if-eqz v25, :cond_4

    .line 1316
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v11    # "i":I
    .end local v14    # "policyElement":Lorg/w3c/dom/Element;
    .end local v15    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v20    # "signer":Lorg/w3c/dom/NodeList;
    :cond_4
    :goto_3
    monitor-exit v26

    .line 1329
    return v12

    .line 1195
    .restart local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .local v4, "doc":Lorg/w3c/dom/Document;
    :cond_5
    const/16 v25, 0x0

    monitor-exit v26

    return v25

    .line 1235
    .local v4, "doc":Lorg/w3c/dom/Document;
    .restart local v11    # "i":I
    .restart local v14    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v15    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v16    # "removeElem":Lorg/w3c/dom/Element;
    .restart local v20    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v21    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_6
    :try_start_2
    const-string/jumbo v25, "sdcarduseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1236
    .local v13, "newVal":Ljava/lang/String;
    if-eqz v13, :cond_8

    .line 1237
    const-string/jumbo v25, "sdcarduseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1, v13}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1238
    const/4 v12, 0x1

    .line 1239
    goto :goto_1

    .line 1246
    .end local v13    # "newVal":Ljava/lang/String;
    :cond_7
    const/16 v25, 0x0

    monitor-exit v26

    return v25

    .line 1250
    :cond_8
    :try_start_3
    sget v25, Lcom/android/server/ResourceManager;->BT_TYPE:I

    move/from16 v0, p3

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    .line 1251
    const-string/jumbo v25, "bluetoothuseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_b

    .line 1255
    const-string/jumbo v25, "bluetoothuseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 1259
    const-string/jumbo v25, "bluetoothuseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V

    .line 1260
    const/4 v12, 0x1

    .line 1261
    const-string/jumbo v25, "sdcarduseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_9

    const-string/jumbo v25, "sdcarduseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v27, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 1262
    :cond_9
    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 1318
    .end local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v11    # "i":I
    .end local v14    # "policyElement":Lorg/w3c/dom/Element;
    .end local v15    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v16    # "removeElem":Lorg/w3c/dom/Element;
    .end local v20    # "signer":Lorg/w3c/dom/NodeList;
    .end local v21    # "signerElementCur":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v10

    .line 1319
    .local v10, "e1":Lorg/xml/sax/SAXException;
    :try_start_4
    invoke-virtual {v10}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    .end local v5    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v10    # "e1":Lorg/xml/sax/SAXException;
    :catchall_0
    move-exception v25

    monitor-exit v26

    throw v25

    .line 1269
    .restart local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v11    # "i":I
    .restart local v14    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v15    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v16    # "removeElem":Lorg/w3c/dom/Element;
    .restart local v20    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v21    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_a
    :try_start_5
    const-string/jumbo v25, "bluetoothuseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1270
    .restart local v13    # "newVal":Ljava/lang/String;
    if-eqz v13, :cond_c

    .line 1271
    const-string/jumbo v25, "bluetoothuseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1, v13}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1272
    const/4 v12, 0x1

    .line 1273
    goto/16 :goto_1

    .line 1280
    .end local v13    # "newVal":Ljava/lang/String;
    :cond_b
    const/16 v25, 0x0

    monitor-exit v26

    return v25

    .line 1210
    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 1313
    .end local v16    # "removeElem":Lorg/w3c/dom/Element;
    .end local v21    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_d
    :try_start_6
    sget-object v25, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v27, "BTSdcard"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, " removeBlacklistEntryFromMac, No match for packageName:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ". Please check again"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 1320
    .end local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v11    # "i":I
    .end local v14    # "policyElement":Lorg/w3c/dom/Element;
    .end local v15    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v20    # "signer":Lorg/w3c/dom/NodeList;
    :catch_1
    move-exception v8

    .line 1321
    .local v8, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_7
    invoke-virtual {v8}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto/16 :goto_3

    .line 1326
    .end local v8    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v6

    .line 1327
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 1324
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v7

    .line 1325
    .local v7, "e1":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 1322
    .end local v7    # "e1":Ljava/io/IOException;
    :catch_4
    move-exception v9

    .line 1323
    .local v9, "e1":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v9}, Ljavax/xml/transform/TransformerException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3
.end method

.method private static removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "existUsers"    # Ljava/lang/String;
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 716
    const/4 v2, 0x0

    .line 717
    .local v2, "returnCat":Ljava/lang/String;
    const-string/jumbo v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 718
    .local v3, "srcUsers":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 719
    .local v1, "matchFound":Z
    const/4 v4, 0x0

    array-length v5, v3

    .end local v2    # "returnCat":Ljava/lang/String;
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v3, v4

    .line 720
    .local v0, "item":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 721
    const/4 v1, 0x1

    .line 719
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 723
    :cond_0
    if-nez v2, :cond_1

    .line 724
    move-object v2, v0

    .local v2, "returnCat":Ljava/lang/String;
    goto :goto_1

    .line 726
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

    .line 730
    .end local v0    # "item":Ljava/lang/String;
    .end local v2    # "returnCat":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    .line 734
    return-object v2

    .line 736
    :cond_3
    return-object v8
.end method

.method protected static declared-synchronized removeWhitelistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z
    .locals 30
    .param p0, "macPermFile"    # Ljava/io/File;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "resourceType"    # I

    .prologue
    const-class v26, Lcom/android/server/ResourceManager;

    monitor-enter v26

    .line 526
    const/4 v12, 0x0

    .line 527
    .local v12, "isRemoveSuccess":Z
    const/16 v18, 0x0

    .line 529
    .local v18, "seinfoElem":Lorg/w3c/dom/Element;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 531
    .local v5, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_1
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 532
    .local v3, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v4, 0x0

    .line 533
    .local v4, "doc":Lorg/w3c/dom/Document;
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_5

    .line 537
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v25

    if-nez v25, :cond_0

    .line 538
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 540
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 547
    .local v4, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Element;->normalize()V

    .line 548
    const-string/jumbo v25, "policy"

    move-object/from16 v0, v25

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 549
    .local v15, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    .line 550
    .local v14, "policyElement":Lorg/w3c/dom/Element;
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-interface {v15, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    .end local v14    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v14, Lorg/w3c/dom/Element;

    .line 551
    .local v14, "policyElement":Lorg/w3c/dom/Element;
    const-string/jumbo v25, "signer"

    move-object/from16 v0, v25

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v20

    .line 552
    .local v20, "signer":Lorg/w3c/dom/NodeList;
    const/16 v21, 0x0

    .line 553
    .local v21, "signerElementCur":Lorg/w3c/dom/Element;
    const/16 v16, 0x0

    .line 560
    .local v16, "removeElem":Lorg/w3c/dom/Element;
    const/4 v11, 0x0

    .end local v16    # "removeElem":Lorg/w3c/dom/Element;
    .end local v21    # "signerElementCur":Lorg/w3c/dom/Element;
    .local v11, "i":I
    :goto_0
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v25

    move/from16 v0, v25

    if-ge v11, v0, :cond_2

    .line 561
    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    check-cast v21, Lorg/w3c/dom/Element;

    .line 563
    .local v21, "signerElementCur":Lorg/w3c/dom/Element;
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v16

    .line 564
    .local v16, "removeElem":Lorg/w3c/dom/Element;
    if-eqz v16, :cond_c

    .line 566
    sget v25, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    move/from16 v0, p3

    move/from16 v1, v25

    if-ne v0, v1, :cond_8

    .line 567
    const-string/jumbo v25, "sdcarduserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_7

    .line 571
    const-string/jumbo v25, "sdcarduserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 575
    const-string/jumbo v25, "sdcarduserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V

    .line 576
    const/4 v12, 0x1

    .line 577
    const-string/jumbo v25, "bluetoothuserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_1

    const-string/jumbo v25, "bluetoothuserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v27, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 578
    :cond_1
    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 647
    .end local v16    # "removeElem":Lorg/w3c/dom/Element;
    .end local v21    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_2
    :goto_1
    if-eqz v12, :cond_d

    .line 648
    const-string/jumbo v25, "service"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v19

    .line 649
    .local v19, "servicePackageList":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v25

    if-nez v25, :cond_3

    .line 650
    move-object/from16 v0, v21

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 655
    :cond_3
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Element;->normalize()V

    .line 656
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v24

    .line 657
    .local v24, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v24 .. v24}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v23

    .line 658
    .local v23, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v22, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 659
    .local v22, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v17, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 660
    .local v17, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 667
    .end local v17    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v19    # "servicePackageList":Lorg/w3c/dom/NodeList;
    .end local v22    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v23    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v24    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v25

    if-eqz v25, :cond_4

    .line 668
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v11    # "i":I
    .end local v14    # "policyElement":Lorg/w3c/dom/Element;
    .end local v15    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v20    # "signer":Lorg/w3c/dom/NodeList;
    :cond_4
    :goto_3
    monitor-exit v26

    .line 681
    return v12

    .line 545
    .restart local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .local v4, "doc":Lorg/w3c/dom/Document;
    :cond_5
    const/16 v25, 0x0

    monitor-exit v26

    return v25

    .line 585
    .local v4, "doc":Lorg/w3c/dom/Document;
    .restart local v11    # "i":I
    .restart local v14    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v15    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v16    # "removeElem":Lorg/w3c/dom/Element;
    .restart local v20    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v21    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_6
    :try_start_2
    const-string/jumbo v25, "sdcarduserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 586
    .local v13, "newVal":Ljava/lang/String;
    if-eqz v13, :cond_8

    .line 587
    const-string/jumbo v25, "sdcarduserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1, v13}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 588
    const/4 v12, 0x1

    .line 589
    goto :goto_1

    .line 596
    .end local v13    # "newVal":Ljava/lang/String;
    :cond_7
    const/16 v25, 0x0

    monitor-exit v26

    return v25

    .line 602
    :cond_8
    :try_start_3
    sget v25, Lcom/android/server/ResourceManager;->BT_TYPE:I

    move/from16 v0, p3

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    .line 603
    const-string/jumbo v25, "bluetoothuserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_b

    .line 607
    const-string/jumbo v25, "bluetoothuserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 611
    const-string/jumbo v25, "bluetoothuserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V

    .line 612
    const/4 v12, 0x1

    .line 613
    const-string/jumbo v25, "sdcarduserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_9

    const-string/jumbo v25, "sdcarduserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v27, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 614
    :cond_9
    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 670
    .end local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v11    # "i":I
    .end local v14    # "policyElement":Lorg/w3c/dom/Element;
    .end local v15    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v16    # "removeElem":Lorg/w3c/dom/Element;
    .end local v20    # "signer":Lorg/w3c/dom/NodeList;
    .end local v21    # "signerElementCur":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v10

    .line 671
    .local v10, "e1":Lorg/xml/sax/SAXException;
    :try_start_4
    invoke-virtual {v10}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    .end local v5    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v10    # "e1":Lorg/xml/sax/SAXException;
    :catchall_0
    move-exception v25

    monitor-exit v26

    throw v25

    .line 621
    .restart local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v11    # "i":I
    .restart local v14    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v15    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v16    # "removeElem":Lorg/w3c/dom/Element;
    .restart local v20    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v21    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_a
    :try_start_5
    const-string/jumbo v25, "bluetoothuserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 622
    .restart local v13    # "newVal":Ljava/lang/String;
    if-eqz v13, :cond_c

    .line 623
    const-string/jumbo v25, "bluetoothuserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1, v13}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 624
    const/4 v12, 0x1

    .line 625
    goto/16 :goto_1

    .line 632
    .end local v13    # "newVal":Ljava/lang/String;
    :cond_b
    const/16 v25, 0x0

    monitor-exit v26

    return v25

    .line 560
    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 665
    .end local v16    # "removeElem":Lorg/w3c/dom/Element;
    .end local v21    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_d
    :try_start_6
    sget-object v25, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v27, "BTSdcard"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, " removeWhitelistEntryFromMac, No match for packageName:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ". Please check again"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 672
    .end local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v11    # "i":I
    .end local v14    # "policyElement":Lorg/w3c/dom/Element;
    .end local v15    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v20    # "signer":Lorg/w3c/dom/NodeList;
    :catch_1
    move-exception v8

    .line 673
    .local v8, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_7
    invoke-virtual {v8}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto/16 :goto_3

    .line 678
    .end local v8    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v6

    .line 679
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 676
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v7

    .line 677
    .local v7, "e1":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 674
    .end local v7    # "e1":Ljava/io/IOException;
    :catch_4
    move-exception v9

    .line 675
    .local v9, "e1":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v9}, Ljavax/xml/transform/TransformerException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3
.end method


# virtual methods
.method public addAppToSBABlacklist(ILjava/lang/String;[Ljava/lang/String;I)I
    .locals 11
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "certificate"    # [Ljava/lang/String;
    .param p4, "resourceType"    # I

    .prologue
    .line 827
    const/4 v6, 0x0

    .line 832
    .local v6, "appNotInstalled":Z
    :try_start_0
    sget v2, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p4, v2, :cond_0

    sget v2, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p4, v2, :cond_0

    .line 833
    const/4 v2, -0x1

    return v2

    .line 835
    :cond_0
    new-instance v10, Ljava/io/File;

    sget-object v2, Lcom/android/server/ResourceManager;->WHITELIST_SEANDROID_FOLDER:Ljava/lang/String;

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 836
    .local v10, "whitelistDir":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 838
    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z

    .line 839
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 840
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    :cond_1
    invoke-static {p2}, Lcom/android/server/ResourceManager;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 848
    if-nez p2, :cond_2

    .line 849
    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "BTSdcard"

    const-string/jumbo v5, " addAppToBlacklist failed, no packageName found"

    invoke-virtual {v2, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    const/4 v2, -0x1

    return v2

    .line 842
    .end local v10    # "whitelistDir":Ljava/io/File;
    :catch_0
    move-exception v8

    .line 843
    .local v8, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "BTSdcard"

    const-string/jumbo v5, "Issue with whitelistDir directory"

    invoke-virtual {v2, v3, v5, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 844
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 845
    const/4 v2, -0x1

    return v2

    .line 855
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v10    # "whitelistDir":Ljava/io/File;
    :cond_2
    const/4 v7, 0x0

    .line 856
    .local v7, "certMatch":Z
    const/4 v1, 0x0

    .line 857
    .local v1, "signature":Ljava/lang/String;
    invoke-static {p2, p1}, Lcom/android/server/ResourceManager;->getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v9

    .line 858
    .local v9, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p3, :cond_3

    .line 862
    const/16 v2, -0xe

    return v2

    .line 863
    :cond_3
    if-nez v9, :cond_6

    .line 865
    const/4 v2, 0x0

    aget-object v1, p3, v2

    .line 866
    .local v1, "signature":Ljava/lang/String;
    const/4 v6, 0x1

    .line 887
    :cond_4
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/server/ResourceManager;->WHITELIST_MAC_PERM:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 896
    .local v0, "macPermFile":Ljava/io/File;
    :try_start_1
    invoke-static {p2, p3}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 897
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 898
    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "BTSdcard"

    const-string/jumbo v5, "addAppToBlacklist, Got Application Info, Seinfo is not null"

    invoke-virtual {v2, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    const-string/jumbo v2, "default"

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 900
    const-string/jumbo v2, "untrusted"

    iput-object v2, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    :cond_5
    move-object v2, p2

    move v3, p1

    move v5, p4

    .line 902
    invoke-static/range {v0 .. v5}, Lcom/android/server/ResourceManager;->addBlacklistEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;I)I

    move-result v2

    if-eqz v2, :cond_8

    .line 904
    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "BTSdcard"

    const-string/jumbo v5, "addBlacklistEntryToMac failed"

    invoke-virtual {v2, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 905
    const/4 v2, -0x1

    return v2

    .line 868
    .end local v0    # "macPermFile":Ljava/io/File;
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v1, "signature":Ljava/lang/String;
    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "signature":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 871
    .local v1, "signature":Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, p3, v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 872
    const/4 v7, 0x1

    .line 877
    :cond_7
    if-nez v7, :cond_4

    .line 881
    const/16 v2, -0xd

    return v2

    .line 907
    .restart local v0    # "macPermFile":Ljava/io/File;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_8
    :try_start_2
    invoke-direct {p0, p2, p1, v6}, Lcom/android/server/ResourceManager;->loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_a

    .line 908
    invoke-static {v0, p2, p1, p4}, Lcom/android/server/ResourceManager;->removeBlacklistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 909
    const/4 v2, -0x1

    return v2

    .line 918
    :cond_9
    const/4 v2, -0x1

    return v2

    .line 920
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v8

    .line 924
    .restart local v8    # "e":Ljava/lang/Exception;
    const/4 v2, -0x1

    return v2

    .line 929
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_a
    const/4 v2, 0x0

    return v2
.end method

.method public addAppToWhitelist(ILjava/lang/String;[Ljava/lang/String;I)I
    .locals 11
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "certificate"    # [Ljava/lang/String;
    .param p4, "resourceType"    # I

    .prologue
    .line 176
    const/4 v6, 0x0

    .line 181
    .local v6, "appNotInstalled":Z
    :try_start_0
    sget v2, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p4, v2, :cond_0

    sget v2, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p4, v2, :cond_0

    .line 182
    const/4 v2, -0x1

    return v2

    .line 184
    :cond_0
    new-instance v10, Ljava/io/File;

    sget-object v2, Lcom/android/server/ResourceManager;->WHITELIST_SEANDROID_FOLDER:Ljava/lang/String;

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    .local v10, "whitelistDir":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 187
    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z

    .line 188
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 189
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :cond_1
    invoke-static {p2}, Lcom/android/server/ResourceManager;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 197
    if-nez p2, :cond_2

    .line 198
    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "BTSdcard"

    const-string/jumbo v5, " addAppToWhitelist failed, no packageName found"

    invoke-virtual {v2, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const/4 v2, -0x1

    return v2

    .line 191
    .end local v10    # "whitelistDir":Ljava/io/File;
    :catch_0
    move-exception v8

    .line 192
    .local v8, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "BTSdcard"

    const-string/jumbo v5, "Issue with whitelistDir directory"

    invoke-virtual {v2, v3, v5, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 194
    const/4 v2, -0x1

    return v2

    .line 204
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v10    # "whitelistDir":Ljava/io/File;
    :cond_2
    const/4 v7, 0x0

    .line 205
    .local v7, "certMatch":Z
    const/4 v1, 0x0

    .line 206
    .local v1, "signature":Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v9, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p2, p1}, Lcom/android/server/ResourceManager;->getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v9

    .line 208
    if-nez p3, :cond_3

    .line 212
    const/16 v2, -0xe

    return v2

    .line 213
    :cond_3
    if-nez v9, :cond_6

    .line 215
    const/4 v2, 0x0

    aget-object v1, p3, v2

    .line 216
    .local v1, "signature":Ljava/lang/String;
    const/4 v6, 0x1

    .line 237
    :cond_4
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/server/ResourceManager;->WHITELIST_MAC_PERM:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    .local v0, "macPermFile":Ljava/io/File;
    :try_start_1
    invoke-static {p2, p3}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 247
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 248
    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "BTSdcard"

    const-string/jumbo v5, "addAppToWhitelist, Got Application Info, Seinfo is not null"

    invoke-virtual {v2, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string/jumbo v2, "default"

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 250
    const-string/jumbo v2, "untrusted"

    iput-object v2, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    :cond_5
    move-object v2, p2

    move v3, p1

    move v5, p4

    .line 252
    invoke-static/range {v0 .. v5}, Lcom/android/server/ResourceManager;->addWhitelistEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;I)I

    move-result v2

    if-eqz v2, :cond_8

    .line 254
    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "BTSdcard"

    const-string/jumbo v5, "addWhitelistEntryToMac failed"

    invoke-virtual {v2, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 255
    const/4 v2, -0x1

    return v2

    .line 218
    .end local v0    # "macPermFile":Ljava/io/File;
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v1, "signature":Ljava/lang/String;
    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "signature":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 221
    .local v1, "signature":Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, p3, v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 222
    const/4 v7, 0x1

    .line 227
    :cond_7
    if-nez v7, :cond_4

    .line 231
    const/16 v2, -0xd

    return v2

    .line 257
    .restart local v0    # "macPermFile":Ljava/io/File;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_8
    :try_start_2
    invoke-direct {p0, p2, p1, v6}, Lcom/android/server/ResourceManager;->loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_a

    .line 258
    invoke-static {v0, p2, p1, p4}, Lcom/android/server/ResourceManager;->removeWhitelistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 259
    const/4 v2, -0x1

    return v2

    .line 268
    :cond_9
    const/4 v2, -0x1

    return v2

    .line 270
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v8

    .line 274
    .restart local v8    # "e":Ljava/lang/Exception;
    const/4 v2, -0x1

    return v2

    .line 279
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_a
    const/4 v2, 0x0

    return v2
.end method

.method public clearSBABlacklist(II)I
    .locals 10
    .param p1, "userId"    # I
    .param p2, "resourceType"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v7, -0x1

    .line 1333
    sget v6, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p2, v6, :cond_0

    sget v6, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p2, v6, :cond_0

    .line 1334
    return v7

    .line 1336
    :cond_0
    const/4 v4, -0x1

    .line 1338
    .local v4, "ret":I
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->getBlacklist(II)Ljava/util/HashSet;

    move-result-object v1

    .line 1339
    .local v1, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    .line 1340
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1341
    .local v5, "templist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "packageName$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1342
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/ResourceManager;->removeAppFromSBABlacklist(ILjava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1343
    if-eqz v4, :cond_1

    .line 1344
    return v7

    .line 1348
    .end local v1    # "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "packageName$iterator":Ljava/util/Iterator;
    .end local v5    # "templist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 1349
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BTSdcard"

    const-string/jumbo v8, "clearBlacklist exception"

    invoke-virtual {v6, v7, v8, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1351
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    return v9
.end method

.method public clearWhitelist(II)I
    .locals 10
    .param p1, "userId"    # I
    .param p2, "resourceType"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v7, -0x1

    .line 130
    sget v6, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p2, v6, :cond_0

    sget v6, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p2, v6, :cond_0

    .line 131
    return v7

    .line 133
    :cond_0
    const/4 v4, -0x1

    .line 136
    .local v4, "ret":I
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->getWhitelist(II)Ljava/util/HashSet;

    move-result-object v1

    .line 137
    .local v1, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    .line 138
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 139
    .local v5, "templist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "packageName$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 140
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/ResourceManager;->removeAppFromWhitelist(ILjava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 141
    if-eqz v4, :cond_1

    .line 142
    return v7

    .line 146
    .end local v1    # "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "packageName$iterator":Ljava/util/Iterator;
    .end local v5    # "templist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BTSdcard"

    const-string/jumbo v8, "clearWhitelist exception"

    invoke-virtual {v6, v7, v8, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    return v9
.end method

.method public getPackagesFromSBABlacklist(II)[Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "resourceType"    # I

    .prologue
    .line 1355
    sget v1, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p2, v1, :cond_0

    sget v1, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p2, v1, :cond_0

    .line 1356
    const/4 v1, 0x0

    return-object v1

    .line 1358
    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->getBlacklist(II)Ljava/util/HashSet;

    move-result-object v0

    .line 1359
    .local v0, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/android/server/ResourceManager;->hashset_to_str_array(Ljava/util/HashSet;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPackagesFromSBAList(I)[Ljava/lang/String;
    .locals 2
    .param p1, "resourceType"    # I

    .prologue
    .line 153
    sget v1, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p1, v1, :cond_0

    sget v1, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p1, v1, :cond_0

    .line 154
    const/4 v1, 0x0

    return-object v1

    .line 156
    :cond_0
    invoke-static {p1}, Lcom/android/server/pm/SELinuxMMAC;->getSBAlist(I)Ljava/util/HashSet;

    move-result-object v0

    .line 157
    .local v0, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/android/server/ResourceManager;->hashset_to_str_array(Ljava/util/HashSet;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPackagesFromWhitelist(II)[Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "resourceType"    # I

    .prologue
    .line 107
    sget v1, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p2, v1, :cond_0

    sget v1, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p2, v1, :cond_0

    .line 108
    const/4 v1, 0x0

    return-object v1

    .line 110
    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->getWhitelist(II)Ljava/util/HashSet;

    move-result-object v0

    .line 111
    .local v0, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/android/server/ResourceManager;->hashset_to_str_array(Ljava/util/HashSet;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isSBAApp(Ljava/lang/String;I)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resourceType"    # I

    .prologue
    const/4 v3, -0x1

    .line 162
    :try_start_0
    sget v2, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p2, v2, :cond_0

    sget v2, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p2, v2, :cond_0

    .line 163
    return v3

    .line 165
    :cond_0
    invoke-static {p2}, Lcom/android/server/pm/SELinuxMMAC;->getSBAlist(I)Ljava/util/HashSet;

    move-result-object v1

    .line 166
    .local v1, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    const/4 v2, 0x0

    return v2

    .line 169
    .end local v1    # "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    return v3

    .line 172
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1
    return v3
.end method

.method public isWhitelistApp(ILjava/lang/String;I)I
    .locals 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "resourceType"    # I

    .prologue
    const/4 v3, -0x1

    .line 116
    :try_start_0
    sget v2, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p3, v2, :cond_0

    sget v2, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p3, v2, :cond_0

    .line 117
    return v3

    .line 119
    :cond_0
    invoke-static {p1, p3}, Lcom/android/server/pm/SELinuxMMAC;->getWhitelist(II)Ljava/util/HashSet;

    move-result-object v1

    .line 120
    .local v1, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    const/4 v2, 0x0

    return v2

    .line 123
    .end local v1    # "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    return v3

    .line 126
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1
    return v3
.end method

.method public removeAppFromSBABlacklist(ILjava/lang/String;I)I
    .locals 10
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "resourceType"    # I

    .prologue
    const/4 v9, -0x1

    .line 933
    const/4 v0, 0x0

    .line 937
    .local v0, "appNotInstalled":Z
    sget v6, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p3, v6, :cond_0

    sget v6, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p3, v6, :cond_0

    .line 938
    return v9

    .line 940
    :cond_0
    invoke-static {p2}, Lcom/android/server/ResourceManager;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 941
    if-nez p2, :cond_1

    .line 942
    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BTSdcard"

    const-string/jumbo v8, " removeAppFromBlacklist failed, no packageName found"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    return v9

    .line 945
    :cond_1
    const/4 v1, 0x0

    .line 946
    .local v1, "certMatch":Z
    const/4 v4, 0x0

    .line 947
    .local v4, "signature":Ljava/lang/String;
    invoke-static {p2, p1}, Lcom/android/server/ResourceManager;->getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v5

    .line 948
    .local v5, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v5, :cond_2

    .line 952
    const/4 v0, 0x1

    .line 954
    :cond_2
    new-instance v3, Ljava/io/File;

    sget-object v6, Lcom/android/server/ResourceManager;->WHITELIST_MAC_PERM:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 967
    .local v3, "macPermFile":Ljava/io/File;
    :try_start_0
    invoke-static {v3, p2, p1, p3}, Lcom/android/server/ResourceManager;->removeBlacklistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_3

    .line 968
    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BTSdcard"

    const-string/jumbo v8, "removeEntryFromMac failed"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    return v9

    .line 971
    :cond_3
    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/ResourceManager;->loadContainerSetting(Ljava/lang/String;IZ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-ne v6, v9, :cond_4

    .line 972
    return v9

    .line 974
    :catch_0
    move-exception v2

    .line 975
    .local v2, "e":Ljava/lang/Exception;
    return v9

    .line 980
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v6, 0x0

    return v6
.end method

.method public removeAppFromWhitelist(ILjava/lang/String;I)I
    .locals 10
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "resourceType"    # I

    .prologue
    const/4 v9, -0x1

    .line 283
    const/4 v0, 0x0

    .line 287
    .local v0, "appNotInstalled":Z
    sget v6, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p3, v6, :cond_0

    sget v6, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p3, v6, :cond_0

    .line 288
    return v9

    .line 290
    :cond_0
    invoke-static {p2}, Lcom/android/server/ResourceManager;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 291
    if-nez p2, :cond_1

    .line 292
    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BTSdcard"

    const-string/jumbo v8, " removeAppFromWhitelist failed, no packageName found"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return v9

    .line 295
    :cond_1
    const/4 v1, 0x0

    .line 296
    .local v1, "certMatch":Z
    const/4 v4, 0x0

    .line 297
    .local v4, "signature":Ljava/lang/String;
    invoke-static {p2, p1}, Lcom/android/server/ResourceManager;->getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v5

    .line 298
    .local v5, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v5, :cond_2

    .line 302
    const/4 v0, 0x1

    .line 304
    :cond_2
    new-instance v3, Ljava/io/File;

    sget-object v6, Lcom/android/server/ResourceManager;->WHITELIST_MAC_PERM:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 317
    .local v3, "macPermFile":Ljava/io/File;
    :try_start_0
    invoke-static {v3, p2, p1, p3}, Lcom/android/server/ResourceManager;->removeWhitelistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_3

    .line 318
    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BTSdcard"

    const-string/jumbo v8, "removeEntryFromMac failed"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    return v9

    .line 321
    :cond_3
    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/ResourceManager;->loadContainerSetting(Ljava/lang/String;IZ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-ne v6, v9, :cond_4

    .line 322
    return v9

    .line 324
    :catch_0
    move-exception v2

    .line 325
    .local v2, "e":Ljava/lang/Exception;
    return v9

    .line 330
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v6, 0x0

    return v6
.end method
