.class public Lcom/android/server/enterprise/otp/engine/handler/xml/XMLValidation;
.super Ljava/lang/Object;
.source "XMLValidation.java"


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLValidation;->context:Landroid/content/Context;

    .line 20
    return-void
.end method

.method private schemaValidation(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p1, "xmlBuffer"    # Ljava/lang/String;
    .param p2, "xsdFilePath"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v11, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLValidation;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 48
    .local v4, "resource":Landroid/content/res/Resources;
    const/4 v10, 0x0

    .line 49
    .local v10, "xsdStream":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 50
    .local v9, "xmlStream":Ljava/io/InputStream;
    if-eqz v4, :cond_0

    .line 52
    :try_start_0
    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    invoke-virtual {v11, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 53
    .local v10, "xsdStream":Ljava/io/InputStream;
    new-instance v9, Ljava/io/ByteArrayInputStream;

    .end local v9    # "xmlStream":Ljava/io/InputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .local v9, "xmlStream":Ljava/io/InputStream;
    new-instance v3, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;

    invoke-direct {v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;-><init>()V

    .line 64
    .local v3, "factory":Lmf/javax/xml/validation/SchemaFactory;
    new-instance v7, Lmf/javax/xml/transform/stream/StreamSource;

    invoke-direct {v7, v10}, Lmf/javax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    .line 65
    .local v7, "srcXsd":Lmf/javax/xml/transform/stream/StreamSource;
    new-instance v6, Lmf/javax/xml/transform/stream/StreamSource;

    invoke-direct {v6, v9}, Lmf/javax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    .line 68
    .local v6, "srcXml":Lmf/javax/xml/transform/stream/StreamSource;
    :try_start_1
    invoke-virtual {v3, v7}, Lmf/javax/xml/validation/SchemaFactory;->newSchema(Lmf/javax/xml/transform/Source;)Lmf/javax/xml/validation/Schema;

    move-result-object v5

    .line 69
    .local v5, "schema":Lmf/javax/xml/validation/Schema;
    invoke-virtual {v5}, Lmf/javax/xml/validation/Schema;->newValidator()Lmf/javax/xml/validation/Validator;

    move-result-object v8

    .line 70
    .local v8, "validator":Lmf/javax/xml/validation/Validator;
    invoke-virtual {v8, v6}, Lmf/javax/xml/validation/Validator;->validate(Lmf/javax/xml/transform/Source;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 82
    const-string/jumbo v11, "XMLValidation::schemaValidation: XML is Valid."

    invoke-static {v11}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 83
    const/4 v11, 0x1

    return v11

    .line 54
    .end local v3    # "factory":Lmf/javax/xml/validation/SchemaFactory;
    .end local v5    # "schema":Lmf/javax/xml/validation/Schema;
    .end local v6    # "srcXml":Lmf/javax/xml/transform/stream/StreamSource;
    .end local v7    # "srcXsd":Lmf/javax/xml/transform/stream/StreamSource;
    .end local v8    # "validator":Lmf/javax/xml/validation/Validator;
    .end local v9    # "xmlStream":Ljava/io/InputStream;
    .end local v10    # "xsdStream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v11, "XMLValidation::schemaValidation: unable to open xsd"

    invoke-static {v11}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 56
    const/4 v11, 0x0

    return v11

    .line 59
    .end local v0    # "e":Ljava/io/IOException;
    .local v9, "xmlStream":Ljava/io/InputStream;
    .local v10, "xsdStream":Ljava/io/InputStream;
    :cond_0
    const-string/jumbo v11, "XMLValidation::schemaValidation: resources not found"

    invoke-static {v11}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 60
    const/4 v11, 0x0

    return v11

    .line 77
    .restart local v3    # "factory":Lmf/javax/xml/validation/SchemaFactory;
    .restart local v6    # "srcXml":Lmf/javax/xml/transform/stream/StreamSource;
    .restart local v7    # "srcXsd":Lmf/javax/xml/transform/stream/StreamSource;
    .local v9, "xmlStream":Ljava/io/InputStream;
    .local v10, "xsdStream":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "XMLValidation::schemaValidation: Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 79
    const/4 v11, 0x0

    return v11

    .line 74
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 75
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "XMLValidation::schemaValidation: Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 76
    const/4 v11, 0x0

    return v11

    .line 71
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 72
    .local v2, "e":Lorg/xml/sax/SAXException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "XMLValidation::schemaValidation: Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 73
    const/4 v11, 0x0

    return v11
.end method


# virtual methods
.method public isDskppValid(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlBuffer"    # Ljava/lang/String;

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method public isPskcValid(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlBuffer"    # Ljava/lang/String;

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, "result":Z
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLValidation;->context:Landroid/content/Context;

    .line 39
    const-string/jumbo v1, "pskc_schema.xsd"

    .line 40
    .local v1, "xsdFilePath":Ljava/lang/String;
    invoke-direct {p0, p2, v1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLValidation;->schemaValidation(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    const/4 v0, 0x1

    .line 43
    :cond_0
    return v0
.end method
