.class public Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;
.super Ljava/lang/Object;
.source "XMLHandler.java"


# static fields
.field public static instance:Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;->instance:Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;
    .locals 2

    .prologue
    const-class v1, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;

    monitor-enter v1

    .line 30
    :try_start_0
    const-string/jumbo v0, "OtpDbHelper::getInstance Enter"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;->instance:Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;

    invoke-direct {v0}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;->instance:Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;

    .line 34
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;->instance:Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized createKeyProvClientHelloXML(Landroid/content/Context;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mKeyProvClientHello"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;
    .param p3, "version"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 164
    const/4 v1, 0x0

    .line 165
    .local v1, "xmlBuffer":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;

    invoke-direct {v0}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;-><init>()V

    .line 166
    .local v0, "mXmlCreator":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;
    invoke-virtual {v0, p2, p3}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->createKeyProvClientHelloXML(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "xmlBuffer":Ljava/lang/String;
    monitor-exit p0

    .line 167
    return-object v1

    .end local v0    # "mXmlCreator":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;
    .local v1, "xmlBuffer":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized createKeyProvServerFinishedXML(Landroid/content/Context;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mKeyProvServerFinished"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;
    .param p3, "version"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 171
    const/4 v1, 0x0

    .line 172
    .local v1, "xmlBuffer":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;

    invoke-direct {v0}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;-><init>()V

    .line 173
    .local v0, "mXmlCreator":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;
    invoke-virtual {v0, p2, p3}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->createKeyProvServerFinishedXML(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "xmlBuffer":Ljava/lang/String;
    monitor-exit p0

    .line 174
    return-object v1

    .end local v0    # "mXmlCreator":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;
    .local v1, "xmlBuffer":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized createKeyProvTriggerXML(Landroid/content/Context;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mKeyProvTrigger"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;
    .param p3, "version"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 157
    const/4 v1, 0x0

    .line 158
    .local v1, "xmlBuffer":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;

    invoke-direct {v0}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;-><init>()V

    .line 159
    .local v0, "mXmlCreator":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;
    invoke-virtual {v0, p2, p3}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->createKeyProvTriggerXML(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "xmlBuffer":Ljava/lang/String;
    monitor-exit p0

    .line 160
    return-object v1

    .end local v0    # "mXmlCreator":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;
    .local v1, "xmlBuffer":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized parseDskppXMLBuffer(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dskppBuffer"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 75
    :try_start_0
    const-string/jumbo v2, "XMLHandler::parseDskppXMLBuffer: ENTER"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 76
    const/4 v1, 0x0

    .line 77
    .local v1, "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    new-instance v2, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLValidation;

    invoke-direct {v2}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLValidation;-><init>()V

    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLValidation;->isDskppValid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;->setKeyPin(Ljava/lang/String;)V

    .line 81
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 82
    const-string/jumbo v2, "UTF-8"

    .line 81
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 83
    .local v0, "inStream":Ljava/io/InputStream;
    new-instance v1, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;

    .end local v1    # "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    invoke-direct {v1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;-><init>()V

    .line 84
    .local v1, "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->parse(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 91
    return-object v1

    .line 88
    .end local v0    # "inStream":Ljava/io/InputStream;
    .local v1, "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    :cond_1
    :try_start_1
    const-string/jumbo v2, "XMLHandler::parseDskppXMLBuffer: XML is not valid"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 89
    return-object v3

    .end local v1    # "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized parseDskppXMLFile(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dskppXMLFilePath"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 94
    :try_start_0
    const-string/jumbo v4, "XMLHandler::parseDskppXMLFile: ENTER"

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    const/4 v3, 0x0

    .line 96
    .local v3, "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    const/4 v0, 0x0

    .line 98
    .local v0, "dskppBuffer":Ljava/lang/String;
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 99
    .local v2, "in":Ljava/io/InputStream;
    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "dskppBuffer":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;->parseDskppXMLBuffer(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;

    move-result-object v3

    .line 101
    .local v3, "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "dskppBuffer":Ljava/lang/String;
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    :goto_0
    monitor-exit p0

    .line 105
    return-object v3

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "XMLHandler::parseDskppXMLFile: IO Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized parseKeyProvClientHelloXMLBuffer(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dskppBuffer"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "mKeyProvClientHello":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;->parseDskppXMLBuffer(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;

    move-result-object v1

    .line 111
    .local v1, "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->getKeyProvClientHello()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .end local v0    # "mKeyProvClientHello":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;
    :cond_0
    monitor-exit p0

    .line 113
    return-object v0

    .end local v1    # "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    .restart local v0    # "mKeyProvClientHello":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized parseKeyProvClientHelloXMLFile(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dskppXMLFilePath"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "mKeyProvClientHello":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;->parseDskppXMLFile(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;

    move-result-object v1

    .line 119
    .local v1, "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->getKeyProvClientHello()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .end local v0    # "mKeyProvClientHello":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;
    :cond_0
    monitor-exit p0

    .line 121
    return-object v0

    .end local v1    # "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    .restart local v0    # "mKeyProvClientHello":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized parseKeyProvServerFinishedXMLBuffer(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dskppBuffer"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "mKeyServerFinished":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;->parseDskppXMLBuffer(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;

    move-result-object v1

    .line 143
    .local v1, "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->getKeyProvServerFinished()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .end local v0    # "mKeyServerFinished":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;
    :cond_0
    monitor-exit p0

    .line 145
    return-object v0

    .end local v1    # "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    .restart local v0    # "mKeyServerFinished":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized parseKeyProvServerFinishedXMLFile(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dskppXMLFilePath"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "mKeyServerFinished":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;->parseDskppXMLFile(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;

    move-result-object v1

    .line 151
    .local v1, "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->getKeyProvServerFinished()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .end local v0    # "mKeyServerFinished":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;
    :cond_0
    monitor-exit p0

    .line 153
    return-object v0

    .end local v1    # "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    .restart local v0    # "mKeyServerFinished":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized parseKeyProvTriggerXMLBuffer(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dskppBuffer"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "mKeyProvTrigger":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;->parseDskppXMLBuffer(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;

    move-result-object v1

    .line 127
    .local v1, "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->getKeyProvTrigger()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .end local v0    # "mKeyProvTrigger":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;
    :cond_0
    monitor-exit p0

    .line 129
    return-object v0

    .end local v1    # "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    .restart local v0    # "mKeyProvTrigger":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized parseKeyProvTriggerXMLFile(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dskppXMLFilePath"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "mKeyProvTrigger":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;->parseDskppXMLFile(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;

    move-result-object v1

    .line 135
    .local v1, "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->getKeyProvTrigger()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .end local v0    # "mKeyProvTrigger":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;
    :cond_0
    monitor-exit p0

    .line 137
    return-object v0

    .end local v1    # "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    .restart local v0    # "mKeyProvTrigger":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized parsePskc(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pskcBuffer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    monitor-enter p0

    .line 38
    :try_start_0
    const-string/jumbo v5, "XMLHandler::parsePskc: ENTER"

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 39
    const/4 v4, 0x0

    .line 40
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;>;"
    const/4 v2, 0x0

    .line 42
    .local v2, "keyContainer":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;
    new-instance v5, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLValidation;

    invoke-direct {v5}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLValidation;-><init>()V

    invoke-virtual {v5, p1, p2}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLValidation;->isPskcValid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 43
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;->setKeyPin(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 48
    const-string/jumbo v5, "UTF-8"

    .line 47
    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 49
    .local v1, "inStream":Ljava/io/InputStream;
    new-instance v3, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParserPskc;

    invoke-direct {v3}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParserPskc;-><init>()V

    .line 50
    .local v3, "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParserPskc;
    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {v3, v1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParserPskc;->parse(Ljava/io/InputStream;)V

    .line 52
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParserPskc;->getKeyContainer()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 63
    .end local v1    # "inStream":Ljava/io/InputStream;
    .end local v2    # "keyContainer":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;
    .end local v3    # "parser":Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParserPskc;
    :goto_0
    if-eqz v2, :cond_1

    .line 64
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeys()Ljava/util/List;

    move-result-object v4

    .line 66
    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;>;"
    :cond_1
    if-eqz v4, :cond_3

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "XMLHandler::parsePskc: EXIT [KeyPackage count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    .line 71
    return-object v4

    .line 54
    .restart local v2    # "keyContainer":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;
    .restart local v4    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;>;"
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "XMLHandler::parsePskc: Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "keyContainer":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;
    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 59
    .restart local v2    # "keyContainer":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;
    .restart local v4    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;>;"
    :cond_2
    :try_start_4
    const-string/jumbo v5, "XMLHandler::parsePskc: XML is not valid"

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    .line 60
    return-object v6

    .line 69
    .end local v2    # "keyContainer":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;
    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;>;"
    :cond_3
    :try_start_5
    const-string/jumbo v5, "XMLHandler::parsePskc: EXIT [KeyPackage List is null]"

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method
